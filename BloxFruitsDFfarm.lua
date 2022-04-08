print("Running DF Farm")
warn("Version: 0.0.1")

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "MePlayzGames#3667", 
	Text = "Exploiting is very not epik",
	Icon = "rbxassetid://7028540906"
})

while wait (1) do
	for i,v in pairs(FruitList) do
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
	end
	
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Tool") then
			if string.find(v.Name, "Fruit") then
				print(v.Name)
			end
		end
	end
