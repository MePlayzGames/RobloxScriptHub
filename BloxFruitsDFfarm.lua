local player = game.Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")

-- if game.PlaceId == 4442272183 then
   for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
      if string.find(v.Name, "Fruit") then  
         print("Found")
      else
         TeleportService:Teleport(game.PlaceId, player)
      end
   end       
-- end

   game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  end)
