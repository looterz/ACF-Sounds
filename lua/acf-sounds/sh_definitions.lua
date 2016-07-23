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
