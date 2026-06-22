-- ============ WINDUI LIBRARY ============
local windUI = {}
windUI.__index = windUI

function windUI.new(title, size, position)
    local self = setmetatable({}, windUI)
    
    self.title = title or "windUI"
    self.size = size or UDim2.new(0, 550, 0, 400)
    self.position = position or UDim2.new(0.2, 0, 0.2, 0)
    self.minSize = UDim2.new(0, 450, 0, 300)
    self.maxSize = UDim2.new(0, 1000, 0, 800)
    self.isDragging = false
    self.isResizing = false
    self.dragStart = nil
    self.resizeStart = nil
    
    self:_createWindow()
    return self
end

function windUI:_createWindow()
    -- Main ScreenGui
    self.screenGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
    self.screenGui.Enabled = true
    self.screenGui.Name = "windUI_VIP"
    self.screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    self.screenGui.ResetOnSpawn = false
    
    -- Main Window Frame
    self.window = Instance.new("Frame", self.screenGui)
    self.window.Name = "MainWindow"
    self.window.Size = self.size
    self.window.Position = self.position
    self.window.BackgroundColor3 = Color3.fromRGB(19, 19, 21)
    self.window.BorderSizePixel = 0
    self.window.ClipsDescendants = true
    
    -- Corner
    local corner = Instance.new("UICorner", self.window)
    corner.CornerRadius = UDim.new(0, 10)
    
    -- Stroke
    local stroke = Instance.new("UIStroke", self.window)
    stroke.Color = Color3.fromRGB(51, 51, 57)
    stroke.Thickness = 1
    
    -- Title Bar
    self.titleBar = Instance.new("Frame", self.window)
    self.titleBar.Name = "TitleBar"
    self.titleBar.Size = UDim2.new(1, 0, 0, 42)
    self.titleBar.BackgroundColor3 = Color3.fromRGB(27, 27, 31)
    self.titleBar.BorderSizePixel = 0
    
    local titleCorner = Instance.new("UICorner", self.titleBar)
    titleCorner.CornerRadius = UDim.new(0, 10)
    
    -- Title Text
    self.titleLabel = Instance.new("TextLabel", self.titleBar)
    self.titleLabel.Size = UDim2.new(1, -100, 1, 0)
    self.titleLabel.Position = UDim2.new(0, 12, 0, 0)
    self.titleLabel.BackgroundTransparency = 1
    self.titleLabel.Text = self.title
    self.titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.titleLabel.TextSize = 15
    self.titleLabel.Font = Enum.Font.GothamBold
    self.titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Close Button
    local closeBtn = Instance.new("TextButton", self.titleBar)
    closeBtn.Name = "CloseBtn"
    closeBtn.Size = UDim2.new(0, 28, 0, 28)
    closeBtn.Position = UDim2.new(1, -36, 0.5, -14)
    closeBtn.BackgroundColor3 = Color3.fromRGB(221, 56, 56)
    closeBtn.BackgroundTransparency = 0.2
    closeBtn.BorderSizePixel = 0
    closeBtn.Text = "✕"
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.TextSize = 16
    closeBtn.Font = Enum.Font.GothamBold
    
    local closeBtnCorner = Instance.new("UICorner", closeBtn)
    closeBtnCorner.CornerRadius = UDim.new(0, 6)
    
    closeBtn.MouseButton1Click:Connect(function()
        self.window.Visible = false
    end)
    
    -- Content Frame
    self.content = Instance.new("Frame", self.window)
    self.content.Name = "Content"
    self.content.Size = UDim2.new(1, 0, 1, -42)
    self.content.Position = UDim2.new(0, 0, 0, 42)
    self.content.BackgroundColor3 = Color3.fromRGB(25, 25, 29)
    self.content.BorderSizePixel = 0
    
    -- Tabs Container
    self.tabsContainer = Instance.new("Frame", self.content)
    self.tabsContainer.Name = "TabsContainer"
    self.tabsContainer.Size = UDim2.new(0, 170, 1, 0)
    self.tabsContainer.BackgroundColor3 = Color3.fromRGB(27, 27, 31)
    self.tabsContainer.BorderSizePixel = 0
    
    local tabsLayout = Instance.new("UIListLayout", self.tabsContainer)
    tabsLayout.Padding = UDim.new(0, 4)
    tabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local tabsPadding = Instance.new("UIPadding", self.tabsContainer)
    tabsPadding.PaddingTop = UDim.new(0, 10)
    tabsPadding.PaddingLeft = UDim.new(0, 8)
    tabsPadding.PaddingRight = UDim.new(0, 8)
    tabsPadding.PaddingBottom = UDim.new(0, 10)
    
    -- Content Panels Container
    self.panelsContainer = Instance.new("Frame", self.content)
    self.panelsContainer.Name = "PanelsContainer"
    self.panelsContainer.Size = UDim2.new(1, -178, 1, 0)
    self.panelsContainer.Position = UDim2.new(0, 178, 0, 0)
    self.panelsContainer.BackgroundColor3 = Color3.fromRGB(23, 23, 27)
    self.panelsContainer.BorderSizePixel = 0
    
    -- Resize Handle (Bottom-Right)
    local resizeHandle = Instance.new("Frame", self.window)
    resizeHandle.Name = "ResizeHandle"
    resizeHandle.Size = UDim2.new(0, 15, 0, 15)
    resizeHandle.Position = UDim2.new(1, -15, 1, -15)
    resizeHandle.BackgroundColor3 = Color3.fromRGB(101, 255, 101)
    resizeHandle.BorderSizePixel = 0
    resizeHandle.Transparency = 0.7
    
    local resizeCorner = Instance.new("UICorner", resizeHandle)
    resizeCorner.CornerRadius = UDim.new(0, 4)
    
    -- Make resize handle visible on hover
    resizeHandle.MouseEnter:Connect(function()
        resizeHandle.Transparency = 0.3
    end)
    
    resizeHandle.MouseLeave:Connect(function()
        resizeHandle.Transparency = 0.7
    end)
    
    -- Drag & Resize Logic
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    
    self.titleBar.MouseButton1Down:Connect(function()
        self.isDragging = true
        self.dragStart = UserInputService:GetMouseLocation()
        self.windowPosStart = self.window.Position
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            self.isDragging = false
            self.isResizing = false
        end
    end)
    
    resizeHandle.MouseButton1Down:Connect(function()
        self.isResizing = true
        self.resizeStart = UserInputService:GetMouseLocation()
        self.windowSizeStart = self.window.Size
    end)
    
    RunService.RenderStepped:Connect(function()
        local mouse = UserInputService:GetMouseLocation()
        
        if self.isDragging then
            local delta = mouse - self.dragStart
            self.window.Position = self.windowPosStart + UDim2.new(0, delta.X, 0, delta.Y)
        end
        
        if self.isResizing then
            local delta = mouse - self.resizeStart
            local newWidth = self.windowSizeStart.X.Offset + delta.X
            local newHeight = self.windowSizeStart.Y.Offset + delta.Y
            
            newWidth = math.max(self.minSize.X.Offset, math.min(self.maxSize.X.Offset, newWidth))
            newHeight = math.max(self.minSize.Y.Offset, math.min(self.maxSize.Y.Offset, newHeight))
            
            self.window.Size = UDim2.new(0, newWidth, 0, newHeight)
        end
    end)
    
    self.tabs = {}
    self.panels = {}
