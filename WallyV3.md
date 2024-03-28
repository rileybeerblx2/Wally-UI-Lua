# Wally UI V3
This documentation is for Wally UI V3 Credit To The Owner

## Booting the Wally UI V3 Library
```lua
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
```




## Creating a Wally UI V3 Window
```lua
local w = library:CreateWindow("A") -- Creates the window
```

## Creating a Folder
```lua
local b = w:CreateFolder("B") -- Creates the folder(U will put here your buttons,etc)
```

## Creating a Label
```lua
b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 
```

## Creating a Button
```lua
b:Button("Button",function()
    print("wha?")
end)
```

## Creating a Toggle
```lua
b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)
```

## Creating a Slider
```lua
b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)
```

## Creating a Dropdown
```lua
b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)
```

## Creating a Bind
```lua
b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)
```

## Creating a Color Picker
```lua
b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)
```

## Creating a Box / Textbox
```lua
b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end)
```

## Creating Dropdowns
```lua
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
```

## Destroy GUI
```lua
b:DestroyGui()
```
