repeat tw() until game:IsLoaded()
local PL=game:GetService("PL")
local RS2=game:GetService("RS2")
local UIS2=game:GetService("UIS2")
local TS3=game:GetService("TS3")
local HS2=game:GetService("HS2")
local CoreGui=game:GetService("CoreGui")
local Stats=game:GetService("Stats")
local Lighting=game:GetService("Lighting")
local LP=PL.LP
local C3P=Color3.fromRGB(255, 20, 147)
local C3G=Color3.fromRGB(60, 60, 60)
local C3W=Color3.fromRGB(255, 255, 255)
local C3B=Color3.fromRGB(0, 0, 0)
local C3D=Color3.fromRGB(30, 30, 30)
local C3E=Color3.fromRGB(10, 10, 10)
local FA=Enum.Font.Arcade
local UDN=UDim2.new
local IN=Instance.new
local V3=Vector3.new
local U2=UDim.new
local mc=math.clamp
local mf=math.floor
local tw=task.wait
local ts=task.spawn
local td=task.delay
local RSH=RS2.Heartbeat
local RSRS=RS2.RenderStepped
local UISIB=UIS2.InputBegan
local UISIC=UIS2.InputChanged
local UISIE=UIS2.InputEnded
local EAS=Enum.AutomaticSize.Y
local mh=math.huge
local ma=math.abs
local ms=math.sqrt
local mr=math.rad
local sf=string.format
local ts2=tostring
local tn=tonumber
local ti=table.insert
local ip=ipairs
local pa=pairs
local ESLO=Enum.SortOrder.LayoutOrder
local EMA=Enum.Material.Air
local EMP=Enum.Material.Plastic
local httpRequest=(syn and syn.request) or (http and http.request) or http_request or request or (fluxus and fluxus.request) or (getgenv and getgenv().request)
local isfile=isfile or (syn and syn.isfile) or (getgenv and getgenv().isfile)
local readfile=readfile or (syn and syn.readfile) or (getgenv and getgenv().readfile)
local writefile=writefile or (syn and syn.writefile) or (getgenv and getgenv().writefile)
local getconnections=getconnections or get_signal_cons or getconnects or (syn and syn.get_signal_cons)
local isMobile=UIS2.TouchEnabled and not UIS2.KeyboardEnabled
local isPC=UIS2.KeyboardEnabled and UIS2.MouseEnabled
local camera=workspace.CurrentCamera
local vp=workspace.CurrentCamera.ViewportSize
local uiScaleValue
if isMobile then
	if vp.X>=1024 then
		uiScaleValue=1.5
	else
		uiScaleValue=2.0
	end
else
	uiScaleValue=1.1
end
local fovValue=70
local baseScale=mc((vp.X/1920), 0.5, 1.5)
local function s(n) return mf(n*baseScale*uiScaleValue) end
local THEME={
	Background=Color3.fromRGB(8, 8, 8), 
	Section=Color3.fromRGB(12, 12, 12), 
	Card=Color3.fromRGB(14, 14, 14), 
	Accent=C3P, 
	AccentDark=C3P, 
	Text=C3P, 
	DarkText=C3P, 
	Outline=C3P, 
	SliderTrack=Color3.fromRGB(18, 18, 18), 
	InputBg=Color3.fromRGB(16, 16, 16), 
	ToggleOff=C3D, 
	FloatButton=Color3.fromRGB(5, 5, 5), 
	ProgressBg=Color3.fromRGB(8, 8, 8), 
	ProgressFill=C3P, 
}
local NS2=60
local CS2=30
local ST2=false
local ALE, ARE, ASE=false, false, false
local ARDE, UWE, GE, HPE=false, false, false, false
local galaxyLastHop=0
local SBE, ESPE=false, true
local SR2, SD2=20, 0.2
local GGP, GHP, SPIN_SPEED=42, 35, 19
local INF_JUMP_POWER=35
local OE=false
local xrayEnabled=false
local FE=false
local floatHeight=8
local floatConn=nil
local floatOriginalY=nil
local IS2, SH2, FJ=false, false, false
local SST=nil
local OJP=50
local StealData, ESPC, ESPO={}, {}, {}
local originalTransparency, originalSettings={}, {}
local ALC, ARC, autoStealConn, antiRagdollConn=nil, nil, nil, nil
local PC2=nil
local ALP, ARP=1, 1
local GVF, GAT=nil, nil
local spinBAV=nil
local ProgressBarFill, ProgressBarContainer, ProgressPercentLabel, RadiusInput=nil, nil, nil, nil
local NSE=false
local nightSkyOriginalSky=nil
local nightSkySky=nil
local nightSkyBloom=nil
local nightSkyCC=nil
local nightSkyConn=nil
local CarrySpeedInput=nil
local speedLbl=nil
local char, hum, hrp=nil, nil, nil
local TB2, SV2, KB2={}, {}, {}
local DG=196.2
local GHC=0.08
local POSITION_L1=V3(-476.48, -6.28, 92.73)
local POSITION_L2=V3(-483.12, -4.95, 94.80)
local POSITION_R1=V3(-476.16, -6.52, 25.62)
local POSITION_R2=V3(-483.04, -5.09, 23.14)
local CONFIG_NAME, lastSaveTime, savedAnimate="AuraHubConfig", 0, nil
local FB={}
local FPSLabel, PingLabel=nil, nil
local BAT=false
local BAT_MOVE_SPEED=56.5
local BAT_ENGAGE_RANGE=20
local BAT_LOOP_TIME=0.3
local lastEquipTick_bat=0
local lastUseTick_bat=0
local lookConnection_bat=nil
local attachment_bat=nil
local alignOrientation_bat=nil
local lookActive_bat=false
local BAT_LOOK_DISTANCE=50
local DEFAULT_KEYBINDS={
	ToggleGUI={PC=EKC.U, Controller=EKC.ButtonY}, 
	AutoLeft={PC=EKC.Z, Controller=EKC.DPadLeft}, 
	AutoRight={PC=EKC.C, Controller=EKC.DPadRight}, 
	BatAimbot={PC=EKC.E, Controller=EKC.ButtonB}, 
	SpeedToggle={PC=EKC.Q, Controller=EKC.ButtonX}, 
	Float={PC=EKC.F, Controller=EKC.ButtonA}, 
}
local KEYBINDS={}
for k, v in pa(DEFAULT_KEYBINDS) do
	KEYBINDS[k]={PC=v.PC, Controller=v.Controller}
end
local ScreenGui, Main, FloatingButtons=nil, nil, nil
local KBD={}
local function RKBD(actionName, pcLabel, ctrlLabel)
	if not KBD[actionName] then
		KBD[actionName]={pcLabels={}, ctrlLabels={}}
	end
	if pcLabel then ti(KBD[actionName].pcLabels, pcLabel) end
end
local function SKBD(actionName)
	if not KBD[actionName] then return end
	local kb=KEYBINDS[actionName]
	local pcName=kb and kb.PC and kb.PC.Name or "None"
	for _, lbl in ip(KBD[actionName].pcLabels) do
		pcall(function() lbl.Text=pcName end)
	end
end
local function createESP(plr)
	if plr==LP then return end
	if not plr.Character then return end
	if plr.Character:FindFirstChild("NightESP") then return end
	local c=plr.Character
	local charHrp=c:FindFirstChild("HumanoidRootPart")
	if not charHrp then return end
	local humanoid=c:FindFirstChildOfClass("Humanoid")
	if humanoid then humanoid.DDT=Enum.HumanoidDisplayDistanceType.None end
	local hitbox=IN("BoxHandleAdornment")
	hitbox.Name="NightESP"
	hitbox.Adornee=charHrp
	hitbox.Size=V3(4, 6, 2)
	hitbox.Color3=C3P
	hitbox.Transparency=0.5
	hitbox.ZIndex=10
	hitbox.AOT=true
	hitbox.Parent=c
	ESPO[plr]={box=hitbox, character=c}
end
local function removeESP(plr)
	pcall(function()
		if plr.Character then
			local hitbox=plr.Character:FindFirstChild("NightESP")
			if hitbox then hitbox:Des() end
			local humanoid=plr.Character:FindFirstChildOfClass("Humanoid")
			if humanoid then humanoid.DDT=Enum.HumanoidDisplayDistanceType.Automatic end
		end
		if ESPO[plr] then ESPO[plr]=nil end
	end)
end
local function enableESP()
	for _, plr in ip(PL:GetPL()) do
		if plr~=LP then
			if plr.Character then pcall(function() createESP(plr) end) end
			local conn=plr.CharacterAdded:Connect(function()
				tw(0.1)
				if ESPE then pcall(function() createESP(plr) end) end
			end)
			ti(ESPC, conn)
		end
	end
	local playerAddedConn=PL.PlayerAdded:Connect(function(plr)
		if plr==LP then return end
		local charAddedConn=plr.CharacterAdded:Connect(function()
			tw(0.1)
			if ESPE then pcall(function() createESP(plr) end) end
		end)
		ti(ESPC, charAddedConn)
	end)
	ti(ESPC, playerAddedConn)
end
local function disableESP()
	for _, plr in ip(PL:GetPL()) do pcall(function() removeESP(plr) end) end
	for _, conn in ip(ESPC) do
		if conn and conn.Con then conn:DC() end
	end
	ESPC={}
	ESPO={}
end
RS2.Stepped:Connect(function()
	for _, plr in ip(PL:GetPL()) do
		if plr~=LP and plr.Character then
			for _, part in ip(plr.Character:GetDescendants()) do
				if part:IsA("BasePart") then
					part.CanCollide=false
				end
			end
		end
	end
end)
local function enableOptimizer()
	if getgenv and getgenv().OPTIMIZER_ACTIVE then return end
	if getgenv then getgenv().OPTIMIZER_ACTIVE=true end
	pcall(function()
		settings().Rendering.QualityLevel=Enum.QualityLevel.Level01
		Lighting.GlobalShadows=false
		Lighting.Brightness=2
		Lighting.FogEnd=9e9
		Lighting.FogStart=9e9
		for _, fx in ip(Lighting:GetChildren()) do
			if fx:IsA("PostEffect") then fx.Enabled=false end
		end
	end)
	pcall(function()
		for _, obj in ip(workspace:GetDescendants()) do
			pcall(function()
				if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Beam")
					or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") then
					obj.Enabled=false
					obj:Des()
				elseif obj:IsA("SpecialMesh") or obj:IsA("SelectionBox") then
					if obj:IsA("SelectionBox") then obj:Des() end
				elseif obj:IsA("BasePart") then
					obj.CastShadow=false
					obj.Material=EMP
					for _, child in ip(obj:GetChildren()) do
						if child:IsA("Decal") or child:IsA("Texture") or child:IsA("SurfaceAppearance") then
							child:Des()
						end
					end
				elseif obj:IsA("Sky") then
					obj:Des()
				end
			end)
		end
	end)
	xrayEnabled=true
	pcall(function()
		for _, obj in ip(workspace:GetDescendants()) do
			if obj:IsA("BasePart") and obj.Anchored
				and (obj.Name:lower():find("base") or (obj.Parent and obj.Parent.Name:lower():find("base"))) then
				originalTransparency[obj]=obj.LocalTransparencyModifier
				obj.LocalTransparencyModifier=0.88
			end
		end
	end)
	if hum then
		pcall(function() hum.WalkSpeed=24 end)
	end
