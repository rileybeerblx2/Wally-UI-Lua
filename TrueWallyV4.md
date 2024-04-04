# Wally UI V4
This documentation is for Wally UI Credit To The Owner

## Booting the Wally UI V4 Library
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacks/Utilities/main/UI.lua"))();
```




## Creating a Wally UI V4 Window
```lua
local autoFarmTab = library:CreateWindow("Auto Farm");
```

## Creating a Toggle
```lua
autoFarmTab:AddToggle({
});
```

## Creating a Slider
```lua
autoFarmTab:AddSlider({
});
```

## Creating a List
```lua
autoFarmTab:AddList({
    text = "Chosen Mob";
    flag = "chosen_mob";
    values = mobs[game.PlaceId];
});
```

## Creating a Tab
```lua
local miscTab = library:CreateWindow("Misc Cheats");
```

## Creating Button
```lua
local box = w:Box('WalkSpeed', {
miscTab:AddButton({
    text = "Go Invisible";
    callback = function()
        if (client.Character and client.Character:FindFirstChild("LowerTorso")) then
            local root = client.character.LowerTorso.Root:Clone();
            client.character.LowerTorso.Root:Destroy();
            root.Parent = client.character.LowerTorso;
        end;
    end;
});
```

## Required For The UI To Work
```lua
library:Init();
```
