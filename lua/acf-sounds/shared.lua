
-- Detours
local EffectEngine = util.Effect;

function util.Effect( effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter )

	-- ACF Sound Extension Project must override effects to implement new features
	if( tostring( effectName ) == "ACF_MuzzleFlash" ) then

		effectName = "acf_muzzleflash_ext";

	elseif( tostring( effectName ) == "ACF_BulletEffect" ) then

		effectName = "acf_bulleteffect_ext";

	elseif( tostring( effectName ) == "ACF_Smoke" ) then

		effectName = "acf_smoke_ext";

	elseif( tostring( effectName ) == "ACF_Scaled_Explosion" ) then

		effectName = "acf_scaled_explosion_ext";

	end

	EffectEngine( effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter );

end

-- Extension Library Methods
function ACF_ADD_SOUND( Name, SoundTable )

	ACF.ExtendedSounds[ tostring( Name ) ] = SoundTable;

end

function ACF_GET_SOUND( Name )

	if( ACF.ExtendedSounds[ tostring( Name ) ] != nil ) then

		return ACF.ExtendedSounds[ tostring( Name ) ];

	end

	return nil;

end

function ACF_OUTSIDE( pos )

	local trace = { };
	trace.start = pos;
	trace.endpos = trace.start + Vector( 0, 0, 32768 );
	trace.mask = MASK_BLOCKLOS;
	local tr = util.TraceLine( trace );

	if( tr.HitSky ) then return true end

	return false;

end

-- fuck my life
function ACF_SOUND_BUILD()

	local weaponFiles, weaponDirs = file.Find( "sound/acf_new/weapons/*", "GAME" );

	if( ACF_SOUND_DEBUG ) then

		print("[ACF_SOUND_EXT] Building weapon sound tables...\n");

	end

	local SoundTable = {};

	-- begin searching every directory of acf_new/weapons/<weapon>/
	for k, v in pairs( weaponDirs ) do

		local files, dirs = file.Find( "sound/acf_new/weapons/".. tostring( v ) .."/*", "GAME" );

		local SoundGroup = {
			Close = {},
			Near = {},
			Medium = {},
			Far = {},
			Indoor = {}
		};

		-- process every soundgroup folder within a weapons subdirectory
		for a, b in pairs( dirs ) do

			local bfiles, bdirs = file.Find( "sound/acf_new/weapons/".. tostring( v ) .."/"..tostring( b ) .."/*", "GAME" );

			-- process every soundgroup file within a weapons soundgroup subdirectory
			for d, e in pairs( bfiles ) do

				if( ACF_SOUND_DEBUG ) then

					print( string.format( "[ACF_SOUND_EXT] Found sound/acf_new/weapons/%s/%s/%s\n", v, b, e ) );

				end

				local sndstr = string.format( "acf_new/weapons/%s/%s/%s", v, b, e );

				if( string.find( sndstr, "close" ) ) then

					table.insert( SoundGroup.Close, sndstr );

				elseif( string.find( sndstr, "near" ) ) then

					table.insert( SoundGroup.Near, sndstr );

				elseif( string.find( sndstr, "medium" ) ) then

					table.insert( SoundGroup.Medium, sndstr );

				elseif( string.find( sndstr, "indoor" ) ) then

					table.insert( SoundGroup.Indoor, sndstr );

				elseif( string.find( sndstr, "far" ) ) then

					table.insert( SoundGroup.Far, sndstr );

				end

			end

		end

		table.insert( SoundTable, SoundGroup );

	end

	-- close is an identifier, and a set of sounds, hash lookup is faster than a loop lookup soo....fml
	for h, i in pairs( SoundTable ) do

		local group = i;

		for j, k in pairs( i.Close ) do

			ACF_ADD_SOUND( k, {
				Close = i.Close,
				Near = i.Near,
				Medium = i.Medium,
				Far = i.Far,
				Indoor = i.Indoor
			});

		end

	end

	if( ACF_SOUND_DEBUG ) then

		print("[ACF_SOUND_EXT] Weapon sound tables built.\n");

	end

end

hook.Add( "InitPostEntity", "ACF_SOUNDS_INIT", function()

	-- Banner
	print("[ACF] ACF Sound Extension Project version ".. tostring( ACF_SOUND_VERSION ) .." loaded.\n");

	-- rip cpu
	ACF_SOUND_BUILD();

end );