end
local function disableOptimizer()
	if getgenv then getgenv().OPTIMIZER_ACTIVE=false end
	if xrayEnabled then
		for part, value in pa(originalTransparency) do
			if part then part.LocalTransparencyModifier=value end
		end
		originalTransparency={}
		xrayEnabled=false
	end
	if hum then
		pcall(function() hum.WalkSpeed=16 end)
	end
end
RSRS:Connect(function()
	if speedLbl and hrp then
		pcall(function()
			local displaySpeed=ms(hrp.Velocity.X^2+hrp.Velocity.Z^2)
			speedLbl.Text=sf("Speed: %.1f", displaySpeed)
		end)
	end
end)
local fovConnection=nil
local function UFOV()
	if fovConnection then fovConnection:DC() end
	fovConnection=RSRS:Connect(function()
		camera.FieldOfView=fovValue
	end)
end
local function SAVC()
	if not writefile then return end
	local config={
		NS2=NS2, CS2=CS2, 
		ASE=ASE, SR2=SR2, SD2=SD2, 
		ARDE=ARDE, UWE=UWE, 
		GE=GE, GGP=GGP, 
		GHP=GHP, OE=OE, 
		SBE=SBE, SPIN_SPEED=SPIN_SPEED, ESPE=ESPE, 
		ALE=false, ARE=false, fovValue=fovValue, 
		uiScaleValue=uiScaleValue, floatHeight=floatHeight, NSE=NSE, KEYBINDS={}
	}
	for k, v in pa(KEYBINDS) do
		config.KEYBINDS[k]={PC=v.PC and v.PC.Name or nil, Controller=v.Controller and v.Controller.Name or nil}
	end
	pcall(function() writefile(CONFIG_NAME..".json", HS2:JSONEncode(config)) end)
end
local function UTU(name, state)
	if not TB2[name] then return end
	local btn=TB2[name]
	btn.state=state
	btn.track.BC3=state and C3P or C3G
	btn.dot.BC3=C3W
	btn.dot.Position=state and UDN(1, -btn.dotSz-3, 0.5, -btn.dotSz/2) or UDN(0, 3, 0.5, -btn.dotSz/2)
end
local function local APE=false
local APC=nil
local APP=1
local autoPlaySide="left"
local APS2=60
local APL1=V3(-476.48, -6.28, 92.73)
local APLEND=V3(-483.12, -4.95, 94.80)
local APR1=V3(-476.16, -6.52, 25.62)
local APREND=V3(-483.04, -5.09, 23.14)
local function SAP()
	APE=false
	if APC then APC:DC() APC=nil end
	APP=1 autoPlaySide="left"
	if char and hum then hum:Move(Vector3.zero, false) end
	UTU("Auto Play", false)
	if FB["AutoPlay"] then
		FB["AutoPlay"].state=false
		FB["AutoPlay"].ind.BC3=C3G
	end
end
local function STAP()
	if APC then APC:DC() end
	APP=1 autoPlaySide="left"
	APC=RSH:Connect(function()
		if not APE or not char or not hrp or not hum then return end
		local spd=APS2
		if autoPlaySide=="left" then
			if APP==1 then
				local d=V3(APL1.X-hrp.Position.X, 0, APL1.Z-hrp.Position.Z)
				if d.Mag<1 then APP=2 return end
				local md=d.Unit hum:Move(md, false)
				hrp.ALV=V3(md.X*spd, hrp.ALV.Y, md.Z*spd)
			elseif APP==2 then
				local d=V3(APLEND.X-hrp.Position.X, 0, APLEND.Z-hrp.Position.Z)
				if d.Mag<1 then
					hum:Move(Vector3.zero, false) hrp.ALV=V3(0, 0, 0)
					APP=1 autoPlaySide="right"
					return
				end
				local md=d.Unit hum:Move(md, false)
				hrp.ALV=V3(md.X*spd, hrp.ALV.Y, md.Z*spd)
			end
		elseif autoPlaySide=="right" then
			if APP==1 then
				local d=V3(APR1.X-hrp.Position.X, 0, APR1.Z-hrp.Position.Z)
				if d.Mag<1 then APP=2 return end
				local md=d.Unit hum:Move(md, false)
				hrp.ALV=V3(md.X*spd, hrp.ALV.Y, md.Z*spd)
			elseif APP==2 then
				local d=V3(APREND.X-hrp.Position.X, 0, APREND.Z-hrp.Position.Z)
				if d.Mag<1 then
					hum:Move(Vector3.zero, false) hrp.ALV=V3(0, 0, 0)
					APP=1 autoPlaySide="left"
					return
				end
				local md=d.Unit hum:Move(md, false)
				hrp.ALV=V3(md.X*spd, hrp.ALV.Y, md.Z*spd)
			end
		end
	end)
end
LCON()
	if not isfile or not readfile then return false end
	local success, result=pcall(function()
		if isfile(CONFIG_NAME..".json") then return HS2:JSONDecode(readfile(CONFIG_NAME..".json")) end
		return nil
	end)
	if success and result then
		NS2=result.NS2 or 60
		CS2=result.CS2 or 30
		ASE=result.ASE or false
		SR2=math.max(1, result.SR2 or 60)
		SD2=math.max(0.1, result.SD2 or 1.3)
		ARDE=result.ARDE or false
		UWE=result.UWE or false
		GE=result.GE or false
		GGP=result.GGP or 42
		GHP=result.GHP or 35
		OE=result.OE or false
		SBE=result.SBE or false
		SPIN_SPEED=result.SPIN_SPEED or 19
		ESPE=result.ESPE~=false
		fovValue=result.fovValue or 70
		if result.uiScaleValue then uiScaleValue=result.uiScaleValue end
		if result.floatHeight then floatHeight=result.floatHeight end
		if result.NSE~=nil then NSE=result.NSE end
		ALE=false
		ARE=false
		if result.KEYBINDS then
			for k, v in pa(result.KEYBINDS) do
				if KEYBINDS[k] then
					KEYBINDS[k]={
						PC=(v.PC and Enum.KeyCode[v.PC]) or (DEFAULT_KEYBINDS[k] and DEFAULT_KEYBINDS[k].PC), 
						Controller=(v.Controller and Enum.KeyCode[v.Controller]) or (DEFAULT_KEYBINDS[k] and DEFAULT_KEYBINDS[k].Controller)
					}
				end
			end
		end
		return true
	end
	return false
end
local function cleanupSpinBot()
	if spinBAV then spinBAV:Des() spinBAV=nil end
	local c=LP.Character
	if c then
		local root=c:FindFirstChild("HumanoidRootPart")
		if root then
			for _, v in pa(root:GetChildren()) do
				if v.Name=="SpinBAV" and v:IsA("BodyAngularVelocity") then v:Des() end
			end
		end
	end
end
local function startSpinBot()
	cleanupSpinBot()
	local c=LP.Character
	if not c then return end
	local root=c:FindFirstChild("HumanoidRootPart")
	if not root then return end
	spinBAV=IN("BodyAngularVelocity")
	spinBAV.Name="SpinBAV"
	spinBAV.MaxTorque=V3(0, mh, 0)
	spinBAV.AngularVelocity=V3(0, SPIN_SPEED, 0)
	spinBAV.Parent=root
end
local function stopSpinBot()
	cleanupSpinBot()
end
local function getBat()
	if not char then return nil end
	local t=char:FindFirstChild("Bat")
	if t then return t end
	local bp=LP:FindFirstChild("Backpack")
	if bp then
		t=bp:FindFirstChild("Bat")
		if t then
			local h=char:FindFirstChildOfClass("Humanoid")
			if h then h:EquipTool(t) end
			return t
		end
	end
	return nil
end
local function equipBat_target()
	if not hum then return end
	local batTool=LP.Backpack:FindFirstChild("Bat") or char:FindFirstChild("Bat")
	if batTool then
		hum:EquipTool(batTool)
		return batTool
	end
end
local function nearestPlayer_target()
	if not hrp then return nil, mh end
	local closest, minDist=nil, mh
	for _, plr in ip(PL:GetPL()) do
		if plr~=LP and plr.Character then
			local targetHRP=plr.Character:FindFirstChild("HumanoidRootPart")
			local targetHum=plr.Character:FindFirstChildOfClass("Humanoid")
			if targetHRP and targetHum and targetHum.Health>0 then
				local distance=(targetHRP.Position-hrp.Position).Mag
				if distance<minDist then
					minDist=distance
					closest=targetHRP
				end
			end
		end
	end
	return closest, minDist
end
local function closestLookTarget()
	if not hrp then return nil end
	local nearest=nil
	local shortest=BAT_LOOK_DISTANCE
	for _, plr in ip(PL:GetPL()) do
		if plr~=LP and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local distance=(hrp.Position-plr.Character.HumanoidRootPart.Position).Mag
			if distance<shortest then
				shortest=distance
				nearest=plr.Character.HumanoidRootPart
			end
		end
	end
	return nearest
end
local function startLookAt()
	if not hrp or not hum then return end
	hum.AutoRotate=false
	attachment_bat=IN("Attachment", hrp)
	alignOrientation_bat=IN("AlignOrientation")
	alignOrientation_bat.Attachment0=attachment_bat
	alignOrientation_bat.Mode=Enum.OrientationAlignmentMode.OneAttachment
	alignOrientation_bat.MaxTorque=V3(mh, mh, mh)
	alignOrientation_bat.Responsiveness=1000
	alignOrientation_bat.RigidityEnabled=true
	alignOrientation_bat.Parent=hrp
	lookConnection_bat=RSRS:Connect(function()
		if not hrp or not alignOrientation_bat then return end
		local target=closestLookTarget()
		if not target then return end
		local lookPos=V3(target.Position.X, hrp.Position.Y, target.Position.Z)
		alignOrientation_bat.CFrame=CFrame.lookAt(hrp.Position, lookPos)
	end)
