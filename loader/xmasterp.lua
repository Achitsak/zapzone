repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

local list = {
  [35789249] = "grow_a_garden",
  [5292947] = "all_star_tower_defense_x",
  [4372130] = "bloxfruits"
}

local target = game.CreatorId
local script = list[target]

if script and target ~= 35789249 then
  local url = string.format("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/%s.lua", script)
  loadstring(game:HttpGet(url))()
elseif script and target == 35789249 then
  
else
    print('not found scriptName!')
end

task.spawn(function()
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end)

_G.Is_Trade = false