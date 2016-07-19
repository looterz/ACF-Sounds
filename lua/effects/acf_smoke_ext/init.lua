--
--
-- /*---------------------------------------------------------
--    Initializes the effect. The data is a table of data
--    which was passed from the server.
-- ---------------------------------------------------------*/
--function EFFECT:Init( data )
--
--        self.Origin = data:GetOrigin()
--        self.DirVec = data:GetNormal()
--        self.Colour = data:GetStart()
--        self.Radius = math.max(data:GetRadius())
--        --print(self.Radius)
--        self.Emitter = ParticleEmitter( self.Origin )
--
--        local ImpactTr = { }
--                ImpactTr.start = self.Origin - self.DirVec*20
--                ImpactTr.endpos = self.Origin + self.DirVec*20
--        local Impact = util.TraceLine(ImpactTr)                                        --Trace to see if it will hit anything
--        self.Normal = Impact.HitNormal
--
--        local GroundTr = { }
--                GroundTr.start = self.Origin + Vector(0,0,1)
--                GroundTr.endpos = self.Origin - Vector(0,0,1)*self.Radius
--                GroundTr.mask = 131083
--        local Ground = util.TraceLine(GroundTr)
--
--        local SmokeColor = self.Colour or Vector(255,255,255)
--        --local SmokeColor = Vector(255,255,255)
--        if not Ground.HitWorld then
--                Ground.HitNormal = Vector(0, 0, 1)
--        end
--
--        self:Shockwave( Ground, SmokeColor )
--
--        self.Colour = nil
--
-- end
--
--function EFFECT:Core()
--
--
--
--        for i=0, 2*self.Radius do
--                local Whisp = self.Emitter:Add( "particle/smokesprites_000"..math.random(1,9), self.Origin )
--                        if (Whisp) then
--                                Whisp:SetVelocity(VectorRand() * math.random( 150,250*self.Radius) )
--                                Whisp:SetLifeTime( 0 )
--                                Whisp:SetDieTime( math.Rand( 3 , 5 )*self.Radius/3  )
--                                Whisp:SetStartAlpha( math.Rand( 0, 0 ) )
--                                Whisp:SetEndAlpha( 0 )
--                                Whisp:SetStartSize( 10*self.Radius )
--                                Whisp:SetEndSize( 80*self.Radius )
--                                Whisp:SetRoll( math.Rand(150, 360) )
--                                Whisp:SetRollDelta( math.Rand(-0.2, 0.2) )
--                                Whisp:SetAirResistance( 100 )
--                                Whisp:SetGravity( Vector( math.random(-5,5)*self.Radius, math.random(-5,5)*self.Radius, 0 ) )
--                                Whisp:SetColor( 150,150,150 )
--                        end
--        end
--
--
--        sound.Play( "ambient/explosions/explode_5.wav", self.Origin , math.Clamp(self.Radius*10,75,165), math.Clamp(300 - self.Radius*12,15,255))
--        sound.Play( "ambient/explosions/explode_4.wav", self.Origin , math.Clamp(self.Radius*10,75,165), math.Clamp(300 - self.Radius*25,15,255))
--
--end
--
--
--local smokes =
--{
--	"particle/smokesprites_0001",
--	"particle/smokesprites_0002",
--	"particle/smokesprites_0003",
--	"particle/smokesprites_0004",
--	"particle/smokesprites_0005",
--	"particle/smokesprites_0006",
--	"particle/smokesprites_0008"
--}
--
--local function smokePuff(self, Ground, ShootVector, Radius, RadiusMod, Density, i, wind, SmokeColor, Angle)
--	--local Smoke = self.Emitter:Add( "particle/smokesprites_000"..math.random(1,9), Ground.HitPos )
--	local Smoke = self.Emitter:Add( smokes[math.random(1, #smokes)], Ground.HitPos )
--	if (Smoke) then
--			--Smoke:SetPos(Ground.HitPos + Vector(math.random(), math.random(), math.random()) * Radius / 3)
--			Smoke:SetVelocity( (ShootVector + Vector(0, 0, 0.2)) * (Radius * RadiusMod) * 1.8 ) --+ Vector(math.random(), math.random(), math.abs(math.random()))
--			Smoke:SetLifeTime( 0 )
--			Smoke:SetDieTime( math.Clamp(Radius/5, 30, 60) )
--			Smoke:SetStartAlpha( math.Rand( 200, 255 ) )
--			Smoke:SetEndAlpha( 0 )
--			Smoke:SetStartSize( Angle and (Radius * RadiusMod)/1.5 or math.Clamp((Radius * RadiusMod)/4, 50, 1000) )
--			Smoke:SetEndSize( math.Clamp((Radius * RadiusMod), 1000, 4000) )
--			Smoke:SetRoll( math.Rand(0, 360) )
--			Smoke:SetRollDelta( math.Rand(-0.2, 0.2) )
--			Smoke:SetAirResistance( 130 )
--			Smoke:SetGravity( Vector( math.Rand( -10 , 10 ) + wind * 0.5 + (wind * i/Density), math.Rand( -10 , 10 ), math.Rand( 7 , 20 ) ) )
--			Smoke:SetColor( SmokeColor.x,SmokeColor.y,SmokeColor.z )
--			--Smoke:SetColor( 255, 255, 255 )
--	end
--end
--
--
--function EFFECT:Shockwave( Ground, SmokeColor )
--
--        local Radius = self.Radius
--        local Density = Radius/25
--        local Angle
--        local wind = ACF.SmokeWind or 0
--        --print(Density, SmokeColor, wind)
--
--		smokePuff(self, Ground, Vector(0, 0, 0.3), Radius, 2, Density, 0, wind, SmokeColor, Angle)
--
--        for i=0, Density do
--			local ShootVector = Angle and Angle:Up() or Ground.HitNormal * 0.5
--            smokePuff(self, Ground, ShootVector, Radius, 1, Density, i, wind, SmokeColor, Angle)
--
--			if Angle then
--				Angle:RotateAroundAxis(Angle:Forward(), (360/Density))
--			else
--				Angle = Ground.HitNormal:Angle()
--			end
--        end
--
--end
--
--
--/*---------------------------------------------------------
--   THINK
-----------------------------------------------------------*/
--function EFFECT:Think( )
--
--end
--
--/*---------------------------------------------------------
--   Draw the effect
-----------------------------------------------------------*/
--function EFFECT:Render()
--end


 /*---------------------------------------------------------
    Initializes the effect. The data is a table of data
    which was passed from the server.
 ---------------------------------------------------------*/

function EFFECT:Init( data )
	self.Origin = data:GetOrigin()
	self.DirVec = data:GetNormal()
	self.Colour = data:GetStart()
	self.Radius = math.min(data:GetRadius()*4,250) --long term smoke hanging around
	self.Magnitude = math.min(data:GetMagnitude()*4,250) --initial puff density
	self.Emitter = ParticleEmitter( self.Origin )

	local ImpactTr = { }
		ImpactTr.start = self.Origin - self.DirVec*20
		ImpactTr.endpos = self.Origin + self.DirVec*20
	local Impact = util.TraceLine(ImpactTr)                                        --Trace to see if it will hit anything
	self.Normal = Impact.HitNormal

	local GroundTr = { }
		GroundTr.start = self.Origin + Vector(0,0,1)
		GroundTr.endpos = self.Origin - Vector(0,0,1)*self.Radius
		GroundTr.mask = 131083
	local Ground = util.TraceLine(GroundTr)

	local SmokeColor = self.Colour or Vector(255,255,255)
	if not Ground.HitWorld then Ground.HitNormal = Vector(0,0,1) end


	if self.Magnitude > 0 then
		self:SmokeFiller( Ground, SmokeColor, self.Magnitude*1.25, 1.0, 10+self.Magnitude/8 ) --quick build and dissipate
	end

	if self.Radius > 0 then
		self:SmokeFiller( Ground, SmokeColor, self.Radius*1.25, 0.15, 20+self.Radius/4 ) --slow build but long lasting
	end

	self.Emitter:Finish()
end

local smokes = {
	"particle/smokesprites_0001",
	"particle/smokesprites_0002",
	"particle/smokesprites_0003",
	"particle/smokesprites_0004",
	"particle/smokesprites_0005",
	"particle/smokesprites_0006",
	"particle/smokesprites_0008"
}

local function smokePuff(self, Ground, ShootVector, Radius, RadiusMod, Density, i, wind, SmokeColor, DeploySpeed, Lifetime)
	local Smoke = self.Emitter:Add( smokes[math.random(1, #smokes)], Ground.HitPos )
	if (Smoke) then
		Smoke:SetVelocity( (ShootVector + Vector(0, 0, 0.2)) * (Radius * RadiusMod) * DeploySpeed )
		Smoke:SetLifeTime( 0 )
		Smoke:SetDieTime( math.Clamp(Lifetime, 1, 60) )
		Smoke:SetStartAlpha( math.Rand( 200, 255 ) )
		Smoke:SetEndAlpha( 0 )
		Smoke:SetStartSize( math.Clamp((Radius * RadiusMod) * DeploySpeed, 5, 1000) )
		Smoke:SetEndSize( math.Clamp(Radius * RadiusMod * 4, 150, 4000) )
		Smoke:SetRoll( math.Rand(0, 360) )
		Smoke:SetRollDelta( math.Rand(-0.2, 0.2) )
		Smoke:SetAirResistance( 100 * DeploySpeed )
		Smoke:SetGravity( Vector( math.Rand( -10 , 10 ) + wind * 0.5 + (wind * i/Density), math.Rand( -10 , 10 ), math.Rand( 5 , 15 ) ) * DeploySpeed )
		Smoke:SetColor( SmokeColor.x,SmokeColor.y,SmokeColor.z )
	end
end


function EFFECT:SmokeFiller( Ground, SmokeColor, Radius, DeploySpeed, Lifetime )

	local Density = Radius/18
	local Angle = Ground.HitNormal:Angle()
	local wind = ACF.SmokeWind or 0
	local ShootVector = Ground.HitNormal * 0.5
	--print(Radius..", "..Density)

	smokePuff(self, Ground, Vector(0, 0, 0.3), Radius, 1.5, Density, 0, wind, SmokeColor, DeploySpeed, Lifetime) --smoke filler initial upward puff
	for i=0, math.floor(Density) do
		smokePuff(self, Ground, ShootVector, Radius, 1, Density, i, wind, SmokeColor, DeploySpeed, Lifetime)

		ShootVector = Angle and Angle:Up()
		Angle:RotateAroundAxis(Angle:Forward(), (360/Density))
	end
end

--keep this here, error pops up if it's removed
function EFFECT:Render()
end