end
local function stopLookAt()
	if lookConnection_bat then lookConnection_bat:DC() lookConnection_bat=nil end
	if alignOrientation_bat then alignOrientation_bat:Des() alignOrientation_bat=nil end
	if attachment_bat then attachment_bat:Des() attachment_bat=nil end
	if hum then hum.AutoRotate=true end
end
function SBA()
	BAT=false
	stopLookAt()
	if hrp then
		hrp.ALV=Vector3.zero
	end
end
function STBA()
	SBA()
	BAT=true
	if not char or not hrp or not hum then return end
	startLookAt()
end
RSH:Connect(function()
	if not BAT or not char or not hrp or not hum then return end
	hrp.CanCollide=false
	local target, distance=nearestPlayer_target()
	if not target then return end
	local targetPos=V3(target.Position.X, target.Position.Y, target.Position.Z)
	local moveDir=(targetPos-hrp.Position).Unit
	hrp.ALV=moveDir*BAT_MOVE_SPEED
	if distance<=BAT_ENGAGE_RANGE then
		if tick()-lastEquipTick_bat>=BAT_LOOP_TIME then
			equipBat_target()
			lastEquipTick_bat=tick()
		end
		if tick()-lastUseTick_bat>=BAT_LOOP_TIME then
			local batTool=char:FindFirstChild("Bat")
			if batTool then
				batTool:Activate()
			end
			lastUseTick_bat=tick()
		end
	end
end)
local function faceSouth()
	local c=LP.Character
	if not c then return end
	local h=c:FindFirstChild("HumanoidRootPart")
	if not h then return end
	h.CFrame=CFrame.new(h.Position)*CFrame.Angles(0, 0, 0)
	local cam=workspace.CurrentCamera
	if cam then
		local camDistance=12
		local camHeight=5
		local charPos=h.Position
		cam.CFrame=CFrame.new(charPos.X, charPos.Y+camHeight, charPos.Z-camDistance)*CFrame.Angles(mr(-15), 0, 0)
	end
end
local function faceNorth()
	local c=LP.Character
	if not c then return end
	local h=c:FindFirstChild("HumanoidRootPart")
	if not h then return end
	h.CFrame=CFrame.new(h.Position)*CFrame.Angles(0, mr(180), 0)
	local cam=workspace.CurrentCamera
	if cam then
		local camDistance=12
		local charPos=h.Position
		cam.CFrame=CFrame.new(charPos.X, charPos.Y+2, charPos.Z+camDistance)*CFrame.Angles(0, mr(180), 0)
	end
end
local function STAL()
	if ALC then ALC:DC() end
	ALP=1
	ALC=RSH:Connect(function()
		if not ALE or not char or not hrp or not hum then return end
		local currentSpeed=NS2
		if ALP==1 then
			local targetPos=V3(POSITION_L1.X, hrp.Position.Y, POSITION_L1.Z)
			local dist=(targetPos-hrp.Position).Mag
			if dist<1 then
				ALP=2
				local dir=(POSITION_L2-hrp.Position)
				local moveDir=V3(dir.X, 0, dir.Z).Unit
				hum:Move(moveDir, false)
				hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
				return
			end
			local dir=(POSITION_L1-hrp.Position)
			local moveDir=V3(dir.X, 0, dir.Z).Unit
			hum:Move(moveDir, false)
			hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
		elseif ALP==2 then
			local targetPos=V3(POSITION_L2.X, hrp.Position.Y, POSITION_L2.Z)
			local dist=(targetPos-hrp.Position).Mag
			if dist<1 then
				hum:Move(Vector3.zero, false)
				hrp.ALV=V3(0, 0, 0)
				ALE=false
				if ALC then ALC:DC() ALC=nil end
				ALP=1
				UTU("Auto Left", false)
				if FB["AutoLeft"] then FB["AutoLeft"].state=false FB["AutoLeft"].ind.BC3=C3G end
				faceSouth()
				return
			end
			local dir=(POSITION_L2-hrp.Position)
			local moveDir=V3(dir.X, 0, dir.Z).Unit
			hum:Move(moveDir, false)
			hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
		end
	end)
end
local function SAL()
	ALE=false
	if ALC then ALC:DC() ALC=nil end
	ALP=1
	if char and hum then hum:Move(Vector3.zero, false) end
	UTU("Auto Left", false)
	if FB["AutoLeft"] then
		FB["AutoLeft"].state=false
		FB["AutoLeft"].ind.BC3=C3G
	end
end
local function STAR2()
	if ARC then ARC:DC() end
	ARP=1
	ARC=RSH:Connect(function()
		if not ARE or not char or not hrp or not hum then return end
		local currentSpeed=NS2
		if ARP==1 then
			local targetPos=V3(POSITION_R1.X, hrp.Position.Y, POSITION_R1.Z)
			local dist=(targetPos-hrp.Position).Mag
			if dist<1 then
				ARP=2
				local dir=(POSITION_R2-hrp.Position)
				local moveDir=V3(dir.X, 0, dir.Z).Unit
				hum:Move(moveDir, false)
				hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
				return
			end
			local dir=(POSITION_R1-hrp.Position)
			local moveDir=V3(dir.X, 0, dir.Z).Unit
			hum:Move(moveDir, false)
			hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
		elseif ARP==2 then
			local targetPos=V3(POSITION_R2.X, hrp.Position.Y, POSITION_R2.Z)
			local dist=(targetPos-hrp.Position).Mag
			if dist<1 then
				hum:Move(Vector3.zero, false)
				hrp.ALV=V3(0, 0, 0)
				ARE=false
				if ARC then ARC:DC() ARC=nil end
				ARP=1
				UTU("Auto Right", false)
				if FB["AutoRight"] then FB["AutoRight"].state=false FB["AutoRight"].ind.BC3=C3G end
				faceNorth()
				return
			end
			local dir=(POSITION_R2-hrp.Position)
			local moveDir=V3(dir.X, 0, dir.Z).Unit
			hum:Move(moveDir, false)
			hrp.ALV=V3(moveDir.X*currentSpeed, hrp.ALV.Y, moveDir.Z*currentSpeed)
		end
	end)
end
local function SAR()
	ARE=false
	if ARC then ARC:DC() ARC=nil end
	ARP=1
	if char and hum then hum:Move(Vector3.zero, false) end
	UTU("Auto Right", false)
	if FB["AutoRight"] then
		FB["AutoRight"].state=false
		FB["AutoRight"].ind.BC3=C3G
	end
end
local function setAutoLeft(state)
	if ALE==state then return end
	if state and BAT then
		SBA()
		BAT=false
		UTU("Bat Aimbot", false)
		if FB["BatAimbot"] then
			FB["BatAimbot"].state=false
			FB["BatAimbot"].ind.BC3=C3G
		end
	end
	if state then
		BAT=false
		if ARE then
			ARE=false
			if ARC then ARC:DC() ARC=nil end
			ARP=1
			if char and hum then hum:Move(Vector3.zero, false) end
		end
	end
	ALE=state
	if state then
		STAL()
	else
		SAL()
	end
	if FB["AutoLeft"] then
		FB["AutoLeft"].state=ALE
		FB["AutoLeft"].ind.BC3=ALE and TA or TTO
	end
end
local function setAutoRight(state)
	if ARE==state then return end
	if state and BAT then
		SBA()
		BAT=false
		UTU("Bat Aimbot", false)
		if FB["BatAimbot"] then
			FB["BatAimbot"].state=false
			FB["BatAimbot"].ind.BC3=C3G
		end
	end
	if state then
		BAT=false
		if ALE then
			ALE=false
			if ALC then ALC:DC() ALC=nil end
			ALP=1
			if char and hum then hum:Move(Vector3.zero, false) end
		end
	end
	ARE=state
	if state then
		STAR2()
	else
		SAR()
	end
	if FB["AutoRight"] then
		FB["AutoRight"].state=ARE
		FB["AutoRight"].ind.BC3=ARE and TA or TTO
	end
end
local function setBatAimbot(state)
	if BAT==state then return end
	if state then
		if ALE then
			ALE=false
			if ALC then ALC:DC() ALC=nil end
			ALP=1
			if char and hum then hum:Move(Vector3.zero, false) end
			UTU("Auto Left", false)
			if FB["AutoLeft"] then
				FB["AutoLeft"].state=false
				FB["AutoLeft"].ind.BC3=C3G
			end
		end
		if ARE then
			ARE=false
			if ARC then ARC:DC() ARC=nil end
			ARP=1
			if char and hum then hum:Move(Vector3.zero, false) end
			UTU("Auto Right", false)
			if FB["AutoRight"] then
				FB["AutoRight"].state=false
				FB["AutoRight"].ind.BC3=C3G
			end
		end
	end
	BAT=state
	if state then
		STBA()
	else
		SBA()
	end
	if FB["BatAimbot"] then
		FB["BatAimbot"].state=BAT
		FB["BatAimbot"].ind.BC3=BAT and TA or TTO
	end
end
local function STARD()
	if antiRagdollConn then return end
	antiRagdollConn=RSH:Connect(function()
		if not ARDE then return end
		local character=LP.Character
		if not character then return end
		local humanoid=character:FindFirstChildOfClass("Humanoid")
		local root=character:FindFirstChild("HumanoidRootPart")
		if humanoid then
			local st=humanoid:GetState()
			if st==EHST.Physics or st==EHST.Ragdoll or st==EHST.FallingDown then
				humanoid:ChangeState(EHST.Running)
				workspace.CurrentCamera.CameraSubject=humanoid
				pcall(function()
					local PM=LP.PlayerScripts:FindFirstChild("PlayerModule")
					if PM then local C=require(PM:FindFirstChild("ControlModule")) if C then C:Enable() end end
				end)
				if root then root.Velocity=V3(0, 0, 0) root.RotVelocity=V3(0, 0, 0) end
			end
		end
		for _, obj in ip(character:GetDescendants()) do
			pcall(function() if obj:IsA("Motor6D") and obj.Enabled==false then obj.Enabled=true end end)
		end
	end)
end
local function SARD()
	if antiRagdollConn then antiRagdollConn:DC() antiRagdollConn=nil end
end
local function SGF()
	pcall(function()
		if not hrp then return end
		if GVF then GVF:Des() end
		if GAT then GAT:Des() end
		GAT=IN("Attachment")
		GAT.Parent=hrp
		GVF=IN("VectorForce")
		GVF.Attachment0=GAT
		GVF.ApplyAtCenterOfMass=true
		GVF.RelativeTo=Enum.ActuatorRelativeTo.World
		GVF.Force=V3(0, 0, 0)
		GVF.Parent=hrp
	end)
