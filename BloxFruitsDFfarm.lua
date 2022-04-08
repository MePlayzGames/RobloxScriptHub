if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

repeat wait() until game:GetService("Players")

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end

wait(1)

print("Executed")

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
	if v:IsA("Tool") then
		local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame				
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
			v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(.1)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
	end
end
