repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)') or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main')

print("Debug: Step1")

task.wait(3)

pcall(function()
    if game.Players.LocalPlayer.Team == nil then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
    end
end)

print("Debug: Step2")

_G.RefundStat = false
_G.CheckList = {
    ['MAX_LEVEL'] = true,
    ['GOT_GODHUMAN'] = true,
    ['GOT_LEVER'] = false,
    ['GOT_CDK'] = false,
    ['GOT_CDK_350'] = false,
    ['GOT_MIR+VH'] = false,
}

local _Request_ = http_request or request or HttpPost or (syn and syn.request)

-- Don't touch

_G.DoneList = {
    ['MAX_LEVEL'] = false,
    ['GOT_GODHUMAN'] = false,
    ['GOT_LEVER'] = false,
    ['GOT_CDK'] = false,
    ['GOT_CDK_350'] = false,
    ['GOT_MIR+VH'] = false,
}

_G.CheckedAll = false
_G.SuccessAll = false
_G.BananaIsloaded = false
_G.MaruHubIsloaded = false
_G.Valkyrie = false
_G.Mirror = false

-- Don't touch

-- ฟังก์ชันตรวจสอบความคืบหน้า
local CheckProgressAgainstGoals = function()
    local totalGoals = 0
    local completedGoals = 0

    for key, isWanted in pairs(_G.CheckList) do
        if isWanted then
            totalGoals = totalGoals + 1
            local done = _G.DoneList[key]

            if done then
                completedGoals = completedGoals + 1
                _G.MaruHubIsloaded = true
                -- print("✅ " .. key .. " (Done)")
            else
                _G.BananaIsloaded = true
                -- print("❌ " .. key .. " (Doing)")
            end
        end
    end

    -- print("😍 Progress: " .. completedGoals .. "/" .. totalGoals)
    if completedGoals == totalGoals then
        -- print("🎉 Success!")
        _G.SuccessAll = true
    else
        -- print("⏳ Doing...")
    end
end

-- ฟังก์ชันตรวจสอบ Melee
local MeleeCheck = function(...)
    local ResponeData
    if #{...} > 1 then
        ResponeData = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(...)
    else
        ResponeData = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(..., true)
    end
    if ResponeData == 1 or ResponeData == 2 then
        return true
    end
    return false
end

-- ลูปตรวจสอบเป้าหมาย
task.spawn(function()
    while true do task.wait(1)
        if not _G.SuccessAll then
            local level = game:GetService("Players").LocalPlayer.Data.Level.Value
            local godhuman = MeleeCheck("BuyGodhuman")
            local lever = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor")
            local inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")

            if level >= 2750 then
                _G.DoneList['MAX_LEVEL'] = true
            end
            if godhuman then
                _G.DoneList['GOT_GODHUMAN'] = true
            end
            if lever then
                _G.DoneList['GOT_LEVER'] = true
            end
            for i, v in pairs(inventory) do
                if v.Type == "Sword" then
                    if string.find(v.Name, 'Cursed Dual Katana') then
                        _G.DoneList['GOT_CDK'] = true
                        if v.Mastery >= 350 then
                            _G.DoneList['GOT_CDK_350'] = true
                        end
                    end
                end
                if v.Type == "Wear" then
                    if string.find(v.Name, "Valkyrie Helm") then
                        _G.Valkyrie = true
                    end
                end
                if v.Type == "Material" then
                    if string.find(v.Name, "Mirror Fractal") then
                        _G.Mirror = true
                    end
                end
            end
            if _G.Valkyrie and _G.Mirror then
                _G.DoneList['GOT_MIR+VH'] = true
            end
            CheckProgressAgainstGoals()
            _G.CheckedAll = true
        end
    end
end)