end
local function UGF()
	if not GE or not GVF or not char then return end
	pcall(function()
		local mass=0
		for _, p in ip(char:GetDescendants()) do
			if p:IsA("BasePart") then mass=mass+p:GetMass() end
		end
		local targetG=DG*(GGP/100)
		GVF.Force=V3(0, mass*(DG-targetG)*0.95, 0)
	end)
end
local function AGJ()
	if not hum then return end
	if GE then
		local ratio=ms((DG*(GGP/100))/DG)
		hum.JumpPower=OJP*ratio
	else
		hum.JumpPower=OJP
	end
end
local function doGalaxyHop()
	if tick()-galaxyLastHop<GHC then return end
	galaxyLastHop=tick()
	if not hrp or not hum then return end
	if hum.FloorMaterial==EMA then
		hrp.ALV=V3(hrp.ALV.X, INF_JUMP_POWER, hrp.ALV.Z)
	end
end
local function startGalaxy()
	ts(function()
		tw(2)
		GE=true HPE=true
		SGF() AGJ()
		SH2=false
		FJ=false
	end)
end
local function stopGalaxy()
	GE=false HPE=false
	if GVF then GVF:Des() GVF=nil end
	if GAT then GAT:Des() GAT=nil end
	AGJ()
end
local function startUnwalk()
	if not char then return end
	local anim=char:FindFirstChild("Animate")
	if anim then savedAnimate=anim:Clone() anim.Disabled=true tw() anim:Des() end
	local h2=char:FindFirstChildOfClass("Humanoid")
	if h2 then for _, track in ip(h2:GetPlayingAnimationTracks()) do track:Stop() end end
end
local function stopUnwalk()
	if savedAnimate and char then
		local na=savedAnimate:Clone() na.Parent=char na.Disabled=false
	end
end
local function enableVoidMode()
	NSE=true
end
local function disableVoidMode()
	NSE=false
	if nightSkyConn then nightSkyConn:DC() nightSkyConn=nil end
	if nightSkyBloom then pcall(function() nightSkyBloom:Des() end) nightSkyBloom=nil end
	if nightSkyCC then pcall(function() nightSkyCC:Des() end) nightSkyCC=nil end
	if nightSkySky then pcall(function() nightSkySky:Des() end) nightSkySky=nil end
	Lighting.Ambient=Color3.fromRGB(127, 127, 127)
	Lighting.Brightness=2
	Lighting.ClockTime=14
	Lighting.FogColor=Color3.fromRGB(192, 192, 192)
	Lighting.FogEnd=100000
end
local function startFloat()
	if not hrp then return end
	if floatConn then return end
	floatOriginalY=hrp.Position.Y
	FE=true
	hrp.ALV=V3(hrp.ALV.X, 500, hrp.ALV.Z)
	floatConn=RSH:Connect(function()
		if not FE or not hrp then return end
		local targetY=floatOriginalY+floatHeight
		local curY=hrp.Position.Y
		local diff=targetY-curY
		if ma(diff)>0.1 then
			hrp.ALV=V3(hrp.ALV.X, mc(diff*25, -150, 150), hrp.ALV.Z)
		else
			hrp.ALV=V3(hrp.ALV.X, 0, hrp.ALV.Z)
		end
	end)
end
local function stopFloat()
	FE=false
	if floatConn then floatConn:DC() floatConn=nil end
	if hrp then
		if GVF then GVF:Des() GVF=nil end
		if GAT then GAT:Des() GAT=nil end
		hrp.ALV=V3(hrp.ALV.X, -500, hrp.ALV.Z)
		task.defer(function()
			if GE then SGF() end
		end)
	end
end
local function isMyPlotByName(pn)
	local plots=workspace:FindFirstChild("Plots")
	if not plots then return false end
	local plot=plots:FindFirstChild(pn)
	if not plot then return false end
	local sign=plot:FindFirstChild("PlotSign")
	if sign then
		local yb=sign:FindFirstChild("YourBase")
		if yb and yb:IsA("BillboardGui") then return yb.Enabled==true end
	end
	return false
end
local function findNearestPrompt()
	if not hrp then return nil end
	local plots=workspace:FindFirstChild("Plots")
	if not plots then return nil end
	local np, nd, nn=nil, mh, nil
	for _, plot in ip(plots:GetChildren()) do
		if isMyPlotByName(plot.Name) then continue end
		local podiums=plot:FindFirstChild("AnimalPodiums")
		if not podiums then continue end
		for _, pod in ip(podiums:GetChildren()) do
			pcall(function()
				local base=pod:FindFirstChild("Base")
				local spawn=base and base:FindFirstChild("Spawn")
				if spawn then
					local dist=(spawn.Position-hrp.Position).Mag
					if dist<nd and dist<=SR2 then
						local att=spawn:FindFirstChild("PromptAttachment")
						if att then
							for _, ch in ip(att:GetChildren()) do
								if ch:IsA("ProximityPrompt") then np, nd, nn=ch, dist, pod.Name break end
							end
						end
					end
				end
			end)
		end
	end
	return np, nd, nn
end
local function ResetProgressBar()
	if ProgressLabel then ProgressLabel.Text="" end
	if ProgressPercentLabel then ProgressPercentLabel.Text="0%" end
	if ProgressBarFill then ProgressBarFill.Size=UDN(0, 0, 1, 0) end
end
local function executeSteal(prompt, name)
	if IS2 then return end
	if not StealData[prompt] then
		StealData[prompt]={hold={}, trigger={}, ready=true}
		pcall(function()
			if getconnections then
				for _, c in ip(getconnections(prompt.PromptButtonHoldBegan)) do
					if c.Function then ti(StealData[prompt].hold, c.Function) end
				end
				for _, c in ip(getconnections(prompt.Triggered)) do
					if c.Function then ti(StealData[prompt].trigger, c.Function) end
				end
			end
		end)
	end
	local data=StealData[prompt]
	if not data.ready then return end
	data.ready=false IS2=true SST=tick()
	if ProgressLabel then ProgressLabel.Text=name or "STEALING..." end
	if PC2 then PC2:DC() PC2=nil end
	PC2=RSH:Connect(function()
		if not IS2 then if PC2 then PC2:DC() PC2=nil end return end
		local prog=mc((tick()-SST)/SD2, 0, 1)
		if ProgressBarFill then ProgressBarFill.Size=UDN(prog, 0, 1, 0) end
		if ProgressPercentLabel then
			ProgressPercentLabel.Text=mf(prog*100).."%"
		end
	end)
	ts(function()
		for _, f in ip(data.hold) do ts(f) end
		tw(SD2)
		for _, f in ip(data.trigger) do ts(f) end
		if PC2 then PC2:DC() PC2=nil end
		ResetProgressBar() data.ready=true IS2=false
	end)
end
local function STAS()
	if autoStealConn then return end
	autoStealConn=RSH:Connect(function()
		if not ASE or IS2 then return end
		local p, _, n=findNearestPrompt()
		if p then executeSteal(p, n) end
	end)
end
local function SAS()
	if autoStealConn then autoStealConn:DC() autoStealConn=nil end
	IS2=false
	if PC2 then PC2:DC() PC2=nil end
	ResetProgressBar()
end
local function setupChar(c)
	char=c
	hum=char:WaitForChild("Humanoid", 5)
	hrp=char:WaitForChild("HumanoidRootPart", 5)
	ALP=1 ARP=1
	tw(0.5)
	if not hum or not hrp then return end
	local head=char:FindFirstChild("Head")
	if head then
		local bb=IN("BillboardGui", head)
		bb.Size=UDN(0, 140, 0, 25) bb.StudsOffset=V3(0, 3, 0) bb.AOT=true
		speedLbl=IN("TextLabel", bb)
		speedLbl.Size=UDN(1, 0, 1, 0)
		speedLbl.BT=1
		speedLbl.TC3=C3P
		speedLbl.Font=FA
		speedLbl.TSC=true
		speedLbl.TST=0.1
		speedLbl.TSCOL=C3B
	end
	if GE then
		if GVF then pcall(function() GVF:Des() end) GVF=nil end
		if GAT then pcall(function() GAT:Des() end) GAT=nil end
		HPE=true SGF() AGJ()
	end
	if UWE then startUnwalk() end
	if SBE then cleanupSpinBot() startSpinBot() end
	if ESPE then enableESP() end
	if BAT then SBA() STBA() end
	if FE then
		if floatConn then floatConn:DC() floatConn=nil end
		startFloat()
	end
	ts(function()
		tw(1)
		if hum and hum.JumpPower>0 then OJP=hum.JumpPower end
	end)
	if hum then
		hum:GetPropertyChangedSignal("Jump"):Connect(function()
			if FJ and not hum.Jump then SH2=false FJ=false end
		end)
	end
