-- 🔒 Vérification du token AVANT tout
local secretToken = "MY_SECRET_INTERNAL_CODE"

if not isfile("zamasutoken.txt") then
    game.Players.LocalPlayer:Kick("Unauthorized access: token file missing.")
    return
end

local savedToken = readfile("zamasutoken.txt")

if savedToken ~= secretToken then
    game.Players.LocalPlayer:Kick("Unauthorized access: invalid token.")
    return
end

-- ✅ Token valide → maintenant on peut loader les services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

game.StarterGui:SetCore("SendNotification", {
    Title = "Zamasu Hub",
    Text = "Access Granted. Welcome!",
    Duration = 3
})

print("Zamasu Hub loaded successfully.")
-- Le reste de ton script continue ici


-- === ZAMASU HUB vFinal - Partie 1 : Initialisation & UI ===

-- === SERVICES ===
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local toggles = {}
local loopsStarted = false


-- Vérification Game ID
if game.GameId ~= 6325068386 then
	LocalPlayer:Kick("Game not supported.")
	return
end

-- Vérification plateforme (PC)
if UserInputService.TouchEnabled == false then
	LocalPlayer:Kick("Sorry, but PC is not supported yet.")
	return
end

-- Nettoyage ancien GUI
pcall(function() LocalPlayer.PlayerGui:FindFirstChild("ZamasuHub"):Destroy() end)

-- GUI Principal
local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "ZamasuHub"
gui.ResetOnSpawn = false

-- === FLOAT BUTTON ===
local floatBtn = Instance.new("ImageButton", gui)
floatBtn.Size = UDim2.new(0, 60, 0, 60)
floatBtn.Position = UDim2.new(0, 20, 0, 20)
floatBtn.BackgroundTransparency = 1
floatBtn.Image = "rbxassetid://86920699370582"
floatBtn.Visible = true
floatBtn.Active = true

-- === MENU PRINCIPAL (global) ===
menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0, 500, 0, 360)
menu.Position = UDim2.new(0.5, -250, 0.5, -180)
menu.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
menu.BorderSizePixel = 0
menu.Visible = false
menu.Active = true
menu.Draggable = true

Instance.new("UICorner", menu).CornerRadius = UDim.new(0, 20)
local stroke = Instance.new("UIStroke", menu)
stroke.Color = Color3.fromRGB(0, 255, 255)
stroke.Thickness = 2

-- === TITRE ===
local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "ZAMASU HUB // v5"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.new(1, 1, 1)

-- === BARRE DE SÉPARATION ===
local bar = Instance.new("Frame", menu)
bar.Size = UDim2.new(1, 0, 0, 2)
bar.Position = UDim2.new(0, 0, 0, 42)
bar.BackgroundColor3 = Color3.fromRGB(0, 255, 255)

-- === NAVIGATION (gauche) ===
nav = Instance.new("Frame", menu)
nav.Size = UDim2.new(0, 120, 1, -44)
nav.Position = UDim2.new(0, 0, 0, 44)
nav.BackgroundTransparency = 1

local navLayout = Instance.new("UIListLayout", nav)
navLayout.SortOrder = Enum.SortOrder.LayoutOrder
navLayout.Padding = UDim.new(0, 6)

-- === CONTENU DYNAMIQUE (droite) ===
content = Instance.new("Frame", menu)
content.Size = UDim2.new(1, -140, 1, -60)
content.Position = UDim2.new(0, 130, 0, 54)
content.BackgroundTransparency = 1

-- === TOGGLE LAYOUT DANS CONTENT ===
local toggleLayout = Instance.new("UIListLayout", content)
toggleLayout.Padding = UDim.new(0, 8)
toggleLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- === TABLE GLOBALE POUR LES TOGGLES ===
toggles = {}

-- === ACTION BOUTON FLOTTANT (affiche ou cache le menu) ===
floatBtn.MouseButton1Click:Connect(function()
	menu.Visible = not menu.Visible
end)

-- === ZAMASU HUB vFinal - Partie 2 : Toggles + Navigation ===