end

function windUI:CreateTab(tabName, layoutOrder)
    local tab = {}
    tab.name = tabName
    tab.layoutOrder = layoutOrder or #self.tabs + 1
    
    -- Tab Button
    local tabBtn = Instance.new("Frame", self.tabsContainer)
    tabBtn.Name = tabName .. "Btn"
    tabBtn.Size = UDim2.new(1, 0, 0, 38)
    tabBtn.BackgroundColor3 = Color3.fromRGB(33, 33, 39)
    tabBtn.BorderSizePixel = 0
    tabBtn.LayoutOrder = tab.layoutOrder
    
    local tabCorner = Instance.new("UICorner", tabBtn)
    tabCorner.CornerRadius = UDim.new(0, 6)
    
    local tabStroke = Instance.new("UIStroke", tabBtn)
    tabStroke.Color = Color3.fromRGB(51, 51, 57)
    tabStroke.Thickness = 0.5
    
    -- Indicator
    tab.indicator = Instance.new("Frame", tabBtn)
    tab.indicator.Name = "Indicator"
    tab.indicator.Size = UDim2.new(0, 3, 0.6, 0)
    tab.indicator.Position = UDim2.new(0, 0, 0.2, 0)
    tab.indicator.BackgroundColor3 = Color3.fromRGB(101, 255, 101)
    tab.indicator.BorderSizePixel = 0
    tab.indicator.Visible = false
    
    local indCorner = Instance.new("UICorner", tab.indicator)
    indCorner.CornerRadius = UDim.new(0, 2)
    
    -- Tab Label
    local tabLabel = Instance.new("TextLabel", tabBtn)
    tabLabel.Name = "Label"
    tabLabel.Size = UDim2.new(1, -12, 1, 0)
    tabLabel.Position = UDim2.new(0, 12, 0, 0)
    tabLabel.BackgroundTransparency = 1
    tabLabel.Text = tabName
    tabLabel.TextColor3 = Color3.fromRGB(151, 151, 161)
    tabLabel.TextSize = 13
    tabLabel.Font = Enum.Font.GothamBold
    tabLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Panel
    local panel = Instance.new("ScrollingFrame", self.panelsContainer)
    panel.Name = tabName .. "Panel"
    panel.Size = UDim2.new(1, 0, 1, 0)
    panel.BackgroundColor3 = Color3.fromRGB(23, 23, 27)
    panel.BorderSizePixel = 0
    panel.ScrollBarThickness = 4
    panel.ScrollBarImageColor3 = Color3.fromRGB(51, 51, 57)
    panel.CanvasSize = UDim2.new(0, 0, 0, 0)
    panel.AutomaticCanvasSize = Enum.AutomaticSize.Y
    panel.Visible = false
    
    local panelLayout = Instance.new("UIListLayout", panel)
    panelLayout.Padding = UDim.new(0, 6)
    panelLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    local panelPadding = Instance.new("UIPadding", panel)
    panelPadding.PaddingTop = UDim.new(0, 10)
    panelPadding.PaddingLeft = UDim.new(0, 10)
    panelPadding.PaddingRight = UDim.new(0, 10)
    panelPadding.PaddingBottom = UDim.new(0, 10)
    
    -- Tab Click Handler
    tabBtn.MouseButton1Click:Connect(function()
        for _, p in pairs(self.panelsContainer:GetChildren()) do
            if p:IsA("ScrollingFrame") then
                p.Visible = false
            end
        end
        
        for _, t in pairs(self.tabsContainer:GetChildren()) do
            if t:IsA("Frame") and t:FindFirstChild("Indicator") then
                t:FindFirstChild("Indicator").Visible = false
                if t:FindFirstChild("Label") then
                    t:FindFirstChild("Label").TextColor3 = Color3.fromRGB(151, 151, 161)
                end
            end
        end
        
        panel.Visible = true
        tab.indicator.Visible = true
        tabLabel.TextColor3 = Color3.fromRGB(101, 255, 101)
    end)
    
    tab.panel = panel
    tab.elements = {}
    tab.layoutOrder = 0
    
    table.insert(self.tabs, tab)
    self.panels[tabName] = tab
    
    return tab