end
LCON()
ScreenGui=IN("ScreenGui")
ScreenGui.Name="AuraHubGUI"
local guiParent
pcall(function()
	if gethui then
		guiParent=gethui()
	elseif syn and syn.protect_gui then
		guiParent=LP:WaitForChild("PlayerGui")
		syn.protect_gui(ScreenGui)
	else
		guiParent=CoreGui
	end
end)
if not guiParent then guiParent=LP:WaitForChild("PlayerGui") end
ScreenGui.Parent=guiParent
ScreenGui.ROS=false
ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
ScreenGui.IGI=true
local HUDBar=IN("Frame", ScreenGui)
HUDBar.Size=UDN(0, s(340), 0, s(44))
HUDBar.Position=UDN(0.5, -s(170), 0, s(8))
HUDBar.BC3=C3E
HUDBar.BT=0.15
HUDBar.BSP=0
IN("UICorner", HUDBar).CR=U2(0, s(12))
local HUDBarStroke=IN("UIStroke", HUDBar)
HUDBarStroke.Color=C3P HUDBarStroke.Thickness=1.5
local HUDTitleLbl=IN("TextLabel", HUDBar)
HUDTitleLbl.Size=UDN(0, s(100), 1, 0) HUDTitleLbl.Position=UDN(0, s(10), 0, 0)
HUDTitleLbl.BT=1 HUDTitleLbl.Text="AURA HUB"
HUDTitleLbl.TC3=C3P HUDTitleLbl.Font=FA HUDTitleLbl.TS=s(13)
HUDTitleLbl.TXA=Enum.TXA.Left
local HUDDiv1=IN("Frame", HUDBar) HUDDiv1.Size=UDN(0, 1, 0.6, 0) HUDDiv1.Position=UDN(0, s(118), 0.2, 0)
HUDDiv1.BC3=C3P HUDDiv1.BT=0.5 HUDDiv1.BSP=0
FPSLabel=IN("TextLabel", HUDBar) FPSLabel.Size=UDN(0, s(90), 1, 0) FPSLabel.Position=UDN(0, s(128), 0, 0)
FPSLabel.BT=1 FPSLabel.Text="FPS:
FPSLabel.Font=FA FPSLabel.TS=s(12) FPSLabel.TXA=Enum.TXA.Left
local HUDDiv2=IN("Frame", HUDBar) HUDDiv2.Size=UDN(0, 1, 0.6, 0) HUDDiv2.Position=UDN(0, s(225), 0.2, 0)
HUDDiv2.BC3=C3P HUDDiv2.BT=0.5 HUDDiv2.BSP=0
PingLabel=IN("TextLabel", HUDBar) PingLabel.Size=UDN(0, s(100), 1, 0) PingLabel.Position=UDN(0, s(234), 0, 0)
PingLabel.BT=1 PingLabel.Text="Ping:
PingLabel.Font=FA PingLabel.TS=s(12) PingLabel.TXA=Enum.TXA.Left
local _hudFC, _hudLT=0, tick()
RSRS:Connect(function()
	_hudFC=_hudFC+1
	local _ct=tick()
	if _ct-_hudLT>=1 then
		if FPSLabel then FPSLabel.Text=sf("FPS: %d", _hudFC) end
		_hudFC=0 _hudLT=_ct
	end
	if PingLabel then pcall(function()
		PingLabel.Text=sf("Ping: %dms", mf(Stats.Network.ServerStatsItem["Data Ping"]:GetValue()))
	end) end
end)
ProgressBarContainer=IN("Frame", ScreenGui)
ProgressBarContainer.Size=UDN(0, s(420), 0, s(70))
ProgressBarContainer.Position=UDN(0.5, -s(210), 1, -s(182))
ProgressBarContainer.BC3=Color3.fromRGB(20, 20, 20)
ProgressBarContainer.BT=0.10
ProgressBarContainer.BSP=0
ProgressBarContainer.CD=true
IN("UICorner", ProgressBarContainer).CR=U2(0, s(14))
local pStroke=IN("UIStroke", ProgressBarContainer)
pStroke.Thickness=2
pStroke.Color=TA
ProgressPercentLabel=IN("TextLabel", ProgressBarContainer)
ProgressPercentLabel.Size=UDN(0, s(60), 0, s(20))
ProgressPercentLabel.Position=UDN(0, s(12), 0, s(6))
ProgressPercentLabel.BT=1
ProgressPercentLabel.Text="0%"
ProgressPercentLabel.TC3=C3W
ProgressPercentLabel.Font=FA
ProgressPercentLabel.TS=s(10)
ProgressPercentLabel.TXA=Enum.TXA.Left
ProgressPercentLabel.ZIndex=3
local ProgressLabel=IN("TextLabel", ProgressBarContainer)
ProgressLabel.Size=UDN(0, s(160), 0, s(20))
ProgressLabel.Position=UDN(0, s(80), 0, s(6))
ProgressLabel.BT=1
ProgressLabel.Text=""
ProgressLabel.TC3=TA
ProgressLabel.Font=FA
ProgressLabel.TS=s(10)
ProgressLabel.TXA=Enum.TXA.Left
ProgressLabel.ZIndex=3
local RadiusLabelText=IN("TextLabel", ProgressBarContainer)
RadiusLabelText.Size=UDN(0, s(50), 0, s(20))
RadiusLabelText.Position=UDN(1, -s(85), 0, s(6))
RadiusLabelText.BT=1
RadiusLabelText.Text="Radius: "
RadiusLabelText.TC3=C3W
RadiusLabelText.Font=FA
RadiusLabelText.TS=s(10)
RadiusLabelText.TXA=Enum.TXA.Left
RadiusLabelText.ZIndex=3
RadiusInput=IN("TextBox", ProgressBarContainer)
RadiusInput.Size=UDN(0, s(50), 0, s(20))
RadiusInput.Position=UDN(1, -s(30), 0, s(6))
RadiusInput.BT=1
RadiusInput.Text=ts2(SR2)
RadiusInput.TC3=C3W
RadiusInput.Font=FA
RadiusInput.TS=s(10)
RadiusInput.TXA=Enum.TXA.Left
RadiusInput.ZIndex=3
RadiusInput.BSP=0
RadiusInput.CTOF=false
RadiusInput.FocusLost:Connect(function()
	local n=tn(RadiusInput.Text)
	if n then
		SR2=mc(mf(n), 5, 200)
		RadiusInput.Text=ts2(SR2)
	else
		RadiusInput.Text=ts2(SR2)
	end
end)
RadiusInput.InputChanged:Connect(function()
	local text=RadiusInput.Text
	if text~="" then
		local n=tn(text)
		if not n or n<5 then
			RadiusInput.Text="5"
		elseif n>200 then
			RadiusInput.Text="200"
		else
			RadiusInput.Text=ts2(mf(n))
		end
	end
end)
local pTrack=IN("Frame", ProgressBarContainer)
pTrack.Size=UDN(0.9, 0, 0, s(18))
pTrack.Position=UDN(0.05, 0, 1, -s(24))
pTrack.BC3=C3D
pTrack.ZIndex=2
pTrack.BSP=0
pTrack.BT=0.3
IN("UICorner", pTrack).CR=U2(0, s(5))
ProgressBarFill=IN("Frame", pTrack)
ProgressBarFill.Size=UDN(0, 0, 1, 0)
ProgressBarFill.BC3=TA
ProgressBarFill.ZIndex=2
ProgressBarFill.BSP=0
ProgressBarFill.BT=0.5
IN("UICorner", ProgressBarFill).CR=U2(0, s(5))
Main=IN("Frame", ScreenGui)
Main.Name="Main" Main.Size=UDN(0, s(480), 0, s(700))
Main.Position=UDN(0.2, 0, 0.5, -s(350))
Main.BC3=TBKG Main.BSP=0 Main.Active=true
IN("UICorner", Main).CR=U2(0, s(18))
local MainStroke=IN("UIStroke", Main) MainStroke.Color=TOL MainStroke.Thickness=0
local Header=IN("Frame", Main)
Header.Size=UDN(1, 0, 0, s(70)) Header.BC3=TSC2 Header.BSP=0
IN("UICorner", Header).CR=U2(0, s(18))
local HeaderFix=IN("Frame", Header)
HeaderFix.Size=UDN(1, 0, 0, s(18)) HeaderFix.Position=UDN(0, 0, 1, -s(18))
HeaderFix.BC3=TSC2 HeaderFix.BSP=0
local Title=IN("TextLabel", Header)
Title.Size=UDN(0, s(300), 0, s(28)) Title.Position=UDN(0.5, -s(150), 0, s(15))
Title.Text="AURA HUB" Title.TC3=TA Title.Font=FA
Title.TS=s(22) Title.TXA=Enum.TXA.Center Title.BT=1
local SubTitle=IN("TextLabel", Header)
SubTitle.Size=UDN(0, s(300), 0, s(18)) SubTitle.Position=UDN(0.5, -s(150), 0, s(42))
SubTitle.Text="Made // By // lotrix" SubTitle.TC3=TA SubTitle.Font=FA
SubTitle.TS=s(13) SubTitle.TXA=Enum.TXA.Center SubTitle.BT=1
local CredsLabel=IN("TextLabel", Header)
CredsLabel.Size=UDN(0, s(100), 0, s(10)) CredsLabel.Position=UDN(0, s(15), 0, s(48))
CredsLabel.Text="" CredsLabel.TC3=TDT CredsLabel.Font=FA
CredsLabel.TS=s(8) CredsLabel.TXA=Enum.TXA.Left CredsLabel.BT=1
local Content=IN("ScrollingFrame", Main)
Content.Size=UDN(1, -s(24), 1, -s(88)) Content.Position=UDN(0, s(12), 0, s(78))
Content.BT=1 Content.BSP=0
Content.CanvasSize=UDN(0, 0, 0, 0) Content.ACS=EAS
Content.SBT=s(4) Content.SBIC=TA
local ContentLayout=IN("UIListLayout", Content)
ContentLayout.Padding=U2(0, s(10)) ContentLayout.SortOrder=ESLO
local function createSection(name, order)
	local F=IN("Frame", Content)
	F.Size=UDN(1, 0, 0, s(32)) F.BT=1 F.LO=order
	local lbl=IN("TextLabel", F)
	lbl.Size=UDN(1, -s(8), 1, 0) lbl.Position=UDN(0, s(4), 0, 0)
	lbl.BT=1 lbl.Text=name:upper() lbl.TC3=TDT
	lbl.Font=FA lbl.TS=s(11) lbl.TXA=Enum.TXA.Left
end
local function createToggle(name, keyHintPC, keyHintController, defaultState, callback, order)
	local TF=IN("Frame", Content)
	TF.Size=UDN(1, 0, 0, s(48)) TF.BC3=TC TF.BSP=0 TF.LO=order
	IN("UICorner", TF).CR=U2(0, s(10))
	local badgeText=keyHintPC
	if badgeText and badgeText~="?" and badgeText~="" then
		local KB=IN("Frame", TF)
		KB.Size=UDN(0, s(32), 0, s(24)) KB.Position=UDN(0, s(12), 0.5, -s(12))
		KB.BC3=C3W KB.BSP=0
		IN("UICorner", KB).CR=U2(0, s(6))
		local KL=IN("TextLabel", KB)
		KL.Size=UDN(1, 0, 1, 0) KL.BT=1 KL.Text=badgeText
		KL.TC3=C3B KL.Font=FA KL.TS=s(12)
	end
	local Label=IN("TextLabel", TF)
	Label.Size=UDN(1, -s(130), 1, 0) Label.Position=UDN(0, s(52), 0, 0)
	Label.BT=1 Label.Text=name Label.TC3=TT
	Label.Font=FA Label.TS=s(14) Label.TXA=Enum.TXA.Left
	local pillW, pillH, dotSz=s(50), s(26), s(20)
	local Track=IN("Frame", TF)
	Track.Size=UDN(0, pillW, 0, pillH) Track.Position=UDN(1, -s(62), 0.5, -pillH/2)
	Track.BC3=defaultState and C3P or C3G Track.BSP=0
	IN("UICorner", Track).CR=U2(1, 0)
	local Dot=IN("Frame", Track)
	Dot.Size=UDN(0, dotSz, 0, dotSz)
	Dot.Position=defaultState and UDN(1, -dotSz-3, 0.5, -dotSz/2) or UDN(0, 3, 0.5, -dotSz/2)
	Dot.BC3=C3W Dot.BSP=0
	IN("UICorner", Dot).CR=U2(1, 0)
	TB2[name]={track=Track, dot=Dot, state=defaultState or false, dotSz=dotSz}
	local Btn=IN("TextButton", TF)
	Btn.Size=UDN(1, 0, 1, 0) Btn.BT=1 Btn.Text=""
	Btn.MouseButton1Click:Connect(function()
		local ns=not TB2[name].state
		TB2[name].state=ns
		Track.BC3=ns and C3P or C3G
		Dot.BC3=C3W
		Dot.Position=ns and UDN(1, -dotSz-3, 0.5, -dotSz/2) or UDN(0, 3, 0.5, -dotSz/2)
		callback(ns)
	end)
