print("Hello")
--[[
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

repeat wait() until game:GetService("Players")

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end

print("Running DF Farm")
warn("Version: 0.0.4")

local FarmRunning = false

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "MePlayzGames#3667", 
	Text = "Exploiting is very not epik",
	Icon = "rbxassetid://7028540906"
})             

FruitList = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Revive-Revive",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Door-Door",
	"Quake-Quake",
	"Human-Human: Buddha",
	"String-String",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Paw-Paw",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon"
}

while wait (1) and not Teleporting do

	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Tool") then
			if string.find(v.Name, "Fruit") then
				print(v.Name)

				FarmRunning = true

				wait(0.5)
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
				v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame

				FarmRunning = false
			end
		end
	end
end
]]
