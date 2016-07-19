
include( "shared.lua" );

function ACF_PROCESS_SOUND( Name, Pos )

	local pl = LocalPlayer();

	if( !IsValid( pl ) ) then return end

	local snd = ACF_GET_SOUND( Name );

	if( snd == nil ) then return end

	local dist = math.Round( pl:GetPos():Distance( Pos ) );
	local dir = ( pl:GetPos() - Pos ):Normalize();
	local ClosePos = pl:GetPos();

	if( dir != nil ) then
		
		ClosePos = pl:GetPos() + dir * 50; -- A good position to play the distance sound, that is towards the target within 50 source units, to give the distant sounds a sense of direction

	end

	-- Do distance checks, play sound
	if( dist < ACF_NEAR_DIST ) then

		-- Play indoors sound, if it exists and we arent outside
		if( !ACF_OUTSIDE( Pos ) and #snd.Indoor > 0 ) then

			--local name = Sound( table.Random( snd.Indoor ) );
			local name = Sound( snd.Indoor[1] );

			sound.Play( name, Pos, 90 );

		else

			-- Play close sound
			--local name = Sound( table.Random( snd.Close ) );
			local name = Sound( snd.Close[1] );

			sound.Play( name, Pos, 90 );

		end

	elseif( dist > ACF_NEAR_DIST and dist < ACF_MED_DIST ) then

		-- Play near sound
		--local name = Sound( table.Random( snd.Near ) );
		local name = Sound( snd.Near[1] );
		
		sound.Play( name, ClosePos, 100 );

	elseif( dist > ACF_MED_DIST and dist < ACF_FAR_DIST ) then

		-- Play medium sound
		--local name = Sound( table.Random( snd.Medium ) );
		local name = Sound( snd.Medium[1] );
		
		timer.Simple( ACF_MED_DELAY, function()

			if( name != nil and ClosePos != nil ) then

				sound.Play( name, ClosePos, 100 );

			end

		end );

	elseif( dist > ACF_MED_DIST ) then

		-- Play far sound
		--local name = Sound( table.Random( snd.Far ) );
		local name = Sound( snd.Far[1] );
		
		timer.Simple( ACF_FAR_DELAY, function()

			if( name != nil and ClosePos != nil ) then

				sound.Play( name, ClosePos, 100 );

			end

		end );

	else

		-- Play far sound anyway
		--local name = Sound( table.Random( snd.Far ) );
		local name = Sound( snd.Far[1] );
		
		timer.Simple( ACF_FAR_DELAY, function()

			if( name != nil and ClosePos != nil ) then

				sound.Play( name, ClosePos, 100 );

			end

		end );

	end

end

function ACF_SonicCrack( Category, Pos )

	if( ACF.SonicCracks[ tostring( Category ) ] != nil ) then

		local rnd = Sound( table.Random( ACF.SonicCracks[ Category ] ) );

		sound.Play( rnd, Pos );

	end

end