end
local function createTextInput(name, defaultVal, minVal, maxVal, callback, order, decimals)
	local SF=IN("Frame", Content)
	SF.Size=UDN(1, 0, 0, s(52)) SF.BC3=TC SF.BSP=0 SF.LO=order
	IN("UICorner", SF).CR=U2(0, s(10))
	local fmtV=decimals and function(v) return sf("%.1f", v) end or function(v) return ts2(mf(v)) end
	local Label=IN("TextLabel", SF)
	Label.Size=UDN(1, -s(80), 0, s(24)) Label.Position=UDN(0, s(14), 0, s(6))
	Label.BT=1 Label.Text=name Label.TC3=TT
	Label.Font=FA Label.TS=s(13) Label.TXA=Enum.TXA.Left
	local ValueBox=IN("TextBox", SF)
	ValueBox.Size=UDN(0, s(60), 0, s(24)) ValueBox.Position=UDN(1, -s(70), 0, s(6))
	ValueBox.BC3=TIB ValueBox.Text=fmtV(defaultVal) ValueBox.TC3=TA
	ValueBox.Font=FA ValueBox.TS=s(14) ValueBox.TXA=Enum.TXA.Right
	ValueBox.BSP=0 ValueBox.CTOF=false
	IN("UICorner", ValueBox).CR=U2(0, s(5))
	SV2[name]=ValueBox
	local currentVal=defaultVal
	local function applyValue(v)
		local cv=mc(v, minVal, maxVal) if not decimals then cv=mf(cv) end
		currentVal=cv
		ValueBox.Text=fmtV(cv)
		callback(cv)
	end
	ValueBox.FocusLost:Connect(function()
		local n=tn(ValueBox.Text) if n then applyValue(n) else ValueBox.Text=fmtV(currentVal) end
	end)
end
local function createSlider(name, defaultVal, minVal, maxVal, callback, order, decimals)
	local SF=IN("Frame", Content)
	SF.Size=UDN(1, 0, 0, s(64)) SF.BC3=TC SF.BSP=0 SF.LO=order
	IN("UICorner", SF).CR=U2(0, s(10))
	local fmtV=decimals and function(v) return sf("%.1f", v) end or function(v) return ts2(mf(v)) end
	local currentVal=defaultVal
	local Label=IN("TextLabel", SF)
	Label.Size=UDN(1, -s(80), 0, s(22)) Label.Position=UDN(0, s(14), 0, s(6))
	Label.BT=1 Label.Text=name Label.TC3=TT
	Label.Font=FA Label.TS=s(13) Label.TXA=Enum.TXA.Left
	local ValLbl=IN("TextLabel", SF)
	ValLbl.Size=UDN(0, s(60), 0, s(22)) ValLbl.Position=UDN(1, -s(68), 0, s(6))
	ValLbl.BT=1 ValLbl.Text=fmtV(defaultVal) ValLbl.TC3=TA
	ValLbl.Font=FA ValLbl.TS=s(14) ValLbl.TXA=Enum.TXA.Right
	local TrackBg=IN("Frame", SF)
	TrackBg.Size=UDN(1, -s(28), 0, s(14)) TrackBg.Position=UDN(0, s(14), 0, s(36))
	TrackBg.BC3=C3D TrackBg.BSP=0
	IN("UICorner", TrackBg).CR=U2(1, 0)
	local Fill=IN("Frame", TrackBg)
	local initPct=mc((defaultVal-minVal)/(maxVal-minVal), 0, 1)
	Fill.Size=UDN(initPct, 0, 1, 0)
	Fill.BC3=TA Fill.BSP=0
	IN("UICorner", Fill).CR=U2(1, 0)
	local Knob=IN("Frame", TrackBg)
	Knob.Size=UDN(0, s(18), 0, s(18)) Knob.AP=Vector2.new(0.5, 0.5)
	Knob.Position=UDN(initPct, 0, 0.5, 0)
	Knob.BC3=Color3.fromRGB(255, 255, 255) Knob.BSP=0
	IN("UICorner", Knob).CR=U2(1, 0)
	local KnobStroke=IN("UIStroke", Knob) KnobStroke.Color=TA KnobStroke.Thickness=2
	local function applyPct(pct)
		pct=mc(pct, 0, 1)
		local v=minVal+(maxVal-minVal)*pct
		if not decimals then v=mf(v+0.5) end
		currentVal=v
		Fill.Size=UDN(pct, 0, 1, 0)
		Knob.Position=UDN(pct, 0, 0.5, 0)
		ValLbl.Text=fmtV(v)
		callback(v)
	end
	local draggingSlider=false
	local HitBox=IN("TextButton", SF)
	HitBox.Size=UDN(1, -s(28), 0, s(30)) HitBox.Position=UDN(0, s(14), 0, s(29))
	HitBox.BT=1 HitBox.Text="" HitBox.ZIndex=5
	local function getPct(input)
		local absPos=TrackBg.AbsolutePosition.X
		local absSize=TrackBg.AbsoluteSize.X
		return mc((input.Position.X-absPos)/absSize, 0, 1)
	end
	HitBox.InputBegan:Connect(function(input)
		if input.UIT==Enum.UIT.MouseButton1 or input.UIT==Enum.UIT.Touch then
			draggingSlider=true applyPct(getPct(input))
		end
	end)
	HitBox.InputChanged:Connect(function(input)
		if draggingSlider and (input.UIT==Enum.UIT.MouseMovement or input.UIT==Enum.UIT.Touch) then
			applyPct(getPct(input))
		end
	end)
	HitBox.InputEnded:Connect(function(input)
		if input.UIT==Enum.UIT.MouseButton1 or input.UIT==Enum.UIT.Touch then
			draggingSlider=false
		end
	end)
	UISIC:Connect(function(input)
		if draggingSlider and (input.UIT==Enum.UIT.MouseMovement or input.UIT==Enum.UIT.Touch) then
			applyPct(getPct(input))
		end
	end)
	UISIE:Connect(function(input)
		if input.UIT==Enum.UIT.MouseButton1 or input.UIT==Enum.UIT.Touch then
			draggingSlider=false
		end
	end)
end
local function createCarrySpeedInput(order)
	local SF=IN("Frame", Content)
	SF.Size=UDN(1, 0, 0, s(52)) SF.BC3=TC SF.BSP=0 SF.LO=order
	IN("UICorner", SF).CR=U2(0, s(10))
	local Label=IN("TextLabel", SF)
	Label.Size=UDN(1, -s(80), 0, s(24)) Label.Position=UDN(0, s(14), 0, s(6))
	Label.BT=1 Label.Text="Carry Speed"
	Label.TC3=TT Label.Font=FA
	Label.TS=s(13) Label.TXA=Enum.TXA.Left
	CarrySpeedInput=IN("TextBox", SF)
	CarrySpeedInput.Size=UDN(0, s(60), 0, s(24))
	CarrySpeedInput.Position=UDN(1, -s(70), 0, s(6))
	CarrySpeedInput.BC3=TIB
	CarrySpeedInput.Text=sf("%.1f", CS2)
	CarrySpeedInput.TC3=TA
	CarrySpeedInput.Font=FA
	CarrySpeedInput.TS=s(14)
	CarrySpeedInput.TXA=Enum.TXA.Right
	CarrySpeedInput.BSP=0
	CarrySpeedInput.CTOF=false
	IN("UICorner", CarrySpeedInput).CR=U2(0, s(5))
	CarrySpeedInput.FocusLost:Connect(function()
		local n=tn(CarrySpeedInput.Text)
		if n and n>0 then CS2=mc(n, 10, 150)
		else CarrySpeedInput.Text=sf("%.1f", CS2) end
	end)
end
local LFK=nil
local function createKeybindSetter(actionName, defaultPC, defaultController, order)
	local KF=IN("Frame", Content)
	KF.Size=UDN(1, 0, 0, s(52)) KF.BC3=TC KF.BSP=0 KF.LO=order
	IN("UICorner", KF).CR=U2(0, s(10))
	local Label=IN("TextLabel", KF)
	Label.Size=UDN(0.4, 0, 1, 0) Label.Position=UDN(0, s(12), 0, 0)
	Label.BT=1 Label.Text=actionName
	Label.TC3=TT
	Label.Font=FA Label.TS=s(13) Label.TXA=Enum.TXA.Left
	local KeyBtn=IN("TextButton", KF)
	KeyBtn.Size=UDN(0, s(180), 0, s(32)) KeyBtn.Position=UDN(0.45, 0, 0.5, -s(16))
	KeyBtn.BC3=TIB KeyBtn.Text=defaultPC and defaultPC.Name or "None"
	KeyBtn.TC3=TT KeyBtn.Font=FA KeyBtn.TS=s(11) KeyBtn.BSP=0
	IN("UICorner", KeyBtn).CR=U2(0, s(5))
	KB2[actionName]={KeyBtn=KeyBtn}
	RKBD(actionName, KeyBtn, nil)
	KeyBtn.MouseButton1Click:Connect(function()
		if LFK then return end
		LFK="Unified_"..actionName
		KeyBtn.Text="Press..." KeyBtn.BC3=TSC2 KeyBtn.TC3=TT
		local conn conn=UISIB:Connect(function(input)
			if LFK~="Unified_"..actionName then conn:DC() return end
			if input.UIT==Enum.UIT.Keyboard then
				KEYBINDS[actionName].PC=input.KeyCode
				KeyBtn.BC3=TIB LFK=nil
				SAVC() SKBD(actionName) conn:DC()
			elseif input.UIT==Enum.UIT.Gamepad1 or input.UIT==Enum.UIT.Gamepad2
				or input.UIT==Enum.UIT.Gamepad3 or input.UIT==Enum.UIT.Gamepad4 then
				KEYBINDS[actionName].Controller=input.KeyCode
				KeyBtn.BC3=TIB LFK=nil
				SAVC() SKBD(actionName) conn:DC()
			end
		end)
		td(10, function()
			if LFK=="Unified_"..actionName then
				KeyBtn.BC3=TIB LFK=nil
				SKBD(actionName)
			end
		end)
	end)
