print("Running DF Farm")
warn("Version: 0.0.2")

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

while wait (1) do
	for i,v in pairs(FruitList) and game.PlaceID == 4442272183 do
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
	end
	
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("Tool") then
			if string.find(v.Name, "Fruit") then
				print(v.Name)
			end
		end
	end
end