end

function windUI:GetTab(tabName)
    return self.panels[tabName]
end

function windUI:ActivateTab(tabName)
    local tab = self.panels[tabName]
    if tab then
        for _, p in pairs(self.panelsContainer:GetChildren()) do
            if p:IsA("ScrollingFrame") then
                p.Visible = false
            end
        end
        
        for _, t in pairs(self.tabsContainer:GetChildren()) do
            if t:IsA("Frame") and t:FindFirstChild("Indicator") then
                t:FindFirstChild("Indicator").Visible = false
                if t:FindFirstChild("Label") then
                    t:FindFirstChild("Label").TextColor3 = Color3.fromRGB(151, 151, 161)
                end
            end
        end
        
        tab.panel.Visible = true
        tab.indicator.Visible = true
        tab.indicator.Parent:FindFirstChild("Label").TextColor3 = Color3.fromRGB(101, 255, 101)
    end
end

function windUI:GetScreenGui()
    return self.screenGui
end

-- Tab Methods
local TabMethods = {}

function TabMethods:AddToggle(label, description, default, callback)
    self.layoutOrder = self.layoutOrder + 1
    
    local container = Instance.new("Frame", self.panel)
    container.Name = label
    container.Size = UDim2.new(1, 0, 0, 47)
    container.BackgroundColor3 = Color3.fromRGB(33, 33, 39)
    container.BorderSizePixel = 0
    container.LayoutOrder = self.layoutOrder
    
    local corner = Instance.new("UICorner", container)
    corner.CornerRadius = UDim.new(0, 6)
    
    local stroke = Instance.new("UIStroke", container)
    stroke.Color = Color3.fromRGB(51, 51, 57)
    stroke.Thickness = 0.5
    
    local labelText = Instance.new("TextLabel", container)
    labelText.Name = "Label"
    labelText.Size = UDim2.new(1, -70, 0, 18)
    labelText.Position = UDim2.new(0, 14, 0, 7)
    labelText.BackgroundTransparency = 1
    labelText.Text = label
    labelText.TextColor3 = Color3.fromRGB(231, 231, 236)
    labelText.TextSize = 14
    labelText.Font = Enum.Font.GothamBold
    labelText.TextXAlignment = Enum.TextXAlignment.Left
    
    local descText = Instance.new("TextLabel", container)
    descText.Name = "Description"
    descText.Size = UDim2.new(1, -70, 0, 14)
    descText.Position = UDim2.new(0, 14, 0, 25)
    descText.BackgroundTransparency = 1
    descText.Text = description or ""
    descText.TextColor3 = Color3.fromRGB(91, 91, 101)
    descText.TextSize = 11
    descText.Font = Enum.Font.GothamRegular
    descText.TextXAlignment = Enum.TextXAlignment.Left
    
    local toggleSwitch = Instance.new("Frame", container)
    toggleSwitch.Name = "ToggleSwitch"
    toggleSwitch.Size = UDim2.new(0, 42, 0, 22)
    toggleSwitch.Position = UDim2.new(1, -54, 0.5, -11)
    toggleSwitch.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    toggleSwitch.BorderSizePixel = 0
    
    local switchCorner = Instance.new("UICorner", toggleSwitch)
    switchCorner.CornerRadius = UDim.new(0, 11)
    
    local knob = Instance.new("Frame", toggleSwitch)
    knob.Name = "Knob"
    knob.Size = UDim2.new(0, 18, 0, 18)
    knob.Position = UDim2.new(0, 2, 0.5, -9)
    knob.BackgroundColor3 = Color3.fromRGB(201, 201, 201)
    knob.BorderSizePixel = 0
    
    local knobCorner = Instance.new("UICorner", knob)
    knobCorner.CornerRadius = UDim.new(0, 9)
    
    local toggled = default or false
    
    local function updateToggle(state)
        toggled = state
        if toggled then
            knob.Position = UDim2.new(0, 22, 0.5, -9)
            toggleSwitch.BackgroundColor3 = Color3.fromRGB(101, 255, 101)
        else
            knob.Position = UDim2.new(0, 2, 0.5, -9)
            toggleSwitch.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
        end
        if callback then
            callback(toggled)
        end
    end
    
    container.MouseButton1Click:Connect(function()
        updateToggle(not toggled)
    end)
    
    local element = {
        container = container,
        getValue = function() return toggled end,
        setValue = function(_, val) updateToggle(val) end
    }
    
    table.insert(self.elements, element)
    return element
end