end
local function createCombatKeybindBadge(parent, actionName)
	local badge=IN("TextButton", parent)
	badge.Size=UDN(0, s(44), 0, s(26))
	badge.Position=UDN(0, s(8), 0.5, -s(13))
	badge.BC3=C3P
	badge.BSP=0
	badge.Font=FA
	badge.TS=s(11)
	badge.TC3=C3W
	badge.Text=KEYBINDS[actionName] and KEYBINDS[actionName].PC and KEYBINDS[actionName].PC.Name or "?"
	badge.ZIndex=3
	IN("UICorner", badge).CR=U2(0, s(6))
	RKBD(actionName, badge, nil)
	badge.MouseButton1Click:Connect(function()
		if LFK then return end
		LFK="CombatPC_"..actionName
		badge.Text="..." badge.BC3=TSC2 badge.TC3=C3W
		local conn
		conn=UISIB:Connect(function(input)
			if LFK~="CombatPC_"..actionName then conn:DC() return end
			if input.UIT==Enum.UIT.Keyboard then
				KEYBINDS[actionName].PC=input.KeyCode
				badge.BC3=C3P LFK=nil
				SAVC() SKBD(actionName) conn:DC()
			end
		end)
		td(8, function()
			if LFK=="CombatPC_"..actionName then
				badge.BC3=C3P LFK=nil
				SKBD(actionName)
			end
		end)
	end)
	return badge
end
local function createCombatToggle(name, actionName, defaultState, callback, order)
	local TF=IN("Frame", Content)
	TF.Size=UDN(1, 0, 0, s(48)) TF.BC3=TC TF.BSP=0 TF.LO=order
	IN("UICorner", TF).CR=U2(0, s(10))
	createCombatKeybindBadge(TF, actionName)
	local Label=IN("TextLabel", TF)
	Label.Size=UDN(1, -s(130), 1, 0) Label.Position=UDN(0, s(58), 0, 0)
	Label.BT=1 Label.Text=name Label.TC3=TT
	Label.Font=FA Label.TS=s(14) Label.TXA=Enum.TXA.Left
	local pillW, pillH, dotSz=s(50), s(26), s(20)
	local Track=IN("Frame", TF)
	Track.Size=UDN(0, pillW, 0, pillH) Track.Position=UDN(1, -s(62), 0.5, -pillH/2)
	Track.BC3=defaultState and C3P or C3G Track.BSP=0
	IN("UICorner", Track).CR=U2(1, 0)
	local Dot=IN("Frame", Track)
	Dot.Size=UDN(0, dotSz, 0, dotSz)
	Dot.Position=defaultState and UDN(1, -dotSz-3, 0.5, -dotSz/2) or UDN(0, 3, 0.5, -dotSz/2)
	Dot.BC3=C3W Dot.BSP=0
	IN("UICorner", Dot).CR=U2(1, 0)
	TB2[name]={track=Track, dot=Dot, state=defaultState or false, dotSz=dotSz}
	local Btn=IN("TextButton", TF)
	Btn.Size=UDN(1, 0, 1, 0) Btn.BT=1 Btn.Text="" Btn.ZIndex=1
	Btn.MouseButton1Click:Connect(function()
		local ns=not TB2[name].state
		TB2[name].state=ns
		Track.BC3=ns and C3P or C3G
		Dot.BC3=C3W
		Dot.Position=ns and UDN(1, -dotSz-3, 0.5, -dotSz/2) or UDN(0, 3, 0.5, -dotSz/2)
		callback(ns)
	end)
end
createSection("SPEED", 5)
createTextInput("Speed Boost", NS2, 10, 70, function(v) NS2=v end, 6, true)
createCarrySpeedInput(7)
createSection("MOVEMENT", 10)
createToggle("Aura Mode", "?", "?", GE, function(v)
	GE=v NSE=v
	if v then startGalaxy() enableVoidMode() else stopGalaxy() disableVoidMode() end
end, 11)
createSlider("Hop Power", GHP, 5, 100, function(v) GHP=v end, 12, true)
createSlider("Gravity %", GGP, 10, 100, function(v)
	GGP=v if GE then AGJ() end
end, 13, true)
createToggle("Spin Bot", "?", "?", SBE, function(v)
	SBE=v if v then startSpinBot() else stopSpinBot() end
end, 14)
createTextInput("Spin Speed", SPIN_SPEED, 5, 50, function(v)
	SPIN_SPEED=v if spinBAV then spinBAV.AngularVelocity=V3(0, SPIN_SPEED, 0) end
end, 15, true)
createToggle("Unwalk", "?", "?", UWE, function(v)
	UWE=v if v and char then startUnwalk() else stopUnwalk() end
end, 16)
createCombatToggle("Float", "Float", false, function(v)
	if v then startFloat() else stopFloat() end
end, 17)
createTextInput("Float Height", floatHeight, 2, 20, function(v)
	floatHeight=v
end, 18, true)
createSection("COMBAT", 30)
createCombatToggle("Auto Left", "AutoLeft", false, function(v) setAutoLeft(v) end, 31)
createCombatToggle("Auto Right", "AutoRight", false, function(v) setAutoRight(v) end, 32)
createCombatToggle("Carry Mode", "SpeedToggle", false, function(v)
	ST2=v
	if FB["SpeedToggle"] then
		FB["SpeedToggle"].state=ST2
		FB["SpeedToggle"].ind.BC3=ST2 and TA or TTO
	end
end, 33)
createCombatToggle("Bat Aimbot", "BatAimbot", false, function(v) setBatAimbot(v) end, 34)
createToggle("Auto Play", "?", "?", false, function(v)
	if v then APE=true STAP() else SAP() end
end, 36)
createToggle("Anti Ragdoll", "?", "?", ARDE, function(v)
	ARDE=v if v then STARD() else SARD() end
end, 37)
createToggle("Auto Steal", "?", "?", ASE, function(v)
	ASE=v if v then STAS() else SAS() end
end, 38)
createSection("VISUALS", 50)
createToggle("Player ESP", "?", "?", ESPE, function(v)
	ESPE=v if v then enableESP() else disableESP() end
end, 51)
createToggle("Optimizer+XRay", "?", "?", OE, function(v)
	OE=v if v then enableOptimizer() else disableOptimizer() end
end, 52)
createSection("SETTINGS", 70)
createTextInput("FOV", fovValue, 30, 120, function(v) fovValue=v UFOV() end, 71, true)
createTextInput("Steal Duration", SD2, 0.1, 60, function(v) SD2=math.max(0.1, v) end, 72, true)
createTextInput("UI Scale", uiScaleValue, 0.5, 2.0, function(v)
	uiScaleValue=v
	local uiScale=ScreenGui:FindFirstChildOfClass("UIScale")
	if not uiScale then uiScale=IN("UIScale", ScreenGui) end
	uiScale.Scale=v/(isMobile and (vp.X>=1024 and 1.5 or 2.0) or 1.1)
end, 73, true)
createSection("KEYBINDS", 90)
createKeybindSetter("AutoLeft", KEYBINDS.AutoLeft.PC, KEYBINDS.AutoLeft.Controller, 91)
createKeybindSetter("AutoRight", KEYBINDS.AutoRight.PC, KEYBINDS.AutoRight.Controller, 92)
createKeybindSetter("SpeedToggle", KEYBINDS.SpeedToggle.PC, KEYBINDS.SpeedToggle.Controller, 93)
createKeybindSetter("BatAimbot", KEYBINDS.BatAimbot.PC, KEYBINDS.BatAimbot.Controller, 94)
createKeybindSetter("Float", KEYBINDS.Float.PC, KEYBINDS.Float.Controller, 95)
local SaveFrame=IN("Frame", Content)
SaveFrame.Size=UDN(1, 0, 0, s(52)) SaveFrame.BT=1
SaveFrame.BSP=0 SaveFrame.LO=200
local SaveBtn=IN("TextButton", SaveFrame)
SaveBtn.Size=UDN(1, -s(24), 0, s(44)) SaveBtn.Position=UDN(0, s(12), 0, s(4))
SaveBtn.BC3=TA SaveBtn.BSP=0 SaveBtn.Text="Save Config"
SaveBtn.TC3=C3W SaveBtn.Font=FA SaveBtn.TS=s(16)
IN("UICorner", SaveBtn).CR=U2(0, s(10))
SaveBtn.MouseButton1Click:Connect(function()
	SAVC()
	SaveBtn.Text="Saved!"
	td(1.5, function() SaveBtn.Text="Save Config" end)
end)
local dragging, dragStart, startPos2=false, nil, nil
Header.InputBegan:Connect(function(input)
	if input.UIT==Enum.UIT.MouseButton1 or input.UIT==Enum.UIT.Touch then
		dragging=true dragStart=input.Position startPos2=Main.Position
	end
end)
UISIC:Connect(function(input)
	if dragging and (input.UIT==Enum.UIT.MouseMovement or input.UIT==Enum.UIT.Touch) then
		local d=input.Position-dragStart
		Main.Position=UDN(startPos2.X.Scale, startPos2.X.Offset+d.X, startPos2.Y.Scale, startPos2.Y.Offset+d.Y)
	end
end)
UISIE:Connect(function(input)
	if input.UIT==Enum.UIT.MouseButton1 or input.UIT==Enum.UIT.Touch then dragging=false end
end)
local ToggleBtn=IN("TextButton", ScreenGui)
ToggleBtn.Size=UDN(0, s(80), 0, s(80))
ToggleBtn.Position=isMobile and UDN(1, -s(90), 0, s(10)) or UDN(0.05, 0, 0.5, -s(40))
ToggleBtn.BC3=TFB ToggleBtn.Text="A" ToggleBtn.TC3=TA
ToggleBtn.Font=FA ToggleBtn.TS=s(32) ToggleBtn.Active=true ToggleBtn.BSP=0
IN("UICorner", ToggleBtn).CR=U2(0, s(16))
local TBStroke=IN("UIStroke", ToggleBtn) TBStroke.Color=TOL TBStroke.Thickness=1
ToggleBtn.MouseButton1Click:Connect(function() Main.Visible=not Main.Visible end)
local FLOAT_W=isMobile and (vp.X>=1024 and s(95) or s(85)) or s(90)
local FLOAT_H=isMobile and (vp.X>=1024 and s(85) or s(75)) or s(80)
local FLOAT_ROWS=6
FloatingButtons=IN("Frame", ScreenGui)
FloatingButtons.Name="FloatingButtons"
FloatingButtons.Size=UDN(0, FLOAT_W+s(16), 0, (FLOAT_H+s(8))*FLOAT_ROWS+s(8))
FloatingButtons.Position=UDN(1, -(FLOAT_W+s(20)), 0.5, -mf(((FLOAT_H+s(8))*FLOAT_ROWS)/2))
FloatingButtons.BT=1 FloatingButtons.BSP=0
FloatingButtons.AutomaticSize=EAS
FloatingButtons.Visible=isMobile
local FloatLayout=IN("UIListLayout", FloatingButtons)
FloatLayout.Padding=U2(0, s(8)) FloatLayout.SortOrder=ESLO
FloatLayout.HA=Enum.HorizontalAlignment.Center
local function createFloatButton(name, topLabel, bottomLabel, order, callback)
	local Btn=IN("TextButton", FloatingButtons)
	Btn.Name=name Btn.Size=UDN(0, FLOAT_W, 0, FLOAT_H)
	Btn.BC3=TFB Btn.BSP=0 Btn.LO=order Btn.Text=""
	IN("UICorner", Btn).CR=U2(0, s(14))
	local BtnStroke=IN("UIStroke", Btn) BtnStroke.Color=TOL BtnStroke.Thickness=1
	local TopLbl=IN("TextLabel", Btn)
	TopLbl.Size=UDN(1, -s(8), 0, s(22)) TopLbl.Position=UDN(0, s(4), 0, s(10))
	TopLbl.BT=1 TopLbl.Text=topLabel
	TopLbl.TC3=TA TopLbl.Font=FA TopLbl.TS=s(15)
	local BotLbl=IN("TextLabel", Btn)
	BotLbl.Size=UDN(1, -s(8), 0, s(18)) BotLbl.Position=UDN(0, s(4), 0, s(33))
	BotLbl.BT=1 BotLbl.Text=bottomLabel
	BotLbl.TC3=TDT BotLbl.Font=FA BotLbl.TS=s(13)
	local dotSz=s(7)
	local Indicator=IN("Frame", Btn)
	Indicator.Size=UDN(0, dotSz, 0, dotSz) Indicator.Position=UDN(0.5, -dotSz/2, 1, -dotSz-s(6))
	Indicator.BC3=TTO Indicator.BSP=0
	IN("UICorner", Indicator).CR=U2(1, 0)
	FB[name]={button=Btn, indicator=Indicator, state=false, topLbl=TopLbl, botLbl=BotLbl}
	Btn.MouseButton1Click:Connect(function()
		callback(not FB[name].state)
	end)
	return FB[name]
