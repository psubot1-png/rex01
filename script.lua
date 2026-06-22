-- Rexas Cheats - Modern WindUI Menu
-- Made by CJ! (Rexas developer)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Create ScreenGui for features (not UI)
local screenGui = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
screenGui.Name = "VIPFeatures"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Feature Attributes
screenGui:SetAttribute("FovEnabled", false)
screenGui:SetAttribute("EspShowUsername", true)
screenGui:SetAttribute("FullBrightEnabled", false)
screenGui:SetAttribute("AimbotEnabled", false)
screenGui:SetAttribute("FovSize", 150)
screenGui:SetAttribute("NightScreenEnabled", false)
screenGui:SetAttribute("EspShowHealth", true)
screenGui:SetAttribute("EspEnabled", false)
screenGui:SetAttribute("NoclipEnabled", false)
screenGui:SetAttribute("SkeletonEnabled", false)
screenGui:SetAttribute("AimbotActive", false)
screenGui:SetAttribute("AimbotStrength", 0.5)
screenGui:SetAttribute("AimbotKeybind", "K")

-- Function to load WindUI
local function createWindUIMenu()
    -- Try to load WindUI (assumes it's available in the game)
    local WindUI
    
    -- Try multiple ways to get WindUI
    local success, result = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/1nfinityDev/WindUI/main/main.lua"))()
    end)
    
    if not success then
        -- Fallback: Create a simple modern UI if WindUI isn't available
        return createFallbackModernUI()
    end
    
    WindUI = result
    
    -- Create main window
    local Window = WindUI:CreateWindow({
        Title = "REXAS CHEATS",
        Subtitle = "A REXAS SOFTWEARS PRODUCTION",
        Size = UDim2.new(0, 700, 0, 500),
        Position = UDim2.new(0.5, -350, 0.15, 0),
        ShowIcon = false,
        Theme = "Dark"
    })
    
    -- AIMBOT TAB
    local AimbotTab = Window:AddTab({
        Title = "🎯 Aimbot",
        Desc = "Targeting assistance"
    })
    
    local AimbotSection = AimbotTab:AddSection({
        Title = "Main Settings"
    })
    
    AimbotSection:AddToggle({
        Name = "Aimbot Enable",
        Desc = "Targets the nearest humanoid",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("AimbotEnabled", value)
        end
    })
    
    AimbotSection:AddKeybind({
        Name = "Keybind",
        Desc = "Press to set a custom toggle key",
        Key = "K",
        Callback = function(key)
            screenGui:SetAttribute("AimbotKeybind", key)
        end
    })
    
    AimbotSection:AddSlider({
        Name = "Strength",
        Desc = "How fast the camera locks on",
        Min = 0,
        Max = 1,
        Default = 0.5,
        Decimals = 2,
        Callback = function(value)
            screenGui:SetAttribute("AimbotStrength", value)
        end
    })
    
    local FOVSection = AimbotTab:AddSection({
        Title = "FOV Settings"
    })
    
    FOVSection:AddToggle({
        Name = "FOV Circle",
        Desc = "Show targeting range on screen",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("FovEnabled", value)
        end
    })
    
    FOVSection:AddSlider({
        Name = "FOV Size",
        Desc = "Radius of the targeting circle",
        Min = 50,
        Max = 500,
        Default = 150,
        Decimals = 0,
        Callback = function(value)
            screenGui:SetAttribute("FovSize", value)
        end
    })
    
    FOVSection:AddColorPicker({
        Name = "FOV Color",
        Desc = "Choose the circle color",
        Color = Color3.fromRGB(101, 255, 101),
        Callback = function(color)
            screenGui:SetAttribute("FovColor", color)
        end
    })
    
    -- ESP TAB
    local ESPTab = Window:AddTab({
        Title = "👁 ESP",
        Desc = "Player highlighting"
    })
    
    local ESPSection = ESPTab:AddSection({
        Title = "ESP Settings"
    })
    
    ESPSection:AddToggle({
        Name = "ESP Enable",
        Desc = "Highlight all players and NPCs",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("EspEnabled", value)
        end
    })
    
    ESPSection:AddToggle({
        Name = "Show Username",
        Desc = "Display name above characters",
        State = true,
        Callback = function(value)
            screenGui:SetAttribute("EspShowUsername", value)
        end
    })
    
    ESPSection:AddToggle({
        Name = "Show Health",
        Desc = "Display health bar above characters",
        State = true,
        Callback = function(value)
            screenGui:SetAttribute("EspShowHealth", value)
        end
    })
    
    -- NOCLIP TAB
    local NoclipTab = Window:AddTab({
        Title = "👻 Noclip",
        Desc = "Phase through objects"
    })
    
    local NoclipSection = NoclipTab:AddSection({
        Title = "Movement"
    })
    
    NoclipSection:AddToggle({
        Name = "Noclip",
        Desc = "Walk through walls and objects",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("NoclipEnabled", value)
        end
    })
    
    NoclipSection:AddButton({
        Name = "Fling",
        Desc = "Push all players away",
        Callback = function()
            print("Fling activated!")
        end
    })
    
    -- GRAPHICS TAB
    local GraphicsTab = Window:AddTab({
        Title = "🎨 Graphics",
        Desc = "Visual effects"
    })
    
    local GraphicsSection = GraphicsTab:AddSection({
        Title = "Effects"
    })
    
    GraphicsSection:AddToggle({
        Name = "Full Bright",
        Desc = "See everything even in the dark",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("FullBrightEnabled", value)
        end
    })
    
    GraphicsSection:AddToggle({
        Name = "Show Skeleton",
        Desc = "Display skeleton overlay on characters",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("SkeletonEnabled", value)
        end
    })
    
    GraphicsSection:AddToggle({
        Name = "Night Screen",
        Desc = "Green night vision overlay",
        State = false,
        Callback = function(value)
            screenGui:SetAttribute("NightScreenEnabled", value)
        end
    })
    
    local SkinSection = GraphicsTab:AddSection({
        Title = "Character"
    })
    
    SkinSection:AddColorPicker({
        Name = "Skin Color",
        Desc = "Change your character's skin color",
        Color = Color3.fromRGB(255, 255, 255),
        Callback = function(color)
            screenGui:SetAttribute("SkinColor", color)
        end
    })
    
    -- VENDING TAB
    local VendingTab = Window:AddTab({
        Title = "🏪 Vending",
        Desc = "Shop utilities"
    })
    
    local VendingSection = VendingTab:AddSection({
        Title = "Options"
    })
    
    VendingSection:AddButton({
        Name = "Find Vending Machine",
        Desc = "Teleport to nearest vending machine",
        Callback = function()
            print("Teleporting to vending machine...")
        end
    })
    
    VendingSection:AddLabel("Add your custom vending options here!")
    
    return Window