function TabMethods:AddSlider(label, description, minVal, maxVal, default, callback)
    self.layoutOrder = self.layoutOrder + 1
    
    local container = Instance.new("Frame", self.panel)
    container.Name = label
    container.Size = UDim2.new(1, 0, 0, 60)
    container.BackgroundColor3 = Color3.fromRGB(33, 33, 39)
    container.BorderSizePixel = 0
    container.LayoutOrder = self.layoutOrder
    
    local corner = Instance.new("UICorner", container)
    corner.CornerRadius = UDim.new(0, 6)
    
    local stroke = Instance.new("UIStroke", container)
    stroke.Color = Color3.fromRGB(51, 51, 57)
    stroke.Thickness = 0.5
    
    local labelText = Instance.new("TextLabel", container)
    labelText.Name = "Label"
    labelText.Size = UDim2.new(1, -60, 0, 18)
    labelText.Position = UDim2.new(0, 14, 0, 7)
    labelText.BackgroundTransparency = 1
    labelText.Text = label
    labelText.TextColor3 = Color3.fromRGB(231, 231, 236)
    labelText.TextSize = 14
    labelText.Font = Enum.Font.GothamBold
    labelText.TextXAlignment = Enum.TextXAlignment.Left
    
    local valueText = Instance.new("TextLabel", container)
    valueText.Name = "Value"
    valueText.Size = UDim2.new(0, 50, 0, 18)
    valueText.Position = UDim2.new(1, -64, 0, 7)
    valueText.BackgroundTransparency = 1
    valueText.Text = tostring(default or minVal)
    valueText.TextColor3 = Color3.fromRGB(101, 255, 101)
    valueText.TextSize = 12
    valueText.Font = Enum.Font.GothamBold
    valueText.TextXAlignment = Enum.TextXAlignment.Right
    
    local descText = Instance.new("TextLabel", container)
    descText.Name = "Description"
    descText.Size = UDim2.new(1, -28, 0, 14)
    descText.Position = UDim2.new(0, 14, 0, 25)
    descText.BackgroundTransparency = 1
    descText.Text = description or ""
    descText.TextColor3 = Color3.fromRGB(91, 91, 101)
    descText.TextSize = 11
    descText.Font = Enum.Font.GothamRegular
    descText.TextXAlignment = Enum.TextXAlignment.Left
    
    local sliderBg = Instance.new("Frame", container)
    sliderBg.Name = "SliderBg"
    sliderBg.Size = UDim2.new(1, -28, 0, 4)
    sliderBg.Position = UDim2.new(0, 14, 0, 43)
    sliderBg.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    sliderBg.BorderSizePixel = 0
    
    local sliderCorner = Instance.new("UICorner", sliderBg)
    sliderCorner.CornerRadius = UDim.new(0, 2)
    
    local sliderFill = Instance.new("Frame", sliderBg)
    sliderFill.Name = "Fill"
    sliderFill.BackgroundColor3 = Color3.fromRGB(101, 255, 101)
    sliderFill.BorderSizePixel = 0
    
    local fillCorner = Instance.new("UICorner", sliderFill)
    fillCorner.CornerRadius = UDim.new(0, 2)
    
    local currentValue = default or minVal
    
    local function updateSlider(percentage)
        percentage = math.max(0, math.min(1, percentage))
        sliderFill.Size = UDim2.new(percentage, 0, 1, 0)
        currentValue = minVal + (maxVal - minVal) * percentage
        valueText.Text = tostring(math.round(currentValue))
        if callback then
            callback(currentValue)
        end
    end
    
    local percentage = (currentValue - minVal) / (maxVal - minVal)
    updateSlider(percentage)
    
    local dragging = false
    
    sliderBg.MouseButton1Down:Connect(function()
        dragging = true
    end)
    
    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    game:GetService("RunService").RenderStepped:Connect(function()
        if dragging then
            local mouse = game:GetService("UserInputService"):GetMouseLocation()
            local sliderPos = sliderBg.AbsolutePosition.X
            local sliderSize = sliderBg.AbsoluteSize.X
            local percentage = (mouse.X - sliderPos) / sliderSize
            updateSlider(percentage)
        end
    end)
    
    local element = {
        container = container,
        getValue = function() return currentValue end,
        setValue = function(_, val) 
            currentValue = math.max(minVal, math.min(maxVal, val))
            local perc = (currentValue - minVal) / (maxVal - minVal)
            updateSlider(perc)
        end
    }
    
    table.insert(self.elements, element)
    return element
end

function TabMethods:AddLabel(text)
    self.layoutOrder = self.layoutOrder + 1
    
    local label = Instance.new("TextLabel", self.panel)
    label.Name = "Label_" .. text
    label.Size = UDim2.new(1, 0, 0, 30)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(91, 91, 101)
    label.TextSize = 13
    label.Font = Enum.Font.GothamRegular
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.LayoutOrder = self.layoutOrder
end