-- Fonction pour créer un toggle stylé
local function createToggle(labelText)
	local container = Instance.new("Frame")
	container.Size = UDim2.new(1, 0, 0, 36)
	container.BackgroundTransparency = 1

	local label = Instance.new("TextLabel", container)
	label.Size = UDim2.new(0.7, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = labelText
	label.Font = Enum.Font.Gotham
	label.TextSize = 16
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextXAlignment = Enum.TextXAlignment.Left

	local button = Instance.new("TextButton", container)
	button.Size = UDim2.new(0, 48, 0, 22)
	button.Position = UDim2.new(1, -60, 0.5, 0)
	button.AnchorPoint = Vector2.new(0, 0.5)
	button.BackgroundColor3 = Color3.fromRGB(70, 70, 90)
	button.BorderSizePixel = 0
	button.Text = "→"
	button.TextColor3 = Color3.fromRGB(200, 255, 255)
	button.Font = Enum.Font.GothamBold
	button.TextSize = 14
	Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

	-- Si déjà enregistré, on récupère l'état
	local state = false
	if toggles[labelText] then
		state = toggles[labelText]()
	end

	local function updateVisual()
		button.Text = state and "✓" or "→"
		button.BackgroundColor3 = state and Color3.fromRGB(0, 200, 120) or Color3.fromRGB(70, 70, 90)
	end

	updateVisual()

	button.MouseButton1Click:Connect(function()
		state = not state
		updateVisual()
	end)

	toggles[labelText] = function() return state end

	return container
end


-- Pages et leurs toggles
local pages = {
	["Farm"] = {"Auto Farm Beta", "TP to Ball", "Auto Gk", "Auto Quest Farm", "Auto Slide"},
	["Visuals"] = {"RTX Graphics", "Low Graphics"},
	["Fun"] = {"Infinite Spin", "Infinite Stamina"},
	["Settings"] = {"Reset Script", "Zamasu // Status"},
	["More"] = {},
	["SUS"] = {},
["Flow & Style"] = {},
["Custom Style"] = {},
	["Status"] = {}
}

-- Affichage dynamique
local function showPage(name)
	content:ClearAllChildren()

	local layout = Instance.new("UIListLayout", content)
	layout.Padding = UDim.new(0, 8)
	layout.SortOrder = Enum.SortOrder.LayoutOrder

	for _, toggleName in pairs(pages[name] or {}) do
		createToggle(toggleName).Parent = content
	end
end

-- Création navigation
for name in pairs(pages) do
	local tab = Instance.new("TextButton", nav)
	tab.Size = UDim2.new(1, -8, 0, 28)
	tab.Text = name
	tab.Font = Enum.Font.GothamBold
	tab.TextSize = 14
	tab.TextColor3 = Color3.fromRGB(255, 255, 255)
	tab.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
	Instance.new("UICorner", tab).CornerRadius = UDim.new(0, 8)

	tab.MouseButton1Click:Connect(function()
		showPage(name)
	end)
end

-- SERVICES
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer

local loopsStarted = false
local currentTeam, enemyGoal = nil, nil
local isShooting = false

local function isBallHeld()
	for _, p in ipairs(Players:GetPlayers()) do
		local v = p.Character and p.Character:FindFirstChild("Values")
		if v and v:FindFirstChild("HasBall") and v.HasBall.Value then
			return true
		end
	end
	return false
end

local function findBall()
	for _, obj in ipairs(workspace:GetDescendants()) do
		if obj:IsA("BasePart") and obj.Name:lower():find("ball") and obj.Transparency < 1 and not obj.Anchored then
			return obj
		end
	end
end

local function teleportToBall()
	local ball = findBall()
	if ball then
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if root then
			root.CFrame = CFrame.new(ball.Position + Vector3.new(0, 2, 0))
		end
	end
end

local function callSlide()
	local btn = LocalPlayer.PlayerGui:FindFirstChild("Mobile") and LocalPlayer.PlayerGui.Mobile:FindFirstChild("NoBall") and LocalPlayer.PlayerGui.Mobile.NoBall:FindFirstChild("Slide")
	if btn then
		for _, conn in pairs(getconnections(btn.MouseButton1Click)) do
			task.spawn(function()
				pcall(conn.Function)
			end)
		end
	end
end

local function followAndSlide(target)
	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root or not target or not target.Character then return end
	local enemyRoot = target.Character:FindFirstChild("HumanoidRootPart")
	if not enemyRoot then return end

	for i = 1, 10 do
		local offset = enemyRoot.CFrame.RightVector * -2
		root.CFrame = CFrame.new(enemyRoot.Position + Vector3.new(0, 1, 0) + offset, enemyRoot.Position)
		task.wait(0.015)
	end

	callSlide()
end

local function ghostSyncShoot()
	if isShooting then return end
	isShooting = true

	local char = LocalPlayer.Character
	local root = char and char:FindFirstChild("HumanoidRootPart")
	if not root or not enemyGoal then return end

	local shootCFrame = CFrame.new(enemyGoal.Position - enemyGoal.CFrame.LookVector * 6 + Vector3.new(0, 1, 0), enemyGoal.Position)
	local lookAt = shootCFrame.LookVector

	local ghost = Instance.new("Part")
	ghost.Size = Vector3.new(2, 2, 1)
	ghost.Transparency = 1
	ghost.Anchored = true
	ghost.CanCollide = false
	ghost.CFrame = root.CFrame
	ghost.Parent = workspace

	local tween = game:GetService("TweenService"):Create(ghost, TweenInfo.new(0.22, Enum.EasingStyle.Linear), {
		CFrame = shootCFrame
	})
	tween:Play()
	tween.Completed:Wait()

	root.CFrame = ghost.CFrame
	Camera.CFrame = CFrame.new(Camera.CFrame.Position, enemyGoal.Position)
	task.wait(0.045)

	local shootBtn = LocalPlayer.PlayerGui:FindFirstChild("Shoot", true)
	if shootBtn then
		local pos, size = shootBtn.AbsolutePosition, shootBtn.AbsoluteSize
		local VirtualInput = game:GetService("VirtualInputManager")
		VirtualInput:SendMouseButtonEvent(pos.X + size.X/2, pos.Y + size.Y/2, 0, true, game, 0)
		task.wait(0.05)
		VirtualInput:SendMouseButtonEvent(pos.X + size.X/2, pos.Y + size.Y/2, 0, false, game, 0)
	end

	task.delay(0.5, function()
		root.Velocity = lookAt * 20 + Vector3.new(0, 30, 0)
		isShooting = false
	end)

	ghost:Destroy()
end

local function startLoops()
	if loopsStarted then return end
	loopsStarted = true

	RunService.RenderStepped:Connect(function()
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		local values = char and char:FindFirstChild("Values")
		local hasBall = values and values:FindFirstChild("HasBall")

		if not (char and root and hasBall) then return end

		-- === DÉTECTION DE LA TEAM ===
		if LocalPlayer.Team and LocalPlayer.Team.Name ~= currentTeam then
			currentTeam = LocalPlayer.Team.Name
			local Goals = workspace:FindFirstChild("Goals")
			if Goals then
				if currentTeam == "Home" then
					enemyGoal = Goals:FindFirstChild("Home")
				elseif currentTeam == "Away" then
					enemyGoal = Goals:FindFirstChild("Away")
				end
			end
		end

		-- === AUTO FARM ===
		local autoFarm = toggles["Auto Farm Beta"]
		if autoFarm and autoFarm() then
			if hasBall.Value and enemyGoal then
				ghostSyncShoot()
			elseif not isBallHeld() then
				teleportToBall()
			else
				for _, p in ipairs(Players:GetPlayers()) do
					if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character then
						local ev = p.Character:FindFirstChild("Values")
						if ev and ev:FindFirstChild("HasBall") and ev.HasBall.Value then
							followAndSlide(p)
							break
						end
					end
				end
			end
		end

		-- === TP TO BALL ===
		local tpBall = toggles["TP to Ball"]
		if tpBall and tpBall() then
			if not hasBall.Value and not isBallHeld() then
				teleportToBall()
			end
		end

		-- === AUTO SLIDE ===
		local autoSlide = toggles["Auto Slide"]
		if autoSlide and autoSlide() then
			for _, p in ipairs(Players:GetPlayers()) do
				if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character then
					local enemyRoot = p.Character:FindFirstChild("HumanoidRootPart")
					local v = p.Character:FindFirstChild("Values")
					local has = v and v:FindFirstChild("HasBall")
					if enemyRoot and has and has.Value then
						root.CFrame = CFrame.new(enemyRoot.Position + Vector3.new(0, 3, 0))
						callSlide()
						break
					end
				end
			end
		end
	end)
end

-- === ACTIVATION INITIALE ===
task.wait(0.5)
showPage("Farm")
startLoops()

-- === INFINITE SPIN ===
task.spawn(function()
	while task.wait(2) do
		if toggles["Infinite Spin"] and toggles["Infinite Spin"]() then
			local player = Players.LocalPlayer
			if player and player:FindFirstChild("ProfileStats") and player.ProfileStats:FindFirstChild("Spins") then
				player.ProfileStats.Spins.Value = math.huge
			end
		end
	end
end)

-- === LOW GRAPHICS MODE ===
task.spawn(function()
	while task.wait(2) do
		if toggles["Low Graphics"] and toggles["Low Graphics"]() then
			Lighting.GlobalShadows = false
			Lighting.FogEnd = 1000000
			Lighting.Brightness = 1
			for _, v in ipairs(workspace:GetDescendants()) do
				if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") then
					v.Enabled = false
				end
			end
		end
	end
end)

-- === RTX GRAPHICS MODE ===
task.spawn(function()
	while task.wait(2) do
		if toggles["RTX Graphics"] and toggles["RTX Graphics"]() then
			Lighting.GlobalShadows = true
			Lighting.Brightness = 4
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			Lighting.Ambient = Color3.fromRGB(70, 70, 70)
			Lighting.FogColor = Color3.fromRGB(100, 100, 255)
			Lighting.FogStart = 100
			Lighting.FogEnd = 800
		end
	end
end)

-- === AUTO GK DIVE ===
task.spawn(function()
	while task.wait(0.2) do
		if toggles["Auto GK"] and toggles["Auto GK"]() then
			local char = LocalPlayer.Character
			local root = char and char:FindFirstChild("HumanoidRootPart")
			local values = char and char:FindFirstChild("Values")
			local isGK = values and values:FindFirstChild("Goalie")
			local hasBall = values and values:FindFirstChild("HasBall")

			if root and isGK and isGK.Value and hasBall and not hasBall.Value then
				local ball = findBall()
				if ball and (root.Position - ball.Position).Magnitude <= 30 and tick() - (getgenv().LastZamasuDive or 0) >= 0.4 then
					getgenv().LastZamasuDive = tick()

					root.CFrame = CFrame.new(ball.Position + Vector3.new(0, 5, 0))
					task.wait(0.05)

					local dive = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit")
						:WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Dive")
					dive:FireServer()

					local anim = Instance.new("Animation")
					anim.AnimationId = "rbxassetid://18694494525"
					local loaded = char:FindFirstChildOfClass("Humanoid"):LoadAnimation(anim)
					loaded:Play()

					local dir = ball.Velocity.Magnitude > 0 and ball.Velocity.Unit or Vector3.new()
					root.CFrame = CFrame.new(ball.Position + dir * 8)
				end
			end
		end
	end
end)

-- === ALWAYS SHOW BALL DIRECTION ===
task.spawn(function()
	while task.wait(1) do
		if toggles["Always Show Ball Direction"] and toggles["Always Show Ball Direction"]() then
			local ball = workspace:FindFirstChild("Ball") or findBall()
			if ball and not ball:FindFirstChild("ZamasuArrow") then
				local arrow = Instance.new("SelectionBox", ball)
				arrow.Name = "ZamasuArrow"
				arrow.Adornee = ball
				arrow.LineThickness = 0.1
				arrow.Color3 = Color3.fromRGB(255, 0, 0)
			end
		end
	end
end)

-- === INFINITE STAMINA ===
task.spawn(function()
	while task.wait(2) do
		if toggles["Infinite Stamina"] and toggles["Infinite Stamina"]() then
			local char = LocalPlayer.Character
			if char then
				local values = char:FindFirstChild("Values")
				local stam = values and values:FindFirstChild("Stamina")
				if stam then
					stam.Value = math.huge
				end
			end
		end
	end
end)

-- === AUTO QUEST FARM FINAL pour ZAMASU HUB ===
local lastQuestName = nil
local questCompleted = true
local lastTeleport = 0

task.spawn(function()
	while task.wait(0.5) do
		if toggles["Auto Quest Farm"] and toggles["Auto Quest Farm"]() and questCompleted then
			-- 1. Scanner uniquement les dailies
			local dailyQuests = {}
			local questsGui = LocalPlayer.PlayerGui:FindFirstChild("Quests")
			if questsGui then
				for _, v in ipairs(questsGui:GetDescendants()) do
					if v:IsA("TextLabel") and v.Visible and v.Text and #v.Text > 5 then
						local lowerText = v.Text:lower()
						if lowerText:find("goal") or lowerText:find("assist") or lowerText:find("ankle") or lowerText:find("save") or lowerText:find("steal") then
							table.insert(dailyQuests, v)
						end
					end
				end
			end

			if #dailyQuests == 0 then return end

			-- 2. Choisir une quête au hasard
			local chosenQuest = dailyQuests[math.random(1, #dailyQuests)]
			if not chosenQuest or not chosenQuest.Text then return end
			lastQuestName = chosenQuest.Text
			questCompleted = false

			-- 3. Exécuter en fonction de la quête choisie
			task.spawn(function()
				while toggles["Auto Quest Farm"] and toggles["Auto Quest Farm"]() and not questCompleted do
					local char = LocalPlayer.Character
					local root = char and char:FindFirstChild("HumanoidRootPart")
					if not char or not root then break end

					if lastQuestName:lower():find("goal") then
						if char:FindFirstChild("Values") and char.Values:FindFirstChild("HasBall") and char.Values.HasBall.Value then
							if not enemyGoal then
								local Goals = workspace:FindFirstChild("Goals")
								if Goals and LocalPlayer.Team then
									enemyGoal = Goals:FindFirstChild(LocalPlayer.Team.Name == "Home" and "Away" or "Home")
								end
							end
							if enemyGoal then
								local shootPos = enemyGoal.Position - enemyGoal.CFrame.LookVector * 6
								root.CFrame = CFrame.new(shootPos + Vector3.new(0,1,0))
								local shootBtn = LocalPlayer.PlayerGui:FindFirstChild("Shoot", true)
								if shootBtn then
									local pos = shootBtn.AbsolutePosition + shootBtn.AbsoluteSize / 2
									local VirtualInput = game:GetService("VirtualInputManager")
									VirtualInput:SendMouseButtonEvent(pos.X, pos.Y, 0, true, game, 0)
									task.wait(0.05)
									VirtualInput:SendMouseButtonEvent(pos.X, pos.Y, 0, false, game, 0)
								end
							end
						elseif tick() - lastTeleport > 1 then
							local ball = findBall()
							if ball then
								root.CFrame = CFrame.new(ball.Position + Vector3.new(0,2,0))
								lastTeleport = tick()
							end
						end
					elseif lastQuestName:lower():find("assist") then
						if tick() - lastTeleport > 2 then
							if enemyGoal then
								local posNearGoal = enemyGoal.Position + Vector3.new(math.random(-5,5), 1, math.random(-5,5))
								root.CFrame = CFrame.new(posNearGoal)
								lastTeleport = tick()
							end
						end
					elseif lastQuestName:lower():find("ankle") then
						for _, p in ipairs(Players:GetPlayers()) do
							if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character then
								local enemyRoot = p.Character:FindFirstChild("HumanoidRootPart")
								if enemyRoot and (enemyRoot.Position - root.Position).Magnitude <= 6 then
									local dribble = LocalPlayer.PlayerGui.Mobile.Ball:FindFirstChild("Dribble")
									if dribble and dribble.Visible then
										for _, conn in ipairs(getconnections(dribble.MouseButton1Click)) do
											pcall(conn.Function)
										end
									end
								end
							end
						end
					elseif lastQuestName:lower():find("save") then
						if char:FindFirstChild("Values") and char.Values:FindFirstChild("Goalie") and char.Values.Goalie.Value then
							local ball = findBall()
							if ball and (root.Position - ball.Position).Magnitude <= 30 and tick() - (getgenv().LastZamasuDive or 0) >= 0.4 then
								getgenv().LastZamasuDive = tick()
								root.CFrame = CFrame.new(ball.Position + Vector3.new(0,5,0))
								task.wait(0.05)

								local dive = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit")
									:WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Dive")
								dive:FireServer()
							end
						end
					elseif lastQuestName:lower():find("steal") then
						for _, p in ipairs(Players:GetPlayers()) do
							if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character then
								local ev = p.Character:FindFirstChild("Values")
								if ev and ev:FindFirstChild("HasBall") and ev.HasBall.Value then
									local enemyRoot = p.Character:FindFirstChild("HumanoidRootPart")
									if enemyRoot then
										for i = 1, 10 do
											root.CFrame = CFrame.new(enemyRoot.Position + enemyRoot.CFrame.RightVector * -2 + Vector3.new(0, 1, 0), enemyRoot.Position)
											task.wait()
										end
										local slide = LocalPlayer.PlayerGui.Mobile.NoBall:FindFirstChild("Slide")
										if slide then
											for _, conn in ipairs(getconnections(slide.MouseButton1Click)) do
												pcall(conn.Function)
											end
										end
										break
									end
								end
							end
						end
					end

					if not chosenQuest.Parent or not chosenQuest.Visible or chosenQuest.Text == "" then
						questCompleted = true
						break
					end

					task.wait(0.15)
				end
			end)
		end
	end
end)

-- === SETUP PAGE "MORE" ===
function setupMorePage()
	if content:FindFirstChild("ZamasuMoreSetup") then return end

	local flag = Instance.new("BoolValue")
	flag.Name = "ZamasuMoreSetup"
	flag.Parent = content

	local avatar = Instance.new("ImageLabel", content)
	avatar.Size = UDim2.new(0, 90, 0, 90)
	avatar.Position = UDim2.new(0, 12, 0, 12)
	avatar.BackgroundTransparency = 1
	avatar.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=495479627&width=420&height=420&format=png"
	Instance.new("UICorner", avatar).CornerRadius = UDim.new(1, 0)
	local glow = Instance.new("UIStroke", avatar)
	glow.Color = Color3.fromRGB(170, 0, 255)
	glow.Thickness = 3
	glow.Transparency = 0.2

	local robloxName = Instance.new("TextLabel", content)
	robloxName.Size = UDim2.new(1, -120, 0, 32)
	robloxName.Position = UDim2.new(0, 115, 0, 20)
	robloxName.BackgroundTransparency = 1
	robloxName.Font = Enum.Font.GothamBold
	robloxName.TextSize = 22
	robloxName.TextColor3 = Color3.fromRGB(255, 255, 255)
	robloxName.TextXAlignment = Enum.TextXAlignment.Left
	robloxName.Text = "Roblox : hakounamatata49"

	local discordName = Instance.new("TextLabel", content)
	discordName.Size = UDim2.new(1, -20, 0, 28)
	discordName.Position = UDim2.new(0, 12, 0, 115)
	discordName.BackgroundTransparency = 1
	discordName.Font = Enum.Font.GothamBold
	discordName.TextSize = 18
	discordName.TextColor3 = Color3.fromRGB(114, 137, 218)
	discordName.TextXAlignment = Enum.TextXAlignment.Left
	discordName.Text = "Discord : zamasu0428"

	local discordLink = Instance.new("TextLabel", content)
	discordLink.Size = UDim2.new(1, -60, 0, 24)
	discordLink.Position = UDim2.new(0, 12, 0, 150)
	discordLink.BackgroundTransparency = 1
	discordLink.Font = Enum.Font.Gotham
	discordLink.TextSize = 16
	discordLink.TextColor3 = Color3.fromRGB(200, 200, 200)
	discordLink.TextXAlignment = Enum.TextXAlignment.Left
	discordLink.Text = "Lien Discord : https://discord.gg/jCmSVAg4"

	local copyBtn = Instance.new("TextButton", content)
	copyBtn.Size = UDim2.new(0, 32, 0, 24)
	copyBtn.Position = UDim2.new(1, -40, 0, 150)
	copyBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	copyBtn.Text = "📋"
	copyBtn.Font = Enum.Font.GothamBold
	copyBtn.TextColor3 = Color3.new(1, 1, 1)
	copyBtn.TextSize = 16
	Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(1, 0)

	copyBtn.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/jCmSVAg4")
		copyBtn.Text = "✔️"
		task.delay(1.2, function()
			if copyBtn then copyBtn.Text = "📋" end
		end)
	end)
end

-- === SETUP PAGE FLOW & STYLE DROPDOWNS ===
function setupFlowStyleDropdowns()
    if content:FindFirstChild("FlowStyleLoaded") then return end

    local flag = Instance.new("BoolValue")
    flag.Name = "FlowStyleLoaded"
    flag.Parent = content

    local horizontalFrame = Instance.new("Frame", content)
    horizontalFrame.Size = UDim2.new(1, 0, 1, 0)
    horizontalFrame.BackgroundTransparency = 1

    local horizontalLayout = Instance.new("UIListLayout", horizontalFrame)
    horizontalLayout.FillDirection = Enum.FillDirection.Horizontal
    horizontalLayout.SortOrder = Enum.SortOrder.LayoutOrder
    horizontalLayout.Padding = UDim.new(0, 20)

    local function createList(titleText, itemList, valuePath)
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(0.5, -10, 1, 0)
        frame.BackgroundTransparency = 1

        local label = Instance.new("TextLabel", frame)
        label.Size = UDim2.new(1, 0, 0, 24)
        label.Position = UDim2.new(0, 0, 0, 0)
        label.BackgroundTransparency = 1
        label.Text = titleText .. ": ..."
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.GothamBold
        label.TextSize = 16
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Name = "DisplayLabel"

        local scroll = Instance.new("ScrollingFrame", frame)
        scroll.Size = UDim2.new(1, 0, 1, -28)
        scroll.Position = UDim2.new(0, 0, 0, 28)
        scroll.BackgroundTransparency = 1
        scroll.CanvasSize = UDim2.new(0, 0, 0, #itemList * 30)
        scroll.ScrollBarThickness = 4
        scroll.Name = "ScrollList"

        local layout = Instance.new("UIListLayout", scroll)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Padding = UDim.new(0, 4)

        for _, item in ipairs(itemList) do
            local btn = Instance.new("TextButton", scroll)
            btn.Size = UDim2.new(1, 0, 0, 28)
            btn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
            btn.Text = item
            btn.TextColor3 = Color3.new(1, 1, 1)
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 14
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)

            btn.MouseButton1Click:Connect(function()
                label.Text = titleText .. ": " .. item
                local stats = LocalPlayer:FindFirstChild("PlayerStats")
                if stats and stats:FindFirstChild(valuePath) then
                    stats[valuePath].Value = item
                end
            end)
        end

        return frame
    end

    local flows = {
        "Prodigy", "Emperor", "Awakened Genius", "Soul Harvester", "Dribbler",
        "Chameleon", "Demon Wings", "Wild Card", "Snake", "Crow", "Trap", "Monster",
        "King’s Instinct", "Gale Burst", "Ice", "Genius", "Puzzle", "Lightning"
    }

    local styles = {
        "Kaiser", "Kunigami", "Nel Isagi", "Sae",
        "Don Lorenzo", "Rin", "Yukimiya", "Shidou", "Karasu",
        "Reo", "Nagi", "Bachira", "Aiku", "King",
        "Kurona", "Gagamaru", "Otoya", "Hiori",
        "Chigiri", "Isagi"
    }

    local flowList = createList("Flow", flows, "Flow")
    local styleList = createList("Style", styles, "Style")

    flowList.Parent = horizontalFrame
    styleList.Parent = horizontalFrame
end

-- === SETUP HUD STATUS ZAMASU ===

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local gui = LocalPlayer:WaitForChild("PlayerGui")

local ZamasuStatusHUD = Instance.new("ScreenGui")
ZamasuStatusHUD.Name = "ZamasuStatusHUD"
ZamasuStatusHUD.IgnoreGuiInset = true
ZamasuStatusHUD.ResetOnSpawn = false
ZamasuStatusHUD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ZamasuStatusHUD.DisplayOrder = -1 -- pour Click-Through
ZamasuStatusHUD.Parent = gui

local frame = Instance.new("Frame", ZamasuStatusHUD)
frame.Size = UDim2.new(0, 280, 0, 170)
frame.Position = UDim2.new(0, 20, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
frame.BackgroundTransparency = 0.4
frame.Active = true
frame.Draggable = true

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)
local stroke = Instance.new("UIStroke", frame)
stroke.Color = Color3.fromRGB(0, 255, 255)
stroke.Thickness = 2

local layout = Instance.new("UIListLayout", frame)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 4)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 24)
title.BackgroundTransparency = 1
title.Text = "ZAMASU // STATUS"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.new(1, 1, 1)
title.LayoutOrder = 0