end

-- Fallback modern UI if WindUI unavailable
local function createFallbackModernUI()
    local gui = Instance.new("ScreenGui", Player:WaitForChild("PlayerGui"))
    gui.Name = "ModernRexasUI"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Main frame
    local mainFrame = Instance.new("Frame", gui)
    mainFrame.Name = "MainFrame"
    mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    mainFrame.BorderSizePixel = 0
    mainFrame.Size = UDim2.new(0, 700, 0, 500)
    mainFrame.Position = UDim2.new(0.5, -350, 0.15, 0)
    mainFrame.Visible = true
    
    -- Corner radius
    local corner = Instance.new("UICorner", mainFrame)
    corner.CornerRadius = UDim.new(0, 15)
    
    -- Stroke
    local stroke = Instance.new("UIStroke", mainFrame)
    stroke.Color = Color3.fromRGB(60, 60, 70)
    stroke.Thickness = 1
    
    -- Title bar
    local titleBar = Instance.new("Frame", mainFrame)
    titleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    titleBar.BorderSizePixel = 0
    titleBar.Size = UDim2.new(1, 0, 0, 50)
    
    local titleCorner = Instance.new("UICorner", titleBar)
    titleCorner.CornerRadius = UDim.new(0, 15)
    
    local titleText = Instance.new("TextLabel", titleBar)
    titleText.BackgroundTransparency = 1
    titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleText.TextSize = 18
    titleText.Font = Enum.Font.GothamBold
    titleText.Text = "REXAS CHEATS"
    titleText.Size = UDim2.new(1, -20, 1, 0)
    titleText.Position = UDim2.new(0, 10, 0, 0)
    titleText.TextXAlignment = Enum.TextXAlignment.Left
    
    local subtitleText = Instance.new("TextLabel", titleBar)
    subtitleText.BackgroundTransparency = 1
    subtitleText.TextColor3 = Color3.fromRGB(150, 150, 160)
    subtitleText.TextSize = 12
    subtitleText.Font = Enum.Font.Gotham
    subtitleText.Text = "A REXAS SOFTWEARS PRODUCTION"
    subtitleText.Size = UDim2.new(1, -20, 1, 0)
    subtitleText.Position = UDim2.new(0, 10, 0, 25)
    subtitleText.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Content area
    local content = Instance.new("Frame", mainFrame)
    content.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    content.BorderSizePixel = 0
    content.Size = UDim2.new(1, 0, 1, -50)
    content.Position = UDim2.new(0, 0, 0, 50)
    
    local contentCorner = Instance.new("UICorner", content)
    contentCorner.CornerRadius = UDim.new(0, 12)
    
    -- Content layout
    local layout = Instance.new("UIListLayout", content)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 15)
    
    local padding = Instance.new("UIPadding", content)
    padding.PaddingTop = UDim.new(0, 15)
    padding.PaddingBottom = UDim.new(0, 15)
    padding.PaddingLeft = UDim.new(0, 15)
    padding.PaddingRight = UDim.new(0, 15)
    
    -- Add section titles and toggles
    local function addSection(name, items)
        local sectionTitle = Instance.new("TextLabel", content)
        sectionTitle.BackgroundTransparency = 1
        sectionTitle.TextColor3 = Color3.fromRGB(100, 200, 100)
        sectionTitle.TextSize = 14
        sectionTitle.Font = Enum.Font.GothamBold
        sectionTitle.Text = name
        sectionTitle.Size = UDim2.new(1, 0, 0, 20)
        sectionTitle.TextXAlignment = Enum.TextXAlignment.Left
        sectionTitle.LayoutOrder = #content:GetChildren()
        
        for _, item in ipairs(items) do
            local itemFrame = Instance.new("Frame", content)
            itemFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
            itemFrame.BorderSizePixel = 0
            itemFrame.Size = UDim2.new(1, 0, 0, 40)
            itemFrame.LayoutOrder = #content:GetChildren()
            
            local itemCorner = Instance.new("UICorner", itemFrame)
            itemCorner.CornerRadius = UDim.new(0, 8)
            
            local label = Instance.new("TextLabel", itemFrame)
            label.BackgroundTransparency = 1
            label.TextColor3 = Color3.fromRGB(220, 220, 220)
            label.TextSize = 13
            label.Font = Enum.Font.Gotham
            label.Text = item
            label.Size = UDim2.new(1, -20, 1, 0)
            label.Position = UDim2.new(0, 10, 0, 0)
            label.TextXAlignment = Enum.TextXAlignment.Left
        end
    end
    
    addSection("🎯 AIMBOT", {"Aimbot Enable", "Keybind: K", "Strength: 50%"})
    addSection("👁 ESP", {"ESP Enable", "Show Username", "Show Health"})
    addSection("👻 NOCLIP", {"Noclip Enable", "Fling Players"})
    addSection("🎨 GRAPHICS", {"Full Bright", "Skeleton", "Night Vision"})
    addSection("🏪 VENDING", {"Find Machine", "Teleport"})
    
    -- Close button
    local closeBtn = Instance.new("TextButton", titleBar)
    closeBtn.BackgroundColor3 = Color3.fromRGB(220, 80, 80)
    closeBtn.BorderSizePixel = 0
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.TextSize = 16
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.Text = "✕"
    closeBtn.Size = UDim2.new(0, 40, 0, 40)
    closeBtn.Position = UDim2.new(1, -45, 0.5, -20)
    
    local btnCorner = Instance.new("UICorner", closeBtn)
    btnCorner.CornerRadius = UDim.new(0, 8)
    
    closeBtn.MouseButton1Click:Connect(function()
        mainFrame.Visible = false
    end)
    
    return gui
end

-- Initialize the menu
local success = pcall(createWindUIMenu)
if not success then
    createFallbackModernUI()
    print("Using fallback modern UI (WindUI not available)")
end

print("✓ Rexas Cheats loaded successfully!")

return screenGui

