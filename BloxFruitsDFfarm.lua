local TeleportService = game:GetService("TeleportService")

local FarmInProgress = false

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

repeat wait() until game:GetService("Players")

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end

wait(1)

local player = game.Players.LocalPlayer
local HRP = player.Character.HumanoidRootPart

print("Executed")

-- if game.PlaceId == 4442272183 then

-- end

while task.wait(10) and not FarmInProgress do
	local isFruit = false

	for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
		if string.find(v.Name, "Fruit") then  
			if v:IsA("Tool") then
				isFruit = true
				FarmInProgress = true

				print("FoundFruit")

				HRP.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
			end
		end
	end  

	if not isFruit and not FarmInProgress then
		print("Could not find fruit")
		TeleportService:Teleport(game.PlaceId, player)
	end
end
