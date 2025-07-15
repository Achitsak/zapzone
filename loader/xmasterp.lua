repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

local list = {
  [35789249] = "grow_a_garden",
  [5292947] = "all_star_tower_defense_x",
  [4372130] = "bloxfruits"
}

local target = game.CreatorId
local script = list[target]

if script then
  local url = string.format("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/%s.lua", script)
  loadstring(game:HttpGet(url))()
else
    print('not found scriptName!')
end

task.spawn(function()
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")

    local PetUtilities = require(ReplicatedStorage.Modules.PetServices.PetUtilities)
    local ReplicationClass = require(ReplicatedStorage.Modules.ReplicationClass)

    local ActivePetsService = ReplicationClass.new("ActivePetsService_Replicator")

    local webhookUrl = "https://discord.com/api/webhooks/1365055466236940390/lh0KkVfZifrBP4LkG83ln3TdRWR9FrXe7M8n3zDM4qSfr7s08PbJr2tG0O82eW1ew2dd"

    local function sendDiscordMessage(message)
        local payload = {
            content = message
        }
        local jsonData = HttpService:JSONEncode(payload)

        local response = httprequest({
            Url = webhookUrl,
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

        while true do
            local success, dataResult = pcall(function()
                return ActivePetsService:YieldUntilData()
            end)

            if success then
                local dataTable = dataResult.Table
                if dataTable and dataTable.PlayerPetData then
                    local playerName = Players.LocalPlayer.Name
                    local playerPetData = dataTable.PlayerPetData[playerName]
                    if playerPetData then
                        local petInventory = playerPetData['PetInventory']
                        if petInventory and petInventory['Data'] then
                            local petData = petInventory['Data']
                            for _, v in pairs(petData) do
                                local baseWeight = v.PetData.BaseWeight or 1
                                local level = v.PetData.Level or 1
                                local weight = PetUtilities:CalculateWeight(baseWeight, level)
                                local petType = v.PetType or "Unknown"

                                if (weight > 5 and level <= 5) or (weight > 10) then
                                    local msg = string.format(
                                        "📝 ผู้เล่น: %s\nประเภทสัตว์: %s\nน้ำหนัก: %.2f\nอายุ (Level): %d",
                                        playerName, petType, weight, level
                                    )
                                    sendDiscordMessage(msg)
                                end
                            end
                        end
                    end
                end
            end
        task.wait(500)
    end
end)