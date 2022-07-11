getgenv().hidename = true
getgenv().dif = "Hard" 
getgenv().act = "namek_infinite"

repeat wait() until game:IsLoaded()

print("Version: 0.1.4")

task.spawn(function()
    while task.wait() and getgenv().hidename do
        pcall(function()
            if game.Players.LocalPlayer.Character.Head:FindFirstChild("_overhead") then
               workspace[game.Players.LocalPlayer.Name].Head["_overhead"]:Destroy()
            end
        end)
    end
end)

local function WatermarkForIdiotYter()
    game.StarterGui:SetCore("SendNotification", {
    Title = "MePlayzGames#0811"; 
    Text = "Shinobu = Best Waifu <3"; 
    Icon = ""; 
    Duration = 5; 
})
end

local function FindAvalibleRoom()
    repeat wait() until game:IsLoaded()
    
    game.Players.LocalPlayer.CharacterAppearanceLoaded:Wait()
    
    if workspace:FindFirstChild("_MAP_CONFIG") then
        if workspace._MAP_CONFIG.IsLobby.Value == true then
            for i, v in pairs(workspace._LOBBIES.Story:GetChildren()) do
                if v.Active.Value == false then
                    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Door.CFrame
                    print(v.Name)
                    return v.Name
                end
            end 
        end
    else
        return Nil
    end
end

local Room = FindAvalibleRoom()

local function join() -- join teleporter
    local args = {
        [1] = Room
    }

    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_join_lobby:InvokeServer(unpack(args))
end

local function start() -- starts the game
    if game:GetService("Workspace")["_wave_num"].Value < 1 then
        game:GetService("ReplicatedStorage").endpoints.client_to_server.vote_start:InvokeServer()
    end
end

local function start2() -- Starts the teleport
    local args = {
        [1] = Room
    }

    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_start_game:InvokeServer(unpack(args))
end

local function Create() -- Creates the map
    local args = {
        [1] = Room,
        [2] = getgenv().act, -- ex 1,2,3 (LOWER THE NUMBER IF ITS TOO HARD)
        [3] = true,
        [4] = getgenv().dif --Hard mode for da exp
    }

    game:GetService("ReplicatedStorage").endpoints.client_to_server.request_lock_level:InvokeServer(unpack(args))
end

local function teleport() -- Teleport back to the lobby
    game:GetService("ReplicatedStorage").endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
end

task.wait(.1)

print("I wuv Shinobu")

if workspace:FindFirstChild("_MAP_CONFIG") then
    if workspace._MAP_CONFIG.IsLobby.Value == false then --// If in Game
        repeat wait() until game:IsLoaded()
            WatermarkForIdiotYter()

            task.wait(20) -- Waits for the game remotes to load (This is needed)
            game.Players.LocalPlayer.PlayerGui.MessageGui.Enabled = false -- Removes the annoying error messages

            repeat
                task.wait(0.1)
            until workspace._DATA.GameFinished.Value == true

            task.wait(3)

            repeat
                task.wait(0.1)
            until game.Players.LocalPlayer.PlayerGui.ResultsUI.Holder.Visible == false
                start()
                task.wait(5) -- Waits for the thing to claim (Not rlly needed but good measures
                teleport()
    else
        repeat wait() until game:IsLoaded()
        
        while true do
            join()
            task.wait(1)

            Create()
            task.wait(1)

            start2()
            task.wait()

            WatermarkForIdiotYter()
            task.wait(5)
        end
    end
end
