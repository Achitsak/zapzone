print('this is loadstring for all_star_tower_defense_x')
repeat task.wait(10) until game:IsLoaded()
getgenv().Script_Mode = "Kaitun_Script"
_G.Settings_Farm = {
    ["Start_Farm"] = true,
    ["Enabled_HOP"] = false,
    ["Enabled_Invisible"] = true,
    ["Enabled_FastFarm"] = true,
    ["Amount_FPS"] = 12,
    ["LOCK_FPS"] = true,
    ["WhiteScreen"] = false,
    ["Disabled_Gui"] = true,
}
_G.Quests_Settings = {
     ["V2Observation"] = false,
     ["V2Aramament"] = false,
     ["V2DarkLeg"] = false,
     ["FarmRaid"] = false
}
getgenv().Key = "MARU-VO2N5-9LRH-6RFL-D0DCZ-8H4RP"
getgenv().id = "759079095438278687"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MasterPClient/main/Private.lua"))()