end
createFloatButton("BatAimbot", "BAT", "AIMBOT", 1, function(state)
	setBatAimbot(state)
	FB["BatAimbot"].state=BAT
	FB["BatAimbot"].ind.BC3=BAT and TA or TTO
	UTU("Bat Aimbot", BAT)
end)
createFloatButton("AutoLeft", "AUTO", "LEFT", 2, function(state)
	setAutoLeft(state)
	FB["AutoLeft"].state=ALE
	FB["AutoLeft"].ind.BC3=ALE and TA or TTO
	if ALE then
		FB["AutoRight"].state=false
		FB["AutoRight"].ind.BC3=C3G
		FB["BatAimbot"].state=false
		FB["BatAimbot"].ind.BC3=C3G
	end
	UTU("Auto Left", ALE)
end)
createFloatButton("AutoRight", "AUTO", "RIGHT", 3, function(state)
	setAutoRight(state)
	FB["AutoRight"].state=ARE
	FB["AutoRight"].ind.BC3=ARE and TA or TTO
	if ARE then
		FB["AutoLeft"].state=false
		FB["AutoLeft"].ind.BC3=C3G
		FB["BatAimbot"].state=false
		FB["BatAimbot"].ind.BC3=C3G
	end
	UTU("Auto Right", ARE)
end)
createFloatButton("SpeedToggle", "CARRY", "MODE", 4, function(state)
	ST2=state
	FB["SpeedToggle"].state=ST2
	FB["SpeedToggle"].ind.BC3=ST2 and TA or TTO
	UTU("Carry Mode", ST2)
end)
createFloatButton("FloatBtn", "FLOAT", "MODE", 6, function(state)
	if state then startFloat() else stopFloat() end
	FB["FloatBtn"].state=FE
	FB["FloatBtn"].ind.BC3=FE and TA or TTO
	UTU("Float", FE)
end)
createFloatButton("AutoPlay", "AUTO", "PLAY", 5, function(state)
	if state then
		APE=true
		setAutoLeft(false) setAutoRight(false)
		FB["AutoLeft"].state=false FB["AutoLeft"].ind.BC3=C3G
		FB["AutoRight"].state=false FB["AutoRight"].ind.BC3=C3G
		STAP()
	else
		SAP()
	end
	FB["AutoPlay"].state=APE
	FB["AutoPlay"].ind.BC3=APE and TA or TTO
	UTU("Auto Play", APE)
end)
ts(function()
	tw(0.3)
	UTU("Aura Mode", GE)
	UTU("Spin Bot", SBE)
	UTU("Unwalk", UWE)
	UTU("Anti Ragdoll", ARDE)
	UTU("Auto Steal", ASE)
	UTU("Player ESP", ESPE)
	UTU("Optimizer+XRay", OE)
	UTU("Bat Aimbot", BAT)
	UTU("Auto Left", ALE)
	UTU("Auto Right", ARE)
	UTU("Carry Mode", ST2)
	UTU("Auto Play", APE)
	if FB["AutoPlay"] then
		FB["AutoPlay"].state=APE
		FB["AutoPlay"].ind.BC3=APE and TA or TTO
	end
	if FB["FloatBtn"] then
		FB["FloatBtn"].state=FE
		FB["FloatBtn"].ind.BC3=FE and TA or TTO
	end
	if FB["BatAimbot"] then
		FB["BatAimbot"].state=BAT
		FB["BatAimbot"].ind.BC3=BAT and TA or TTO
	end
	if FB["AutoLeft"] then
		FB["AutoLeft"].state=ALE
		FB["AutoLeft"].ind.BC3=ALE and TA or TTO
	end
	if FB["AutoRight"] then
		FB["AutoRight"].state=ARE
		FB["AutoRight"].ind.BC3=ARE and TA or TTO
	end
	if FB["SpeedToggle"] then
		FB["SpeedToggle"].state=ST2
		FB["SpeedToggle"].ind.BC3=ST2 and TA or TTO
	end
	if CarrySpeedInput then CarrySpeedInput.Text=sf("%.1f", CS2) end
	if GE then startGalaxy() end
	if ARDE then STARD() end
	if SBE then startSpinBot() end
	if ASE then STAS() end
	if OE then enableOptimizer() end
	if ESPE then enableESP() end
	if NSE then enableVoidMode() end
	if UWE and char then startUnwalk() end
	UFOV()
	if RadiusInput then RadiusInput.Text=ts2(SR2) end
	for _, name in ip({"AutoLeft", "AutoRight", "SpeedToggle", "BatAimbot"}) do
		SKBD(name)
	end
end)
UISIB:Connect(function(input, gpe)
	local isKB=input.UIT==Enum.UIT.Keyboard
	local isGP=input.UIT==Enum.UIT.Gamepad1 or input.UIT==Enum.UIT.Gamepad2
		or input.UIT==Enum.UIT.Gamepad3 or input.UIT==Enum.UIT.Gamepad4
	if gpe and isKB then return end
	if LFK then return end
	local kc=input.KeyCode
	if (isKB and KEYBINDS.SpeedToggle.PC and kc==KEYBINDS.SpeedToggle.PC) or
		(isGP and KEYBINDS.SpeedToggle.Controller and kc==KEYBINDS.SpeedToggle.Controller) then
		ST2=not ST2
		UTU("Carry Mode", ST2)
		local fb=FB["SpeedToggle"]
		if fb then fb.state=ST2 fb.ind.BC3=ST2 and TA or TTO end
		return
	end
	if (isKB and KEYBINDS.BatAimbot.PC and kc==KEYBINDS.BatAimbot.PC) or
		(isGP and KEYBINDS.BatAimbot.Controller and kc==KEYBINDS.BatAimbot.Controller) then
		local newState=not BAT
		setBatAimbot(newState)
		if FB["BatAimbot"] then
			FB["BatAimbot"].state=BAT
			FB["BatAimbot"].ind.BC3=BAT and TA or TTO
		end
		UTU("Bat Aimbot", BAT)
		return
	end
	if (isKB and KEYBINDS.AutoLeft.PC and kc==KEYBINDS.AutoLeft.PC) or
		(isGP and KEYBINDS.AutoLeft.Controller and kc==KEYBINDS.AutoLeft.Controller) then
		local newState=not ALE
		setAutoLeft(newState)
		UTU("Auto Left", ALE)
		if FB["AutoLeft"] then FB["AutoLeft"].state=ALE FB["AutoLeft"].ind.BC3=ALE and TA or TTO end
		return
	end
	if (isKB and KEYBINDS.AutoRight.PC and kc==KEYBINDS.AutoRight.PC) or
		(isGP and KEYBINDS.AutoRight.Controller and kc==KEYBINDS.AutoRight.Controller) then
		local newState=not ARE
		setAutoRight(newState)
		UTU("Auto Right", ARE)
		if FB["AutoRight"] then FB["AutoRight"].state=ARE FB["AutoRight"].ind.BC3=ARE and TA or TTO end
		return
	end
	if (isKB and KEYBINDS.ToggleGUI.PC and kc==KEYBINDS.ToggleGUI.PC) or
		(isGP and KEYBINDS.ToggleGUI.Controller and kc==KEYBINDS.ToggleGUI.Controller) then
		Main.Visible=not Main.Visible return
	end
	if (isKB and KEYBINDS.Float.PC and kc==KEYBINDS.Float.PC) or
		(isGP and KEYBINDS.Float.Controller and kc==KEYBINDS.Float.Controller) then
		if not FE then startFloat() else stopFloat() end
		if FB["Float"] then
			FB["Float"].state=FE
			FB["Float"].ind.BC3=FE and TA or TTO
		end
		return
	end
	if isKB and kc==EKC.Space then SH2=true end
end)
UISIE:Connect(function(input)
	if input.KeyCode==EKC.Space then SH2=false end
end)
UIS2.JumpRequest:Connect(function()
	if not SH2 then FJ=true SH2=true end
end)
RSH:Connect(function()
	if not char or not hum or not hrp then return end
	if SBE and spinBAV and char.Parent then spinBAV.AngularVelocity=V3(0, SPIN_SPEED, 0) end
	if not BAT and not (ALE or ARE) then
		local md=hum.MoveDirection
		if md.Mag>0.1 then
			local speed=ST2 and CS2 or NS2
			hrp.ALV=V3(md.X*speed, hrp.ALV.Y, md.Z*speed)
		end
	end
	if GE then
		UGF()
		if HPE and SH2 then doGalaxyHop() end
	end
end)
if LP.Character then setupChar(LP.Character) end
LP.CharacterAdded:Connect(function(c)
	tw(0.5)
	setupChar(c)
end)
