
AddCSLuaFile( "sh_definitions.lua" );
AddCSLuaFile( "shared.lua" );
AddCSLuaFile( "cl_init.lua" );

include( "sh_definitions.lua" );
include( "shared.lua" );

-- Add workshop version for clients
resource.AddWorkshop( "235370240" );

-- ACF Missiles compatibility hook
util.AddNetworkString( "acf_sound_missile" );

hook.Add( "ACF_SOUND_MISSILE", "ACF_SOUND_MISSILE_COMPATIBILITY", function( missile, sound )

  if( ACF_SOUND_DEBUG ) then

    print("[ACF_SOUND_EXT] ACF_SOUND_MISSILE hook called\n");

  end

  net.Start( "acf_sound_missile" );
    net.WriteEntity( missile );
    net.WriteString( sound );
  net.Broadcast();

end );
