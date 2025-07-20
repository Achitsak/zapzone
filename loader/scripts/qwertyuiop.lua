repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true

print('---------------- Executors ----------------')

getgenv().MasterConfig = {
    ['Main'] = { 
        ['Ginniefxm1544'] = 'Dragonfly',
        ['Corrisnz0735'] = 'Mimic Octopus',
        ['Gipsysro0999'] = 'Kitsune',
        ['Stacyqbp5898'] = 'Kappa',
        ['Dulcelzi3503'] = 'Red Fox'
    }
}

local alreadyLoaded = false

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
                        print(string.format("[MASTER] Username: %s, Target: %s", username, target))
                        break
                    end
                end
            elseif getgenv().MasterConfig.Main[player.LocalPlayer.Name] and username and target then -- check if main player and username and target
                while true do wait()
                    local api = request({
                        Url = "https://trade.zapzone.xyz/submit",
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },  
                        Body = httpservices:JSONEncode({
                            ['Username'] = username,
                            ['Target'] = target,
                            ['JobId'] = game.JobId,
                            ['LastCall'] = os.time()
                        })
                    })
                    if game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification") then
                        interact(game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification").Holder.Frame.Accept)
                    end
					_G.Is_Trade = true
                end
            else
                while true do task.wait(1)
                    local x, y = ownerPet()
                    if x and y then
                        _G.Is_Trade = true
                        local api = request({
                            Url = "https://trade.zapzone.xyz/get/"..x,
                            Method = "GET",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },  
                        })
                        local result = httpservices:JSONDecode(api.Body)
                        if result.Username then
                            local _timeout = (os.time() - result.LastCall) > 10 or nil
                            if result.JobId == game.JobId and game.Players:FindFirstChild(x) then
                                print("Found Master Active!")
                                while true do task.wait(1)
                                    for _, v in pairs(workspace.PetsPhysical:GetChildren()) do
                                        if v then
                                            local owner = v:GetAttribute('OWNER') 
                                            local uuid = v:GetAttribute("UUID")
                                            if owner == player.LocalPlayer.Name then
                                                local children = workspace.PetsPhysical:GetChildren()
                                                if children[_] then
                                                    for ii, vv in pairs(children[_]:GetChildren()) do
                                                        if vv:IsA('Model') then
                                                            local type_ = game:GetService("Players").LocalPlayer.PlayerGui.ActivePetUI.Frame.Main.ScrollingFrame[tostring(uuid)].PET_TYPE or ""
                                                            if type_ then
                                                                if type_.text == tostring(y) then
                                                                    print(string.format('Keep Up -> pet: %s, uuid: %s', type_.text, uuid))
                                                                    local args = {
                                                                        "UnequipPet",
                                                                        tostring(uuid)
                                                                    }
                                                                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer(unpack(args))
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    task.wait(2.5)
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
                                        local target = player:FindFirstChild(x)
                                        if bp:FindFirstChild(toolequip) then
                                            local tool = bp:FindFirstChild(toolequip)
                                            if tool then
                                                print("Equipping", tool)
                                                chr.Humanoid:EquipTool(tool)
                                                task.wait(1)
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
                                            task.wait(1)
                                        end
                                    else
                                        print("Trade Success")
                                        wait(5)
                                        player.LocalPlayer:Kick("Trade Success!")
                                        game:Shutdown()
                                    end
                                end
                            elseif not _timeout and not game.Players:FindFirstChild(x) then
                                print("Not In Server! Teleporting...")
                                print(result.JobId, game.JobId)
                                local success, error = pcall(function()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, result.JobId, game.Players.LocalPlayer)
                                end)
                                if not success then
                                    print(error)
                                    task.wait(50)
                                end
                                task.wait(10)
                            else
                                print("Master Is TimeOut!")
                            end
                        else
                            print("Not Found Master Active!")
                        end
                    else
                        print("Not Pet In Target!")
						if not alreadyLoaded then
							loadstring(game:HttpGet("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/grow_a_garden.lua"))()
							task.wait(60)
							alreadyLoaded = true
						end
						_G.Is_Trade = false -- Set Stat to False
						task.wait(10)
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)