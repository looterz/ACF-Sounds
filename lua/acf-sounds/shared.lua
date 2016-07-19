
-- Config
ACF_SOUND_VERSION = "0.0.3";

-- Distances to determine which sound variant to play
ACF_FAR_DIST = 13000;
ACF_MED_DIST = 8000;
ACF_NEAR_DIST = 3000;

-- Delay until sound being heard at certain distances to give the effect of a late report
ACF_FAR_DELAY = 0.6;
ACF_MED_DELAY = 0.4;

-- Detours
local EffectEngine = util.Effect;

function util.Effect( effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter )

	if( tostring( effectName ) == "ACF_MuzzleFlash" ) then

		effectName = "acf_muzzleflash_ext";

	elseif( tostring( effectName ) == "ACF_BulletEffect" ) then

		effectName = "acf_bulleteffect_ext";

	elseif( tostring( effectName ) == "ACF_Smoke" ) then

		effectName = "acf_smoke_ext";

	elseif( tostring( effectName ) == "ACF_Scaled_Explosion" ) then

		effectName = "acf_scaled_explosion_ext";

	elseif( tostring( effectName ) == "ACF_Tracer" ) then

		effectName = "acf_tracer_ext";

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

-- Extension Library
ACF.ExtendedSounds = {};
ACF.SonicCracks = {};
ACF.ImpactSounds = {};

ACF.Explosions = {
	"acf_new/explosions/generic/tank1.wav",
	"acf_new/explosions/generic/tank2.wav",
	"acf_new/explosions/generic/tank3.wav",
	"acf_new/explosions/generic/tank4.wav",
	"acf_new/explosions/generic/tank5.wav",
	"acf_new/explosions/generic/tank6.wav",
	"acf_new/explosions/generic/tank7.wav",
	"acf_new/explosions/generic/tank8.wav"
};

ACF.ImpactSounds["Penetration"] = {
	"acf_new/impacts/penetration/pen1.wav",
	"acf_new/impacts/penetration/pen2.wav",
	"acf_new/impacts/penetration/pen3.wav",
	"acf_new/impacts/penetration/pen4.wav",
	"acf_new/impacts/penetration/pen5.wav",
	"acf_new/impacts/penetration/pen6.wav"
};

ACF.ImpactSounds["Ricochet"] = {
	"acf_new/impacts/ricochet/ric1.wav",
	"acf_new/impacts/ricochet/ric2.wav",
	"acf_new/impacts/ricochet/ric3.wav",
	"acf_new/impacts/ricochet/ric4.wav",
	"acf_new/impacts/ricochet/ric5.wav",
	"acf_new/impacts/ricochet/ric6.wav"
};

-- Sound Definitions

-- fuck my life
function ACF_SOUND_BUILD()

	local weaponFiles, weaponDirs = file.Find( "sound/acf_new/weapons/*", "GAME" );

	--print("[ACF_SOUND_EXT] Building weapon sound tables...\n");

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

				--print( string.format( "[ACF_SOUND_EXT] Found sound/acf_new/weapons/%s/%s/%s\n", v, b, e ) );

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

	--print("[ACF_SOUND_EXT] Weapon sound tables built.\n");

end

hook.Add( "InitPostEntity", "ACF_SOUNDS_INIT", function()

	-- Banner
	print("[ACF] ACF Sound Extension Library version ".. tostring( ACF_SOUND_VERSION ) .." loaded.\n");

	-- rip cpu
	ACF_SOUND_BUILD();

end );

-- Sonic Cracks
-- Machine Guns
ACF.SonicCracks["7.62mm Machinegun Ammo"] = {
	"acf_new/sonic-cracks/7_62/crack1.wav",
	"acf_new/sonic-cracks/7_62/crack2.wav",
	"acf_new/sonic-cracks/7_62/crack3.wav",
	"acf_new/sonic-cracks/7_62/crack4.wav",
	"acf_new/sonic-cracks/7_62/crack5.wav",
	"acf_new/sonic-cracks/7_62/crack6.wav"
};

ACF.SonicCracks["12.7mm Machinegun Ammo"] = {
	"acf_new/sonic-cracks/12_7/crack1.wav",
	"acf_new/sonic-cracks/12_7/crack2.wav",
	"acf_new/sonic-cracks/12_7/crack3.wav",
	"acf_new/sonic-cracks/12_7/crack4.wav",
	"acf_new/sonic-cracks/12_7/crack5.wav",
	"acf_new/sonic-cracks/12_7/crack6.wav"
};

