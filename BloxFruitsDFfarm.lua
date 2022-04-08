local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")

local FarmInProgress = false

local player = game.Players.LocalPlayer
local HRP = player.Character.PrimaryPart

print("Executed")

-- if game.PlaceId == 4442272183 then
   for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Fruit") then  
         FarmInProgress = true
         print("FoundFruit")
  
         HRP.CFrame = v.CFrame
         
         repeat
            HRP.CFrame = v.CFrame
            wait()
         until HRP.CFrame = v.CFrame
         FarmInProgress = false
      end
   end       
-- end

while task.wait(10) and not FarmInProgress do
   local isFruit = false
   
   for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Fruit") then  
         isFruit = true
      end
   end  
   
   if not isFruit and not FarmInProgress then
      print("Could not find fruit")
      TeleportService:Teleport(game.PlaceId, player)
   end
end
