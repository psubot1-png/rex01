--// WindUI Modern Blue Template
--// Safe UI only (no cheat logic)

local WindUI = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/main_example.lua"
))()

--==================================================
-- Variables
--==================================================
local MenuCreator = "REXAS SOFTWARES"
local MenuDes = "Thanks for using Rexas and please join our Discord"
local DiscordLink = "https://discord.gg/your-invite"

--==================================================
-- Helpers
--==================================================
local function copyToClipboard(text)
    if typeof(setclipboard) == "function" then
        setclipboard(text)
    end
end

local function makeInfoParagraph(tab, title, desc)
    return tab:Paragraph({
        Title = title,
        Desc = desc
    })
end

--==================================================
-- Window
--==================================================
local Window = WindUI:CreateWindow({
    Title = MenuCreator,
    Icon = "wifi",
    Author = MenuDes,
    Folder = "ModernBlueWindUI",
    Size = UDim2.fromOffset(820, 520),
    Theme = "Dark",
    Resizable = true,
    HidePanelBackground = false,
    NewElements = false
})

-- Optional look tweaks, if your WindUI build supports them
pcall(function()
    Window:SetBackgroundTransparency(0.10)
end)

pcall(function()
    Window:SetBackgroundImageTransparency(0.08)
end)

--==================================================
-- Tabs
--==================================================
local Tabs = {}

Tabs.Info = Window:Tab({
    Title = "Info",
    Icon = "info",
    HideSearchBar = true,
    ScrollBarEnabled = true
})

Tabs.Settings = Window:Tab({
    Title = "Settings",
    Icon = "settings",
    HideSearchBar = true,
    ScrollBarEnabled = true
})

Tabs.Graphics = Window:Tab({
    Title = "Graphics",
    Icon = "zap",
    HideSearchBar = true,
    ScrollBarEnabled = true
})

Tabs.Misc = Window:Tab({
    Title = "Misc",
    Icon = "layout-grid",
    HideSearchBar = true,
    ScrollBarEnabled = true
})

--==================================================
-- INFO TAB
--==================================================
Tabs.Info:Section({
    Title = "Information",
    Opened = true,
    Box = true,
    TextXAlignment = "Center"
})

makeInfoParagraph(
    Tabs.Info,
    "Discord Link",
    DiscordLink
)

Tabs.Info:Button({
    Title = "Copy Discord Link",
    Desc = "Copies the link to your clipboard",
    Callback = function()
        copyToClipboard(DiscordLink)
        pcall(function()
            WindUI:Notify({
                Title = "Copied",
                Content = "Discord link copied to clipboard",
                Icon = "check",
                Duration = 2
            })
        end)
    end
})

Tabs.Info:Button({
    Title = "Open Discord Text",
    Desc = "Shows the current link in a text field",
    Callback = function()
        pcall(function()
            WindUI:Notify({
                Title = "Discord",
                Content = DiscordLink,
                Icon = "link",
                Duration = 3
            })
        end)
    end
})

Tabs.Info:Section({
    Title = "Status",
    Opened = true,
    Box = true,
    TextXAlignment = "Center"
})

Tabs.Info:Paragraph({
    Title = "Status",
    Desc = "Stable • Modern • Blue"
})

--==================================================
-- SETTINGS TAB
--==================================================
Tabs.Settings:Section({
    Title = "Window",
    Opened = true,
    Box = true
})

Tabs.Settings:Toggle({
    Title = "Smooth Animations",
    Desc = "UI polish effect",
    Flag = "SmoothAnimations",
    Value = true,
    Callback = function(state)
        print("Smooth Animations:", state)
    end
})

Tabs.Settings:Toggle({
    Title = "Compact Layout",
    Desc = "Uses a tighter spacing style",
    Flag = "CompactLayout",
    Value = false,
    Callback = function(state)
        print("Compact Layout:", state)
    end
})

Tabs.Settings:Slider({
    Title = "Transparency",
    Desc = "Window background transparency",
    Flag = "WindowTransparency",
    Step = 0.01,
    Value = {
        Min = 0,
        Max = 1,
        Default = 0.10
    },
    Callback = function(value)
        pcall(function()
            Window:SetBackgroundTransparency(value)
        end)
    end
})

Tabs.Settings:Slider({
    Title = "Image Transparency",
    Desc = "Window background image transparency",
    Flag = "WindowImageTransparency",
    Step = 0.01,
    Value = {
        Min = 0,
        Max = 1,
        Default = 0.08
    },
    Callback = function(value)
        pcall(function()
            Window:SetBackgroundImageTransparency(value)
        end)
    end
})

Tabs.Settings:Button({
    Title = "Reset Clipboard Link",
    Desc = "Restores the default Discord link",
    Callback = function()
        DiscordLink = "https://discord.gg/your-invite"
        pcall(function()
            WindUI:Notify({
                Title = "Reset",
                Content = "Discord link restored",
                Icon = "refresh-cw",
                Duration = 2
            })
        end)
    end
})

--==================================================
-- GRAPHICS TAB
--==================================================
Tabs.Graphics:Section({
    Title = "Visual Style",
    Opened = true,
    Box = true
})

Tabs.Graphics:Toggle({
    Title = "Blue Accent Mode",
    Desc = "Keeps the interface in a modern blue style",
    Flag = "BlueAccentMode",
    Value = true,
    Callback = function(state)
        print("Blue Accent Mode:", state)
    end
})

Tabs.Graphics:Toggle({
    Title = "Glass Feel",
    Desc = "Adds a softer modern look",
    Flag = "GlassFeel",
    Value = true,
    Callback = function(state)
        print("Glass Feel:", state)
    end
})

Tabs.Graphics:Slider({
    Title = "Corner Roundness",
    Desc = "Rounded UI styling",
    Flag = "CornerRoundness",
    Step = 1,
    Value = {
        Min = 0,
        Max = 24,
        Default = 14
    },
    Callback = function(value)
        print("Corner Roundness:", value)
    end
})

Tabs.Graphics:Slider({
    Title = "Shadow Strength",
    Desc = "Visual depth intensity",
    Flag = "ShadowStrength",
    Step = 1,
    Value = {
        Min = 0,
        Max = 100,
        Default = 60
    },
    Callback = function(value)
        print("Shadow Strength:", value)
    end
})

--==================================================
-- MISC TAB
--==================================================
Tabs.Misc:Section({
    Title = "Utilities",
    Opened = true,
    Box = true
})

Tabs.Misc:Button({
    Title = "Print Configuration",
    Desc = "Outputs the current variable values",
    Callback = function()
        print("MenuCreator =", MenuCreator)
        print("MenuDes =", MenuDes)
        print("DiscordLink =", DiscordLink)
    end
})

Tabs.Misc:Input({
    Title = "Menu Creator",
    Desc = "Shown in the title bar",
    Value = MenuCreator,
    Placeholder = "Enter creator name",
    Callback = function(value)
        MenuCreator = value
    end
})

Tabs.Misc:Input({
    Title = "Menu Description",
    Desc = "Shown under the title",
    Value = MenuDes,
    Placeholder = "Enter description",
    Callback = function(value)
        MenuDes = value
    end
})

Tabs.Misc:Input({
    Title = "Discord Link",
    Desc = "Copy/paste link field",
    Value = DiscordLink,
    Placeholder = "https://discord.gg/...",
    Callback = function(value)
        DiscordLink = value
    end
})

Tabs.Misc:Button({
    Title = "Copy Current Discord Link",
    Desc = "Copies the edited link",
    Callback = function()
        copyToClipboard(DiscordLink)
    end
})
