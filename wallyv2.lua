
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()

local w = library:CreateWindow('Example')

w:Section('Top')

local t = w:Toggle('Example Toggle', {flag = "toggle1"})

local b = w:Button("Example Button", function()
   print(w.flags.toggle1)
end)

w:Section('Middle')
local old = workspace.CurrentCamera.FieldOfView
local s = w:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)

local b2 = w:Button('Reset FOV', function()
   s:Set(old)
end)

w:Section('Bottom')

local box = w:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)

w:SearchBox("gamers", {
   location = shared;
   flag = "memes";
   list = {
       "kiriot";
       "magikmanz";
       "gamer vision";
       "ironbrew";
       "wally";
       "firefox";
       "this is epic";
   }
}, warn)

w:Dropdown("locations", {
   location = _G;
   flag = "memes";
   list = {
       "jewelryin";
       "jewelryout";
       'bank';
       'gas';
       'prison';
       'crimbase1';
       'crimbase2';
   }
}, function(new)
   warn(new)
   print(_G.memes)
end)

w:Bind("Kill Player", {
   flag = "killbind";
   kbonly = true;
   default = Enum.KeyCode.RightAlt;
}, function()
   game.Players.LocalPlayer.Character:BreakJoints()
end)