function TabMethods:AddColorPicker(colors, callback)
    self.layoutOrder = self.layoutOrder + 1
    
    local container = Instance.new("Frame", self.panel)
    container.Name = "ColorPicker"
    container.Size = UDim2.new(1, 0, 0, 80)
    container.BackgroundColor3 = Color3.fromRGB(33, 33, 39)
    container.BorderSizePixel = 0
    container.LayoutOrder = self.layoutOrder
    
    local corner = Instance.new("UICorner", container)
    corner.CornerRadius = UDim.new(0, 6)
    
    local stroke = Instance.new("UIStroke", container)
    stroke.Color = Color3.fromRGB(51, 51, 57)
    stroke.Thickness = 0.5
    
    local label = Instance.new("TextLabel", container)
    label.Name = "Label"
    label.Size = UDim2.new(1, -20, 0, 18)
    label.Position = UDim2.new(0, 14, 0, 7)
    label.BackgroundTransparency = 1
    label.Text = "Skin Color"
    label.TextColor3 = Color3.fromRGB(231, 231, 236)
    label.TextSize = 14
    label.Font = Enum.Font.GothamBold
    label.TextXAlignment = Enum.TextXAlignment.Left
    
    local desc = Instance.new("TextLabel", container)
    desc.Name = "Description"
    desc.Size = UDim2.new(1, -20, 0, 14)
    desc.Position = UDim2.new(0, 14, 0, 25)
    desc.BackgroundTransparency = 1
    desc.Text = "Change your character's skin color"
    desc.TextColor3 = Color3.fromRGB(91, 91, 101)
    desc.TextSize = 11
    desc.Font = Enum.Font.GothamRegular
    desc.TextXAlignment = Enum.TextXAlignment.Left
    
    local colorContainer = Instance.new("Frame", container)
    colorContainer.Name = "ColorContainer"
    colorContainer.Size = UDim2.new(1, -28, 0, 28)
    colorContainer.Position = UDim2.new(0, 14, 0, 44)
    colorContainer.BackgroundTransparency = 1
    
    local colorLayout = Instance.new("UIListLayout", colorContainer)
    colorLayout.Padding = UDim.new(0, 6)
    colorLayout.SortOrder = Enum.SortOrder.LayoutOrder
    colorLayout.FillDirection = Enum.FillDirection.Horizontal
    
    local selectedColor = colors[1] or Color3.fromRGB(255, 255, 255)
    
    for idx, colorData in ipairs(colors) do
        local colorBtn = Instance.new("TextButton", colorContainer)
        colorBtn.Name = "Color_" .. idx
        colorBtn.Size = UDim2.new(0, 28, 0, 28)
        colorBtn.BackgroundColor3 = colorData.color or colorData
        colorBtn.BorderSizePixel = 0
        colorBtn.Text = ""
        colorBtn.LayoutOrder = idx
        
        local btnCorner = Instance.new("UICorner", colorBtn)
        btnCorner.CornerRadius = UDim.new(0, 6)
        
        local btnStroke = Instance.new("UIStroke", colorBtn)
        btnStroke.Color = Color3.fromRGB(61, 61, 71)
        btnStroke.Thickness = 1
        
        local selectionRing = Instance.new("UIStroke", colorBtn)
        selectionRing.Name = "SelectionRing"
        selectionRing.Thickness = 2
        selectionRing.Color = Color3.fromRGB(101, 255, 101)
        selectionRing.Transparency = 1
        
        if idx == 1 then
            selectionRing.Transparency = 0
        end
        
        colorBtn.MouseButton1Click:Connect(function()
            for _, btn in pairs(colorContainer:GetChildren()) do
                if btn:IsA("TextButton") and btn:FindFirstChild("SelectionRing") then
                    btn:FindFirstChild("SelectionRing").Transparency = 1
                end
            end
            selectionRing.Transparency = 0
            selectedColor = colorData.color or colorData
            if callback then
                callback(selectedColor)
            end
        end)
    end
    
    return {
        container = container,
        getValue = function() return selectedColor end
    }
end

-- Tab methods assignment
for methodName, method in pairs(TabMethods) do
    windUI[methodName] = method
end

setmetatable(windUI, {
    __call = function(_, ...) return windUI.new(...) end
})

-- ============ CREATE NEW UI WITH WINDUI ============
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Create windUI
local ui = windUI.new("REXAS CHEATS", UDim2.new(0, 550, 0, 400), UDim2.new(0.2, 0, 0.2, 0))
local screenGui = ui:GetScreenGui()

-- Copy Attributes from old system (if exists)
for _, oldGui in pairs(player:WaitForChild("PlayerGui"):GetChildren()) do
    if oldGui.Name == "VIP" and oldGui:FindFirstChild("ScreenGui") == nil then
        for key, val in pairs({
            FovEnabled = false,
            EspShowUsername = true,
            FullBrightEnabled = false,
            AimbotEnabled = false,
            FovSize = 150,
            NightScreenEnabled = false,
            EspShowHealth = true,
            EspEnabled = false,
            NoclipEnabled = false,
            SkeletonEnabled = false,
            AimbotActive = false,
            AimbotStrength = 0.5,
            AimbotKeybind = "K",
            FlingEnabled = false,
            SkinColor = nil
        }) do
            if oldGui:GetAttribute(key) ~= nil then
                screenGui:SetAttribute(key, oldGui:GetAttribute(key))
            else
                screenGui:SetAttribute(key, val)
            end
        end
        oldGui:Destroy()
    end
end

-- Initialize all attributes
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
screenGui:SetAttribute("FlingEnabled", false)
screenGui:SetAttribute("SkinColor", nil)

-- Create Tabs
local aimbotTab = ui:CreateTab("🎯 Aimbot", 1)
local espTab = ui:CreateTab("👁 ESP", 2)
local noclipTab = ui:CreateTab("👻 Noclip", 3)
local graphicsTab = ui:CreateTab("🎨 Graphics", 4)
local vendingTab = ui:CreateTab("🏪 Vending", 5)

-- ============ AIMBOT TAB ============
aimbotTab:AddToggle("Aimbot", "Targets the nearest humanoid", false, function(state)
    screenGui:SetAttribute("AimbotEnabled", state)
end)

local keybindDisplay = "K"
aimbotTab:AddToggle("Keybind", "Press to set a custom toggle key", false, function(state)
    if state then
        local connection
        connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if not gameProcessed and input.UserInputType == Enum.UserInputType.Keyboard then
                keybindDisplay = tostring(input.KeyCode):match("Enum%.KeyCode%.(.+)") or "K"
                screenGui:SetAttribute("AimbotKeybind", keybindDisplay)
                connection:Disconnect()
            end
        end)
    end
end)

aimbotTab:AddSlider("Strength", "Aimbot smoothness (0.1 - 1.0)", 0.1, 1, 0.5, function(val)
    screenGui:SetAttribute("AimbotStrength", val)
end)

aimbotTab:AddToggle("FOV", "Enable field of view limiter", false, function(state)
    screenGui:SetAttribute("FovEnabled", state)
end)

aimbotTab:AddSlider("FOV Size", "Radius of targeting circle", 50, 300, 150, function(val)
    screenGui:SetAttribute("FovSize", val)
end)