-- === LABELS ===
local statusLabels = {}
local infos = {"Hour", "FPS", "Ping", "Uptime", "Current Action"}

for _, name in ipairs(infos) do
    local label = Instance.new("TextLabel", frame)
    label.Size = UDim2.new(1, -10, 0, 20)
    label.BackgroundTransparency = 1
    label.Text = name .. ": ..."
    label.Font = Enum.Font.Gotham
    label.TextSize = 14
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextXAlignment = Enum.TextXAlignment.Left
    statusLabels[name] = label
end

-- === METRICS ===
local startTime = tick()
local lastTick = tick()
local frameCounter = 0

-- === MAIN LOOP ===
RunService.RenderStepped:Connect(function()
    frameCounter += 1
    if tick() - lastTick >= 1 then
        statusLabels["FPS"].Text = "FPS: " .. frameCounter
        frameCounter = 0
        lastTick = tick()
    end

    local t = os.date("*t")
    statusLabels["Hour"].Text = string.format("Hour: %02d:%02d:%02d", t.hour, t.min, t.sec)

    local stats = game:GetService("Stats")
    local network = stats:FindFirstChild("PerformanceStats")
    local ping = network and network:FindFirstChild("Ping")
    if ping then
        statusLabels["Ping"].Text = "Ping: " .. math.floor(ping:GetValue()) .. " ms"
    end

    local elapsed = math.floor(tick() - startTime)
    local h = math.floor(elapsed / 3600)
    local m = math.floor((elapsed % 3600) / 60)
    local s = elapsed % 60
    statusLabels["Uptime"].Text = string.format("Uptime: %02dh %02dm %02ds", h, m, s)

    -- === Current Action ===
    local action = "Idle"
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    local values = char and char:FindFirstChild("Values")
    local hasBall = values and values:FindFirstChild("HasBall")
    local goalie = values and values:FindFirstChild("Goalie")

    if toggles then
        if toggles["Auto Farm Beta"] and toggles["Auto Farm Beta"]() then
            if hasBall and hasBall.Value then
                action = "Scoring Goal"
            elseif not isBallHeld() then
                action = "Teleporting to Ball"
            else
                for _, p in ipairs(Players:GetPlayers()) do
                    if p ~= LocalPlayer and p.Team ~= LocalPlayer.Team and p.Character then
                        local v = p.Character:FindFirstChild("Values")
                        local hb = v and v:FindFirstChild("HasBall")
                        if hb and hb.Value then
                            action = "Stealing Ball from " .. p.Name
                            break
                        end
                    end
                end
            end
        elseif toggles["TP to Ball"] and toggles["TP to Ball"]() then
            action = "Teleporting to Ball"
        elseif toggles["Auto Slide"] and toggles["Auto Slide"]() then
            action = "Auto Sliding"
        elseif toggles["Auto GK"] and toggles["Auto GK"]() and goalie and goalie.Value then
            local ball = workspace:FindFirstChild("Ball") or findBall()
            if root and ball and (root.Position - ball.Position).Magnitude <= 30 then
                action = "Diving for Ball"
            else
                action = "GK Ready"
            end
        elseif toggles["Auto Quest Farm"] and toggles["Auto Quest Farm"]() then
            if getgenv().CurrentQuest == "score" then
                action = "Quest: Scoring Goals"
            elseif getgenv().CurrentQuest == "assist" then
                action = "Quest: Assisting"
            elseif getgenv().CurrentQuest == "save" then
                action = "Quest: Saving"
            elseif getgenv().CurrentQuest == "ankle" then
                action = "Quest: Breaking Ankles"
            elseif getgenv().CurrentQuest == "steal" then
                action = "Quest: Stealing"
            else
                action = "Quest: Farming"
            end
        end
    end

    statusLabels["Current Action"].Text = "Current Action: " .. action
end)