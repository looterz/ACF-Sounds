
AddCSLuaFile( "shared.lua" );
AddCSLuaFile( "cl_init.lua" );

include( "shared.lua" );

-- Add workshop version for clients
resource.AddWorkshop( "235370240" );

--hook.Add( "Think", "Splode", function()
--
--	local explode = ents.FindByClass("env_explosion")
--
--	for k,v in pairs( explode ) do
--
--		if( v:IsValid() ) then
--
--			local Pos = v:LocalToWorld( v:OBBCenter() );
--			ParticleEffect("dusty_explosion_rockets", Pos, Angle(0,0,0), nil);
--
--			v:Remove();
--
--		end
--
--	end
--
--end );