-- ============ ESP TAB ============
espTab:AddToggle("ESP", "Show player locations and info", false, function(state)
    screenGui:SetAttribute("EspEnabled", state)
end)

espTab:AddToggle("Show Username", "Display player names", true, function(state)
    screenGui:SetAttribute("EspShowUsername", state)
end)

espTab:AddToggle("Show Health", "Display player health", true, function(state)
    screenGui:SetAttribute("EspShowHealth", state)
end)

-- ============ NOCLIP TAB ============
noclipTab:AddToggle("Noclip", "Walk through walls and objects", false, function(state)
    screenGui:SetAttribute("NoclipEnabled", state)
end)

noclipTab:AddToggle("Fling", "Push all players away", false, function(state)
    screenGui:SetAttribute("FlingEnabled", state)
end)

-- ============ GRAPHICS TAB ============
graphicsTab:AddToggle("Full Bright", "See everything even in the dark", false, function(state)
    screenGui:SetAttribute("FullBrightEnabled", state)
end)

graphicsTab:AddToggle("Show Skeleton", "Display skeleton overlay on characters", false, function(state)
    screenGui:SetAttribute("SkeletonEnabled", state)
end)

graphicsTab:AddToggle("Night Screen", "Green night vision overlay", false, function(state)
    screenGui:SetAttribute("NightScreenEnabled", state)
end)

-- Color picker data
local colorPickerData = {
    {color = Color3.fromRGB(255, 255, 255), name = "White"},
    {color = Color3.fromRGB(51, 51, 51), name = "Black"},
    {color = Color3.fromRGB(255, 81, 81), name = "Red"},
    {color = Color3.fromRGB(81, 81, 255), name = "Blue"},
    {color = Color3.fromRGB(81, 255, 81), name = "Green"},
    {color = Color3.fromRGB(255, 255, 81), name = "Yellow"}
}

graphicsTab:AddColorPicker(colorPickerData, function(color)
    screenGui:SetAttribute("SkinColor", color)
end)

-- ============ VENDING TAB ============
vendingTab:AddLabel("Hier kommt dein Inhalt rein")

-- Activate first tab
ui:ActivateTab("🎯 Aimbot")

-- ============ Create FOV Circle ============
local fovCircle = Instance.new("Frame", screenGui)
fovCircle.Name = "FOVCircle"
fovCircle.Visible = false
fovCircle.ZIndex = 5
fovCircle.Size = UDim2.new(0, 300, 0, 300)
fovCircle.Position = UDim2.new(0.5, -150, 0.5, -150)
fovCircle.BackgroundTransparency = 1
fovCircle.BorderSizePixel = 0

local fovCorner = Instance.new("UICorner", fovCircle)
fovCorner.CornerRadius = UDim.new(0, 150)

local fovStroke = Instance.new("UIStroke", fovCircle)
fovStroke.Thickness = 2
fovStroke.Color = Color3.fromRGB(101, 255, 101)
fovStroke.Transparency = 0.3

screenGui:GetAttributeChangedSignal("FovEnabled"):Connect(function()
    if screenGui:GetAttribute("FovEnabled") then
        fovCircle.Visible = true
    else
        fovCircle.Visible = false
    end
end)

-- ============ COMPLETE GAME LOGIC (PRESERVED) ============

-- Character cache for faster lookups
local characterCache = {}
local playerChars = {}

local function findRootCharacter(humanoid)
    if humanoid and humanoid.Parent then
        return humanoid.Parent
    end
    return nil
end

local function updateCharacterCache()
    table.clear(characterCache)
    table.clear(playerChars)

    for _, p in Players:GetPlayers() do
        if p ~= player and p.Character then
            local humanoid = p.Character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 then
                table.insert(characterCache, {character = p.Character, name = p.Name, isPlayer = true})
                playerChars[p.Character] = true
            end
        end
    end

    for _, desc in workspace:GetDescendants() do
        if desc:IsA("Humanoid") and desc.Health > 0 then
            local char = findRootCharacter(desc)
            if char
                and char ~= player.Character
                and not playerChars[char]
                and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Head"))
                and char:IsA("Model") then
                local alreadyAdded = false
                for _, data in characterCache do
                    if data.character == char then
                        alreadyAdded = true
                        break
                    end
                end
                if not alreadyAdded then
                    table.insert(characterCache, {character = char, name = char.Name, isPlayer = false})
                end
            end
        end
    end
end

task.spawn(function()
    while true do
        updateCharacterCache()
        task.wait(0.5)
    end
end)

-- ============ AIMBOT LOGIC ============
local aimbotActive = false

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    local keyName = screenGui:GetAttribute("AimbotKeybind") or "K"
    local success, keyCode = pcall(function()
        return Enum.KeyCode[keyName]
    end)
    if success and input.KeyCode == keyCode then
        if screenGui:GetAttribute("AimbotEnabled") then
            aimbotActive = not aimbotActive
            screenGui:SetAttribute("AimbotActive", aimbotActive)
        end
    end
end)

screenGui:GetAttributeChangedSignal("AimbotEnabled"):Connect(function()
    if not screenGui:GetAttribute("AimbotEnabled") then
        aimbotActive = false
        screenGui:SetAttribute("AimbotActive", false)
    end
end)

local function getNearestTarget()
    local fovEnabled = screenGui:GetAttribute("FovEnabled")
    local fovSize = screenGui:GetAttribute("FovSize") or 150
    local center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    local nearestDist = math.huge
    local nearestChar = nil

    for _, data in characterCache do
        local char = data.character
        local targetPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Head")
        if targetPart then
            local screenPos, onScreen = camera:WorldToViewportPoint(targetPart.Position)
            if onScreen then
                local dist = (Vector2.new(screenPos.X, screenPos.Y) - center).Magnitude
                if not (fovEnabled and dist > fovSize / 2) then
                    if dist < nearestDist then
                        nearestDist = dist
                        nearestChar = char
                    end
                end
            end
        end
    end

    return nearestChar
