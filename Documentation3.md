# UwUWare UI
This documentation is for UwUWare UI Credit To The Owner

## Booting the UwUWare UI Library
```lua
local UwUware = loadstring(game:HttpGet("https://raw.githubusercontent.com/OPENCUP/random-texts/main/ui.lua")()
```




## Creating a UwUWare UI Window
```lua
local window = UwUware:CreateWindow("test")
```

## Creating a Toggle
```lua
window:AddToggle {
    text = "Toggle Autoplayer",
    flag = "IsAnimeFan",
    state = true
}
```

## Creating a Bind
```lua
window:AddBind {
    key = Enum.KeyCode.Quote,
    text = "Close GUI",
    callback = function()
        UwUware:Close()
    end
}
```

## Creating a Button
```lua
window:AddButton {
    text = "Unload Script",
    callback = function()
        clear()

        UwUware.base:Destroy()
        UwUware = nil
    end
}
```

## Creating a Button 2
```lua
window:AddButton {
    text = "Copy Discord Invite",
    callback = function()
	      local code = game:HttpGet "https://stavratum.github.io/invite"
	      local invite = "discord.gg" .. "/" .. code

        setclipboard(invite)
    end
}
```

## For The UI To Work
```lua
UwUware:Init()
```

## Other Stuff
```lua
while true do wait(1)
    if UwUware == nil then break else
        for i,v in ipairs(connections) do
            v:Disconnect()
        end

        table.clear(connections)
    end

    local match = main()
    if not match then continue end

    match.MatchFolder.Destroying:Wait()
end
```