task.spawn(function()
    while true do task.wait(5)
        if _G.CheckedAll then
            if _G.BananaIsloaded then

                -- ใส่สคริปต์พร้อม Config Banana ที่นี่
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = "b25c888204c8c6571a5f70ac"
    getgenv().SettingFarm ={
        ["Hide UI"] = false,
        ["Reset Teleport"] = {
            ["Enabled"] = false,
            ["Delay Reset"] = 3,
            ["Item Dont Reset"] = {
                ["Fruit"] = {
                    ["Enabled"] = true,
                    ["All Fruit"] = true, 
                    ["Select Fruit"] = {
                        ["Enabled"] = false,
                        ["Fruit"] = {},
                    },
                },
            },
        },
        ["White Screen"] = false,
        ["Lock Fps"] = {
            ["Enabled"] = true,
            ["FPS"] = 12,
        },
        ["Get Items"] = {
            ["Saber"] = true,
            ["Godhuman"] =  true,
            ["Skull Guitar"] = false,
            ["Mirror Fractal"] = true,
            ["Cursed Dual Katana"] = true,
            ["Upgrade Race V2-V3"] = true,
            ["Auto Pull Lever"] = true,
            ["Shark Anchor"] = false, --- if have cdk,sg,godhuman
        },
        ["Get Rare Items"] = {
            ["Rengoku"] = false,
            ["Dragon Trident"] = false, 
            ["Pole (1st Form)"] = false,
            ["Gravity Blade"]  = false,
        },
        ["Farm Fragments"] = {
            ["Enabled"]  = true,
            ["Fragment"] = 50000,
        },
        ["Auto Chat"] = {
            ["Enabled"] = false,
            ["Text"] = "",
        },
        ["Auto Summon Rip Indra"] = true, --- auto buy haki and craft haki legendary 
        ["Select Hop"] = { -- 70% will have it
            ["Hop Server If Have Player Near"] = false, 
            ["Hop Find Rip Indra Get Valkyrie Helm or Get Tushita"] = false, 
            ["Hop Find Dough King Get Mirror Fractal"] = false,
            ["Hop Find Raids Castle [CDK]"] = false,
            ["Hop Find Cake Queen [CDK]"] = false,
            ["Hop Find Soul Reaper [CDK]"] = false,
            ["Hop Find Darkbeard [SG]"] = false,
            ["Hop Find Mirage [ Pull Lever ]"] = false,
        },
        ["Farm Mastery"] = {
            ["Melee"] = true,
            ["Sword"] = true,
        },
        ["Buy Haki"] = {
            ["Enhancement"] = true,
            ["Skyjump"] = true,
            ["Flash Step"] = true,
            ["Observation"] = true,
        },
        ["Sniper Fruit Shop"] = {
            ["Enabled"] = true, -- Auto Buy Fruit in Shop Mirage and Normal
            ["Fruit"] = {"Leopard-Leopard","Kitsune-Kitsune","Dragon-Dragon","Yeti-Yeti","Gas-Gas"},
        },
        ["Lock Fruit"] = {},
        ["Webhook"] = {
            ["Enabled"] = false,
            ["WebhookUrl"] = "",
        }
    }
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"))()
                break
            end
            if _G.MaruHubIsloaded then
                if game:GetService("Players").LocalPlayer.Data.StatRefunds.Value > 0 and _G.RefundStat then
                    print("Refund")
                    if game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value <= 1 then
                        local args = {
                            "redeemRefundPoints",
                            "Refund Points"
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))                        
                    end
                end

                -- ใส่สคริปต์พร้อม Config Maru ที่นี่
task.spawn(function()
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")

    local player = Players.LocalPlayer

    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    task.delay(180, function()
        if player:FindFirstChild("PlayerGui") and not player.PlayerGui:FindFirstChild("MaruGui") then
            TeleportService:Teleport(game.PlaceId, player)
        end
    end)
end)
_G.Team = "Pirate" -- Marine / Pirate
getgenv().Script_Mode = "Kaitun_Script"
_G.MainSettings = {
    ["EnabledHOP"] = true,
    ['FPSBOOST'] = true,
    ["FPSLOCKAMOUNT"] = 12,
    ['WhiteScreen'] = false,
    ['CloseUI'] = false,
    ["NotifycationExPRemove"] = true,
    ['AFKCheck'] = 150,
    ["LockFragments"] = 20000,
    ["LockFruitsRaid"] = {
            [1] = "Mammoth-Mammoth",
            [2] = "Dragon-Dragon",
            [3] = "Kitsune-Kitsune",
            [4] = "Leopard-Leopard",
            [5] = "Dough-Dough",
            [6] = "Yeti-Yeti",
    }
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
    ['FarmAfterMoney'] = 20000000
}
_G.Quests_Settings = {
    ['Rainbow_Haki'] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }
}
_G.Races_Settings = {
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = {
                ["Mink"] = false,
                ["Human"] = true,
                ["Fishman"] = false
            },
            ["RerollsWhenFragments"] = 20000
        }
    }
}
_G.Fruits_Settings = {
    ['Main_Fruits'] = {"Light-Light", "Dark-Dark", "Magma-Magma", "Buddha-Buddha"},
    ['Select_Fruits'] = {"Light-Light", "Dark-Dark", "Magma-Magma", "Buddha-Buddha"}
}
_G.Settings_Melee = {
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.SwordSettings = {
    ['Saber'] = true,
    ["Pole"] = false,
    ['MidnightBlade'] = false,
    ['Shisui'] = true,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = true,
    ['Rengoku'] = false,
    ['Canvander'] = false,
    ['BuddySword'] = false,
    ['TwinHooks'] = false,
    ['HallowScryte'] = false,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = true
}
_G.GunSettings = {
    ['Kabucha'] = false,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = false
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = true,
        ["ManualSettings"] = {
            "Saber",
            "Pole",
            "CursedDualKatana"
        }
    }
}
_G.Hop_Settings = {
    ["Find Tushita"] = false
}

getgenv().Key = "MARU-VO2N5-9LRH-6RFL-D0DCZ-8H4RP"
getgenv().id = "759079095438278687"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Private.lua"))()
                break
            end
        end
    end
end)

task.spawn(function()
    while true do task.wait(5)
        if _G.SuccessAll and _G.BananaIsloaded then
            print('Rejoining...')
            game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
            break
        end
    end
end)
