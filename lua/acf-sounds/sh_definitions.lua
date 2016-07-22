-- Config
ACF_SOUND_VERSION = "1.0.0";
ACF_SOUND_DEBUG = false;
ACF_SOUND_EXT = true;

-- Distances to determine which sound variant to play
ACF_FAR_DIST = 13000;
ACF_MED_DIST = 8000;
ACF_NEAR_DIST = 3000;

-- Delay until sound being heard at certain distances to give the effect of a late report
ACF_FAR_DELAY = 0.6;
ACF_MED_DELAY = 0.4;

-- Extension Library
ACF.ExtendedSounds = {};
ACF.SonicCracks = {};
ACF.ImpactSounds = {};

-- Sound Definitions
-- Explosions and Impacts
ACF.Explosions = {
	"acf_new/explosions/generic/tank1.ogg",
	"acf_new/explosions/generic/tank2.ogg",
	"acf_new/explosions/generic/tank3.ogg",
	"acf_new/explosions/generic/tank4.ogg",
	"acf_new/explosions/generic/tank5.ogg",
	"acf_new/explosions/generic/tank6.ogg",
	"acf_new/explosions/generic/tank7.ogg",
	"acf_new/explosions/generic/tank8.ogg"
};

ACF.ImpactSounds["Penetration"] = {
	"acf_new/impacts/penetration/pen1.ogg",
	"acf_new/impacts/penetration/pen2.ogg",
	"acf_new/impacts/penetration/pen3.ogg",
	"acf_new/impacts/penetration/pen4.ogg",
	"acf_new/impacts/penetration/pen5.ogg",
	"acf_new/impacts/penetration/pen6.ogg"
};

ACF.ImpactSounds["Ricochet"] = {
	"acf_new/impacts/ricochet/ric1.ogg",
	"acf_new/impacts/ricochet/ric2.ogg",
	"acf_new/impacts/ricochet/ric3.ogg",
	"acf_new/impacts/ricochet/ric4.ogg",
	"acf_new/impacts/ricochet/ric5.ogg",
	"acf_new/impacts/ricochet/ric6.ogg"
};

-- Sonic Cracks
-- Machine Guns
ACF.SonicCracks["7.62mm Machinegun Ammo"] = {
	"acf_new/sonic-cracks/7_62/crack1.ogg",
	"acf_new/sonic-cracks/7_62/crack2.ogg",
	"acf_new/sonic-cracks/7_62/crack3.ogg",
	"acf_new/sonic-cracks/7_62/crack4.ogg",
	"acf_new/sonic-cracks/7_62/crack5.ogg",
	"acf_new/sonic-cracks/7_62/crack6.ogg"
};

ACF.SonicCracks["12.7mm Machinegun Ammo"] = {
	"acf_new/sonic-cracks/12_7/crack1.ogg",
	"acf_new/sonic-cracks/12_7/crack2.ogg",
	"acf_new/sonic-cracks/12_7/crack3.ogg",
	"acf_new/sonic-cracks/12_7/crack4.ogg",
	"acf_new/sonic-cracks/12_7/crack5.ogg",
	"acf_new/sonic-cracks/12_7/crack6.ogg"
};

-- Autocannons
ACF.SonicCracks["20mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.ogg",
	"acf_new/sonic-cracks/autocannon/crack2.ogg",
	"acf_new/sonic-cracks/autocannon/crack3.ogg",
	"acf_new/sonic-cracks/autocannon/crack4.ogg",
	"acf_new/sonic-cracks/autocannon/crack5.ogg",
	"acf_new/sonic-cracks/autocannon/crack6.ogg"
};

ACF.SonicCracks["30mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.ogg",
	"acf_new/sonic-cracks/autocannon/crack2.ogg",
	"acf_new/sonic-cracks/autocannon/crack3.ogg",
	"acf_new/sonic-cracks/autocannon/crack4.ogg",
	"acf_new/sonic-cracks/autocannon/crack5.ogg",
	"acf_new/sonic-cracks/autocannon/crack6.ogg"
};

ACF.SonicCracks["40mm Autocannon Ammo"] = {
	"acf_new/sonic-cracks/autocannon/crack1.ogg",
	"acf_new/sonic-cracks/autocannon/crack2.ogg",
	"acf_new/sonic-cracks/autocannon/crack3.ogg",
	"acf_new/sonic-cracks/autocannon/crack4.ogg",
	"acf_new/sonic-cracks/autocannon/crack5.ogg",
	"acf_new/sonic-cracks/autocannon/crack6.ogg"
};

-- Cannons
ACF.SonicCracks["100mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.ogg",
	"acf_new/sonic-cracks/cannon/shellfly2.ogg",
	"acf_new/sonic-cracks/cannon/shellfly3.ogg",
	"acf_new/sonic-cracks/cannon/shellfly4.ogg",
	"acf_new/sonic-cracks/cannon/shellfly5.ogg",
	"acf_new/sonic-cracks/cannon/shellfly6.ogg"
};

ACF.SonicCracks["120mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.ogg",
	"acf_new/sonic-cracks/cannon/shellfly2.ogg",
	"acf_new/sonic-cracks/cannon/shellfly3.ogg",
	"acf_new/sonic-cracks/cannon/shellfly4.ogg",
	"acf_new/sonic-cracks/cannon/shellfly5.ogg",
	"acf_new/sonic-cracks/cannon/shellfly6.ogg"
};

ACF.SonicCracks["140mm Cannon Ammo"] = {
	"acf_new/sonic-cracks/cannon/shellfly1.ogg",
	"acf_new/sonic-cracks/cannon/shellfly2.ogg",
	"acf_new/sonic-cracks/cannon/shellfly3.ogg",
	"acf_new/sonic-cracks/cannon/shellfly4.ogg",
	"acf_new/sonic-cracks/cannon/shellfly5.ogg",
	"acf_new/sonic-cracks/cannon/shellfly6.ogg"
};

-- Howitzers
ACF.SonicCracks["105mm Howitzer Ammo"] = {
	"acf_new/sonic-cracks/howitzer/artyfly1.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly2.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly3.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly4.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly5.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly6.ogg"
};

ACF.SonicCracks["155mm Howitzer Ammo"] = {
	"acf_new/sonic-cracks/howitzer/artyfly1.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly2.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly3.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly4.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly5.ogg",
	"acf_new/sonic-cracks/howitzer/artyfly6.ogg"
};

-- Missiles
ACF.SonicCracks["40mm Grenade Machine Gun Ammo"] = {
	"acf_new/sonic-cracks/missile/fly1.ogg",
	"acf_new/sonic-cracks/missile/fly2.ogg",
	"acf_new/sonic-cracks/missile/fly3.ogg",
	"acf_new/sonic-cracks/missile/fly4.ogg",
	"acf_new/sonic-cracks/missile/fly5.ogg",
	"acf_new/sonic-cracks/missile/fly6.ogg"
};
