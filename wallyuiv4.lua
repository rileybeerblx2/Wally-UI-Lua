local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacks/Utilities/main/UI.lua"))();

local autoFarmTab = library:CreateWindow("Auto Farm");

autoFarmTab:AddToggle({
});

autoFarmTab:AddSlider({
});

autoFarmTab:AddList({
    text = "Chosen Mob";
    flag = "chosen_mob";
    values = mobs[game.PlaceId];
});

library:Init();