end

RunService.RenderStepped:Connect(function()
    if not aimbotActive then return end
    if not screenGui:GetAttribute("AimbotEnabled") then
        aimbotActive = false
        return
    end

    local target = getNearestTarget()
    if not target then return end

    local targetPart = target:FindFirstChild("HumanoidRootPart") or target:FindFirstChild("Head")
    if not targetPart then return end

    local strength = screenGui:GetAttribute("AimbotStrength") or 0.5
    local targetPos = targetPart.Position + Vector3.new(0, 1.5, 0)
    local targetCFrame = CFrame.new(camera.CFrame.Position, targetPos)

    camera.CFrame = camera.CFrame:Lerp(targetCFrame, strength)
end)

-- ============ ESP LOGIC ============
local espObjects = {}

local function createESPForCharacter(char, name)
    if espObjects[char] then return end

    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    local objects = {}

    local highlight = Instance.new("Highlight")
    highlight.Name = "VIP_ESP_Highlight"
    highlight.FillTransparency = 0.8
    highlight.FillColor = Color3.fromRGB(255, 50, 50)
    highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineTransparency = 0
    highlight.Adornee = char
    highlight.Parent = char
    objects.highlight = highlight

    local adornee = char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")
    if adornee and adornee:IsA("BasePart") then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "VIP_ESP_Billboard"
        billboard.Adornee = adornee
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.MaxDistance = 500
        billboard.Parent = char
        objects.billboard = billboard

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Name = "NameLabel"
        nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = name
        nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        nameLabel.TextSize = 13
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.TextStrokeTransparency = 0.5
        nameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        nameLabel.Parent = billboard
        objects.nameLabel = nameLabel

        local healthLabel = Instance.new("TextLabel")
        healthLabel.Name = "HealthLabel"
        healthLabel.Size = UDim2.new(1, 0, 0.5, 0)
        healthLabel.Position = UDim2.new(0, 0, 0.5, 0)
        healthLabel.BackgroundTransparency = 1
        healthLabel.Text = "HP: 100"
        healthLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        healthLabel.TextSize = 11
        healthLabel.Font = Enum.Font.GothamBold
        healthLabel.TextStrokeTransparency = 0.5
        healthLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        healthLabel.Parent = billboard
        objects.healthLabel = healthLabel
    end

    espObjects[char] = objects
end

local function removeESPForCharacter(char)
    local objects = espObjects[char]
    if not objects then return end
    if objects.highlight and objects.highlight.Parent then objects.highlight.Parent = nil end
    if objects.billboard and objects.billboard.Parent then objects.billboard.Parent = nil end
    espObjects[char] = nil
end

local function updateESP()
    local espEnabled = screenGui:GetAttribute("EspEnabled")
    local showUsername = screenGui:GetAttribute("EspShowUsername")
    if showUsername == nil then showUsername = true end
    local showHealth = screenGui:GetAttribute("EspShowHealth")
    if showHealth == nil then showHealth = true end

    local processedChars = {}

    for _, data in characterCache do
        local char = data.character
        processedChars[char] = true

        if espEnabled then
            if not espObjects[char] then
                createESPForCharacter(char, data.name)
            end

            local objects = espObjects[char]
            if objects and objects.nameLabel then
                objects.nameLabel.Visible = showUsername
            end
            if objects and objects.healthLabel then
                objects.healthLabel.Visible = showHealth
                local humanoid = char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    objects.healthLabel.Text = "HP: " .. math.round(humanoid.Health)
                end
            end
        end
    end

    for char, _ in espObjects do
        if not processedChars[char] or not espEnabled then
            removeESPForCharacter(char)
        end
    end
end

task.spawn(function()
    while true do
        updateESP()
        task.wait(0.1)
    end
end)

-- ============ NOCLIP LOGIC ============
local noclipLoop = nil

