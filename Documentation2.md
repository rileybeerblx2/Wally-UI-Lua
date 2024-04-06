# UwUWare UI
This documentation is for UwUWare UI Credit To The Owner

## Booting the UwUWare UI Library
```lua
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX", true))()
```




## Creating a UwUWare UI Window
```lua
local Window = Library:CreateWindow"Window"
```

## Creating a Folder
```lua
Window:AddFolder"Folder"
```

## Creating a Label
```lua
Window:AddLabel({text = "Label"})
```

## Creating a Button
```lua
Window:AddButton({text = "Button", flag = "button", callback = function() print"pressed" end})
```

## Creating a Toggle
```lua
Window:AddToggle({text = "Toggle", flag = "toggle", state = false, callback = function(a) print(a) end})

Window:AddToggle({text = "Toggle", flag = "toggle1", state = true, callback = function(a) print(a) end})
```

## Creating a List
```lua
Window:AddList({text = "List", flag = "list", value = "Value", values = {"Value1", "Value2", "Value3", "Value4"}, callback = function(a) print(a) end})
```

## Creating a Textbox
```lua
Window:AddBox({text = "Box", flag = "box", value = "Value", callback = function(a) print(a) end})
```

## Creating a Slider
```lua
Window:AddSlider({text = "Slider", flag = "slider", value = 100, min = 20, max = 200, float = 0.3, callback = function(a) print(a) end})

Window:AddSlider({text = "Slider", flag = "slider1", value = 0, min = -50, max = 100, callback = function(a) print(a) end})
```

## Creating a keybind
```lua
Window:AddBind({text = "Bind", flag = "bind", key = "MouseButton1", callback = function() print"pressed" end}) --key can also be Enum.UserInputType.MouseButton1, instead of the name/string

Window:AddBind({text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a) if a then print"let go" else print"holding" end end}) --key can also be Enum.KeyCode.E, instead of the name/string

--Window:AddBind({text = "Toggle UI", key = "RightShift", callback = function() library:Close() end})
```

## Creating a Color Picker
```lua
Window:AddColor({text = "Color", flag = "color", color = Color3.fromRGB(255, 65, 65), callback = function(a) print(a) end})

Window:AddColor({text = "Color", flag = "color", color = {1, 0.2, 0.2}, callback = function(a) print(a) end})
```

## Add This For The UI To Work
```lua
Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])
```
