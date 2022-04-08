local player = game.Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")
local FarmInProgress = false

-- if game.PlaceId == 4442272183 then
   for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Fruit") then  
         print("Found") 
      end
   end       
-- end

while task.wait(10) do
   
end