local function startNoclip()
    if noclipLoop then noclipLoop:Disconnect() end
    noclipLoop = RunService.Heartbeat:Connect(function()
        if not screenGui:GetAttribute("NoclipEnabled") then
            if noclipLoop then
                noclipLoop:Disconnect()
                noclipLoop = nil
            end
            return
        end

        local char = player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

screenGui:GetAttributeChangedSignal("NoclipEnabled"):Connect(function()
    if screenGui:GetAttribute("NoclipEnabled") then
        startNoclip()
    else
        if noclipLoop then
            noclipLoop:Disconnect()
            noclipLoop = nil
        end
        local char = player.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end
end)

-- ============ FULLBRIGHT LOGIC ============
local fullbrightParts = {}

local function enableFullbright()
    for _, part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            fullbrightParts[part] = part.Material
            part.Material = Enum.Material.Neon
            part.CanCollide = true
        end
    end
    game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    game.Lighting.ClockTime = 12
end

local function disableFullbright()
    for part, material in pairs(fullbrightParts) do
        if part and part.Parent then
            part.Material = material
        end
    end
    fullbrightParts = {}
    game.Lighting.Ambient = Color3.fromRGB(128, 128, 128)
end

screenGui:GetAttributeChangedSignal("FullBrightEnabled"):Connect(function()
    if screenGui:GetAttribute("FullBrightEnabled") then
        enableFullbright()
    else
        disableFullbright()
    end
end)

-- ============ SKIN COLOR LOGIC ============
local function applySkinColor(color)
    local char = player.Character
    if not char then return end
    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") and (part.Name == "Head" or part.Name == "Torso" or part.Name:match("Arm") or part.Name:match("Leg")) then
            part.Color = color
        end
    end
end

screenGui:GetAttributeChangedSignal("SkinColor"):Connect(function()
    local color = screenGui:GetAttribute("SkinColor")
    if color then
        applySkinColor(color)
    end
end)

-- ============ SKELETON LOGIC ============
local skeletonObjects = {}

local function createSkeletonForCharacter(char)
    if skeletonObjects[char] then return end

    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    local skeleton = Instance.new("Part", char)
    skeleton.Name = "VIP_Skeleton"
    skeleton.CanCollide = false
    skeleton.Transparency = 1
    
    skeletonObjects[char] = {skeleton = skeleton}

    for _, humanoidDesc in pairs(char:FindFirstChildOfClass("Humanoid"):GetChildren()) do
        if humanoidDesc:IsA("Bone") then
            local line = Instance.new("Part", skeleton)
            line.Shape = Enum.PartType.Cylinder
            line.CanCollide = false
            line.Color = Color3.fromRGB(0, 255, 0)
            line.Material = Enum.Material.Neon
            line.TopSurface = Enum.SurfaceType.Smooth
            line.BottomSurface = Enum.SurfaceType.Smooth
        end
    end
end

local function removeSkeletonForCharacter(char)
    local data = skeletonObjects[char]
    if not data then return end
    if data.skeleton and data.skeleton.Parent then
        data.skeleton.Parent = nil
    end
    skeletonObjects[char] = nil
end

local function updateSkeletons()
    local skeletonEnabled = screenGui:GetAttribute("SkeletonEnabled")
    local processedChars = {}

    for _, data in characterCache do
        local char = data.character
        processedChars[char] = true

        if skeletonEnabled then
            if not skeletonObjects[char] then
                createSkeletonForCharacter(char)
            end
        else
            removeSkeletonForCharacter(char)
        end
    end

    for char, _ in skeletonObjects do
        if not processedChars[char] then
            removeSkeletonForCharacter(char)
        end
    end
end

task.spawn(function()
    while true do
        updateSkeletons()
        task.wait(0.5)
    end
end)

-- ============ NIGHT SCREEN LOGIC ============
local nightOverlay = Instance.new("Frame", screenGui)
nightOverlay.Name = "NightOverlay"
nightOverlay.Size = UDim2.new(1, 0, 1, 0)
nightOverlay.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
nightOverlay.BackgroundTransparency = 0.5
nightOverlay.BorderSizePixel = 0
nightOverlay.Visible = false
nightOverlay.ZIndex = 1

screenGui:GetAttributeChangedSignal("NightScreenEnabled"):Connect(function()
    nightOverlay.Visible = screenGui:GetAttribute("NightScreenEnabled") or false
end)

-- ============ FLING LOGIC ============
local flingActive = false
local flingConn = nil

local function stopFling()
    flingActive = false
    if flingConn then
        flingConn:Disconnect()
        flingConn = nil
    end
end

local function startFling()
    if flingActive then return end
    flingActive = true

    flingConn = RunService.Heartbeat:Connect(function(dt)
        if not screenGui:GetAttribute("FlingEnabled") then
            stopFling()
            return
        end

        local myChar = player.Character
        if not myChar then return end
        local myHRP = myChar:FindFirstChild("HumanoidRootPart")
        if not myHRP then return end

        for _, otherPlayer in Players:GetPlayers() do
            if otherPlayer ~= player and otherPlayer.Character then
                local otherHRP = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
                if otherHRP then
                    local dir = (otherHRP.Position - myHRP.Position)
                    local dist = dir.Magnitude
                    if dist < 80 and dist > 0.5 then
                        local force = dir.Unit * (500 / math.max(dist, 1))
                        otherHRP.AssemblyLinearVelocity = force + Vector3.new(0, 150, 0)
                    end
                end
            end
        end

        for _, data in characterCache do
            if not data.isPlayer then
                local npcChar = data.character
                local npcHRP = npcChar:FindFirstChild("HumanoidRootPart")
                if npcHRP then
                    for _, part in npcChar:GetDescendants() do
                        if part:IsA("BasePart") and part.Anchored then
                            part.Anchored = false
                        end
                    end

                    local dir = (npcHRP.Position - myHRP.Position)
                    local dist = dir.Magnitude
                    if dist < 80 and dist > 0.5 then
                        local force = dir.Unit * (500 / math.max(dist, 1))
                        npcHRP.AssemblyLinearVelocity = force + Vector3.new(0, 150, 0)
                    end
                end
            end
        end
    end)
end

screenGui:GetAttributeChangedSignal("FlingEnabled"):Connect(function()
    if screenGui:GetAttribute("FlingEnabled") then
        startFling()
    else
        stopFling()
    end
end)

-- ============ WORKSPACE UPDATES ============
workspace.DescendantAdded:Connect(function(desc)
    if desc:IsA("Humanoid") then
        task.wait(1)
        updateCharacterCache()
    end
end)

workspace.DescendantRemoving:Connect(function(desc)
    if desc:IsA("Humanoid") then
        task.wait(0.5)
        updateCharacterCache()
    end
end)

-- ============ CHARACTER ADDED HANDLER ============
player.CharacterAdded:Connect(function(char)
    task.wait(0.5)
    if screenGui:GetAttribute("NoclipEnabled") then
        startNoclip()
    end
    local skinColor = screenGui:GetAttribute("SkinColor")
    if skinColor then
        applySkinColor(skinColor)
    end
end)

return screenGui
