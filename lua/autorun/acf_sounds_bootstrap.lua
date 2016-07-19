
-- ACF Sound Extension project by looter

if SERVER then

	AddCSLuaFile();

	include( "acf-sounds/init.lua" );

else

	include( "acf-sounds/cl_init.lua" );

end
