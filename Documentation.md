# Wally UI
This documentation is for Wally UI Credit To The Owner

## Booting the Wally UI Library
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()
```




## Creating a Wally UI Window
```lua
local w = library:CreateWindow('Example')
```

## Creating a Section
```lua
w:Section('Top')
```

## Creating a Toggle
```lua
local t = w:Toggle('Example Toggle', {flag = "toggle1"})
```

## Creating a Button
```lua
local b = w:Button("Example Button", function()
   print(w.flags.toggle1)
end)
```

## Creating a Slider
```lua
local s = w:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
```

## Creating a Box
```lua
local box = w:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)
```

## Creating a Search Box
```lua
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
```

## Creating a Dropdown
```lua
w:Dropdown("locations", {
   location = _G;
   flag = "memes";
   list = {
       "riley?";
       "inf ammo?";
       'wally hub v2';
       'uhh';
       '...';
       'yo';
       'Aim locker?';
   }
}, function(new)
   warn(new)
   print(_G.memes)
end)
```

## Creating a Bind
```lua
w:Bind("Keybind", {
   flag = "Bind";
   kbonly = true;
   default = Enum.KeyCode.RightAlt;
}, function()
   game.Players.LocalPlayer.Character:Tap()
end)
```
