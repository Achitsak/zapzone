print('this is loadstring for bloxfruits')
getgenv().Script_Mode = "Kaitun_Script"
_G.Team = "Pirate" -- Marine / Pirate
_G.EnabledBypassTP = true
_G.MainSettings = {
    ["EnabledHOP"] = true,
    ['FPSBOOST'] = true,
    ["FPSLOCKAMOUNT"] = 12,
    ['WhiteScreen'] = true,
    ['CloseUI'] = true,
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
    ['Main_Fruits'] = {'Dough-Dough'},
    ['Select_Fruits'] = {"Gas-Gas", "T-Rex-T-Rex", "Magma-Magma", "Dark-Dark"}
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
    ["Pole"] = true,
    ['MidnightBlade'] = false,
    ['Shisui'] = false,
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
        ["AutoSettings"] = false,
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Private.lua"))()