-- Autocannons
ACF.SonicCracks["20mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.wav",
	"acf_new/sonic-cracks/autocannon/crack2.wav",
	"acf_new/sonic-cracks/autocannon/crack3.wav",
	"acf_new/sonic-cracks/autocannon/crack4.wav",
	"acf_new/sonic-cracks/autocannon/crack5.wav",
	"acf_new/sonic-cracks/autocannon/crack6.wav"
};

ACF.SonicCracks["30mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.wav",
	"acf_new/sonic-cracks/autocannon/crack2.wav",
	"acf_new/sonic-cracks/autocannon/crack3.wav",
	"acf_new/sonic-cracks/autocannon/crack4.wav",
	"acf_new/sonic-cracks/autocannon/crack5.wav",
	"acf_new/sonic-cracks/autocannon/crack6.wav"
};

ACF.SonicCracks["40mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.wav",
	"acf_new/sonic-cracks/autocannon/crack2.wav",
	"acf_new/sonic-cracks/autocannon/crack3.wav",
	"acf_new/sonic-cracks/autocannon/crack4.wav",
	"acf_new/sonic-cracks/autocannon/crack5.wav",
	"acf_new/sonic-cracks/autocannon/crack6.wav"
};

-- Cannons
ACF.SonicCracks["100mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.wav",
	"acf_new/sonic-cracks/cannon/shellfly2.wav",
	"acf_new/sonic-cracks/cannon/shellfly3.wav",
	"acf_new/sonic-cracks/cannon/shellfly4.wav",
	"acf_new/sonic-cracks/cannon/shellfly5.wav",
	"acf_new/sonic-cracks/cannon/shellfly6.wav"
};

ACF.SonicCracks["120mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.wav",
	"acf_new/sonic-cracks/cannon/shellfly2.wav",
	"acf_new/sonic-cracks/cannon/shellfly3.wav",
	"acf_new/sonic-cracks/cannon/shellfly4.wav",
	"acf_new/sonic-cracks/cannon/shellfly5.wav",
	"acf_new/sonic-cracks/cannon/shellfly6.wav"
};

ACF.SonicCracks["140mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.wav",
	"acf_new/sonic-cracks/cannon/shellfly2.wav",
	"acf_new/sonic-cracks/cannon/shellfly3.wav",
	"acf_new/sonic-cracks/cannon/shellfly4.wav",
	"acf_new/sonic-cracks/cannon/shellfly5.wav",
	"acf_new/sonic-cracks/cannon/shellfly6.wav"
};

-- Howitzers
ACF.SonicCracks["105mm Howitzer Ammo"] = {
	"acf_new/sonic-cracks/howitzer/artyfly1.wav",
	"acf_new/sonic-cracks/howitzer/artyfly2.wav",
	"acf_new/sonic-cracks/howitzer/artyfly3.wav",
	"acf_new/sonic-cracks/howitzer/artyfly4.wav",
	"acf_new/sonic-cracks/howitzer/artyfly5.wav",
	"acf_new/sonic-cracks/howitzer/artyfly6.wav"
};

ACF.SonicCracks["155mm Howitzer Ammo"] = {
	"acf_new/sonic-cracks/howitzer/artyfly1.wav",
	"acf_new/sonic-cracks/howitzer/artyfly2.wav",
	"acf_new/sonic-cracks/howitzer/artyfly3.wav",
	"acf_new/sonic-cracks/howitzer/artyfly4.wav",
	"acf_new/sonic-cracks/howitzer/artyfly5.wav",
	"acf_new/sonic-cracks/howitzer/artyfly6.wav"
};

-- Missiles
ACF.SonicCracks["40mm Grenade Machine Gun Ammo"] = {
	"acf_new/sonic-cracks/missile/fly1.wav",
	"acf_new/sonic-cracks/missile/fly2.wav",
	"acf_new/sonic-cracks/missile/fly3.wav",
	"acf_new/sonic-cracks/missile/fly4.wav",
	"acf_new/sonic-cracks/missile/fly5.wav",
	"acf_new/sonic-cracks/missile/fly6.wav"
};
