-- script made by CJ! (Rexas developer)
local G2L = {};

-- StarterGui.VIP
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = true;
G2L["1"]["Name"] = [[VIP]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;
-- Attributes
G2L["1"]:SetAttribute([[FovEnabled]], false);
G2L["1"]:SetAttribute([[EspShowUsername]], true);
G2L["1"]:SetAttribute([[FullBrightEnabled]], false);
G2L["1"]:SetAttribute([[AimbotEnabled]], false);
G2L["1"]:SetAttribute([[FovSize]], 150);
G2L["1"]:SetAttribute([[NightScreenEnabled]], false);
G2L["1"]:SetAttribute([[EspShowHealth]], true);
G2L["1"]:SetAttribute([[EspEnabled]], false);
G2L["1"]:SetAttribute([[NoclipEnabled]], false);
G2L["1"]:SetAttribute([[SkeletonEnabled]], false);
G2L["1"]:SetAttribute([[AimbotActive]], false);
G2L["1"]:SetAttribute([[AimbotStrength]], 0.5);
G2L["1"]:SetAttribute([[AimbotKeybind]], [[K]]);


-- StarterGui.VIP.GuiLogic
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[GuiLogic]];


-- StarterGui.VIP.VIPFeatures
G2L["3"] = Instance.new("LocalScript", G2L["1"]);
G2L["3"]["Name"] = [[VIPFeatures]];


-- StarterGui.VIP.FOVCircle
G2L["4"] = Instance.new("Frame", G2L["1"]);
G2L["4"]["Visible"] = false;
G2L["4"]["ZIndex"] = 5;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Size"] = UDim2.new(0, 300, 0, 300);
G2L["4"]["Position"] = UDim2.new(0.5, -150, 0.5, -150);
G2L["4"]["Name"] = [[FOVCircle]];
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.VIP.FOVCircle.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 150);


-- StarterGui.VIP.FOVCircle.UIAspectRatioConstraint
G2L["6"] = Instance.new("UIAspectRatioConstraint", G2L["4"]);



-- StarterGui.VIP.FOVCircle.CircleStroke
G2L["7"] = Instance.new("UIStroke", G2L["4"]);
G2L["7"]["Transparency"] = 0.3;
G2L["7"]["Thickness"] = 2;
G2L["7"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["7"]["Name"] = [[CircleStroke]];


-- StarterGui.VIP.MainFrame
G2L["8"] = Instance.new("Frame", G2L["1"]);
G2L["8"]["ZIndex"] = 5;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 21);
G2L["8"]["Size"] = UDim2.new(0, 680, 0, 500);
G2L["8"]["Position"] = UDim2.new(0.25, 0, 0.15, 0);
G2L["8"]["Name"] = [[MainFrame]];


-- StarterGui.VIP.MainFrame.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.UIStroke
G2L["a"] = Instance.new("UIStroke", G2L["8"]);
G2L["a"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.Section
G2L["b"] = Instance.new("Frame", G2L["8"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 31);
G2L["b"]["Size"] = UDim2.new(1, 0, 0, 42);
G2L["b"]["Name"] = [[Section]];


-- StarterGui.VIP.MainFrame.Section.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);
G2L["c"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.Section.Frame
G2L["d"] = Instance.new("Frame", G2L["b"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 31);
G2L["d"]["Size"] = UDim2.new(1, 0, 0, 12);
G2L["d"]["Position"] = UDim2.new(0, 0, 1, -12);


-- StarterGui.VIP.MainFrame.Section.Title
G2L["e"] = Instance.new("TextLabel", G2L["b"]);
G2L["e"]["TextSize"] = 15;
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(0, 200, 1, 0);
G2L["e"]["Text"] = [[REXAS CHEATS]];
G2L["e"]["Name"] = [[Title]];
G2L["e"]["Position"] = UDim2.new(0, 90, 0, -4);


-- StarterGui.VIP.MainFrame.Section.Close
G2L["f"] = Instance.new("ImageButton", G2L["b"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundTransparency"] = 0.2;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(221, 56, 56);
G2L["f"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["f"]["Name"] = [[Close]];
G2L["f"]["Position"] = UDim2.new(1, -36, 0.5, -14);


-- StarterGui.VIP.MainFrame.Section.Close.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 13);


-- StarterGui.VIP.MainFrame.Section.Close.TextLabel
G2L["11"] = Instance.new("TextLabel", G2L["f"]);
G2L["11"]["TextSize"] = 16;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11"]["Text"] = [[✕]];


-- StarterGui.VIP.MainFrame.Section.Minimize
G2L["12"] = Instance.new("ImageButton", G2L["b"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundTransparency"] = 0.2;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(221, 191, 41);
G2L["12"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["12"]["Name"] = [[Minimize]];
G2L["12"]["Position"] = UDim2.new(1, -72, 0.5, -14);


-- StarterGui.VIP.MainFrame.Section.Minimize.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 13);


-- StarterGui.VIP.MainFrame.Section.Minimize.TextLabel
G2L["14"] = Instance.new("TextLabel", G2L["12"]);
G2L["14"]["TextSize"] = 18;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14"]["Text"] = [[━]];


-- StarterGui.VIP.MainFrame.Section.Fullscreen
G2L["15"] = Instance.new("ImageButton", G2L["b"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundTransparency"] = 0.2;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(56, 191, 56);
G2L["15"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["15"]["Name"] = [[Fullscreen]];
G2L["15"]["Position"] = UDim2.new(1, -108, 0.5, -14);


-- StarterGui.VIP.MainFrame.Section.Fullscreen.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 13);


-- StarterGui.VIP.MainFrame.Section.Fullscreen.TextLabel
G2L["17"] = Instance.new("TextLabel", G2L["15"]);
G2L["17"]["TextSize"] = 14;
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["17"]["Text"] = [[☐]];


-- StarterGui.VIP.MainFrame.Section.ImageLabel
G2L["18"] = Instance.new("ImageLabel", G2L["b"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["Image"] = [[rbxassetid://113948757329652]];
G2L["18"]["Size"] = UDim2.new(0, 47, 0, 48);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Position"] = UDim2.new(0.01176, 0, 0, 0);


-- StarterGui.VIP.MainFrame.Section.Title
G2L["19"] = Instance.new("TextLabel", G2L["b"]);
G2L["19"]["TextSize"] = 15;
G2L["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19"]["TextColor3"] = Color3.fromRGB(132, 132, 132);
G2L["19"]["BackgroundTransparency"] = 1;
G2L["19"]["Size"] = UDim2.new(0, 200, 1, 0);
G2L["19"]["Text"] = [[REXAS SOFTWEARS]];
G2L["19"]["Name"] = [[Title]];
G2L["19"]["Position"] = UDim2.new(0, 90, 0, 10);


-- StarterGui.VIP.MainFrame.Section.ImageLabel
G2L["1a"] = Instance.new("ImageLabel", G2L["b"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Image"] = [[rbxassetid://112258367900615]];
G2L["1a"]["Size"] = UDim2.new(0, 173, 0, 139);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Position"] = UDim2.new(-0.02, 0, -1.071, 0);


-- StarterGui.VIP.MainFrame.UnderSection
G2L["1b"] = Instance.new("Frame", G2L["8"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 31);
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 28);
G2L["1b"]["Position"] = UDim2.new(0, 0, 1, -28);
G2L["1b"]["Name"] = [[UnderSection]];


-- StarterGui.VIP.MainFrame.UnderSection.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.UnderSection.Frame
G2L["1d"] = Instance.new("Frame", G2L["1b"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 31);
G2L["1d"]["Size"] = UDim2.new(1, 0, 0, 12);


-- StarterGui.VIP.MainFrame.UnderSection.TextLabel
G2L["1e"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1e"]["TextSize"] = 11;
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e"]["Text"] = [[A REXAS SOFTWEARS PRODUCTION]];


-- StarterGui.VIP.MainFrame.ChoosingFrame
G2L["1f"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["1f"]["ScrollingEnabled"] = false;
G2L["1f"]["Name"] = [[ChoosingFrame]];
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 29);
G2L["1f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Size"] = UDim2.new(0, 170, 1, -70);
G2L["1f"]["Position"] = UDim2.new(0, 0, 0, 42);
G2L["1f"]["ScrollBarThickness"] = 0;


-- StarterGui.VIP.MainFrame.ChoosingFrame.UIListLayout
G2L["20"] = Instance.new("UIListLayout", G2L["1f"]);
G2L["20"]["Padding"] = UDim.new(0, 4);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.ChoosingFrame.UIPadding
G2L["21"] = Instance.new("UIPadding", G2L["1f"]);
G2L["21"]["PaddingTop"] = UDim.new(0, 10);
G2L["21"]["PaddingRight"] = UDim.new(0, 8);
G2L["21"]["PaddingLeft"] = UDim.new(0, 8);
G2L["21"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn
G2L["22"] = Instance.new("Frame", G2L["1f"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["22"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["22"]["Name"] = [[AimbotBtn]];
G2L["22"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);



-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["22"]);
G2L["24"]["Thickness"] = 0.5;
G2L["24"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn.Indicator
G2L["25"] = Instance.new("Frame", G2L["22"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["25"]["Size"] = UDim2.new(0, 3, 0.6, 0);
G2L["25"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["25"]["Name"] = [[Indicator]];


-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn.Indicator.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.VIP.MainFrame.ChoosingFrame.AimbotBtn.Label
G2L["27"] = Instance.new("TextLabel", G2L["22"]);
G2L["27"]["TextSize"] = 13;
G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["27"]["TextColor3"] = Color3.fromRGB(101, 255, 101);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["27"]["Text"] = [[🎯 Aimbot]];
G2L["27"]["Name"] = [[Label]];
G2L["27"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn
G2L["28"] = Instance.new("Frame", G2L["1f"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["28"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["28"]["Name"] = [[ESPBtn]];
G2L["28"]["LayoutOrder"] = 2;


-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);



-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["28"]);
G2L["2a"]["Thickness"] = 0.5;
G2L["2a"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn.Indicator
G2L["2b"] = Instance.new("Frame", G2L["28"]);
G2L["2b"]["Visible"] = false;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["2b"]["Size"] = UDim2.new(0, 3, 0.6, 0);
G2L["2b"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["2b"]["Name"] = [[Indicator]];


-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn.Indicator.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);
G2L["2c"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.VIP.MainFrame.ChoosingFrame.ESPBtn.Label
G2L["2d"] = Instance.new("TextLabel", G2L["28"]);
G2L["2d"]["TextSize"] = 13;
G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2d"]["TextColor3"] = Color3.fromRGB(151, 151, 161);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["2d"]["Text"] = [[👁 ESP]];
G2L["2d"]["Name"] = [[Label]];
G2L["2d"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn
G2L["2e"] = Instance.new("Frame", G2L["1f"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["2e"]["Name"] = [[NoclipBtn]];
G2L["2e"]["LayoutOrder"] = 3;


-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);



-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2e"]);
G2L["30"]["Thickness"] = 0.5;
G2L["30"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn.Indicator
G2L["31"] = Instance.new("Frame", G2L["2e"]);
G2L["31"]["Visible"] = false;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["31"]["Size"] = UDim2.new(0, 3, 0.6, 0);
G2L["31"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["31"]["Name"] = [[Indicator]];


-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn.Indicator.UICorner
G2L["32"] = Instance.new("UICorner", G2L["31"]);
G2L["32"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.VIP.MainFrame.ChoosingFrame.NoclipBtn.Label
G2L["33"] = Instance.new("TextLabel", G2L["2e"]);
G2L["33"]["TextSize"] = 13;
G2L["33"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["33"]["TextColor3"] = Color3.fromRGB(151, 151, 161);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["33"]["Text"] = [[👻 Noclip]];
G2L["33"]["Name"] = [[Label]];
G2L["33"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn
G2L["34"] = Instance.new("Frame", G2L["1f"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["34"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["34"]["Name"] = [[GraphicsBtn]];
G2L["34"]["LayoutOrder"] = 4;


-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn.UICorner
G2L["35"] = Instance.new("UICorner", G2L["34"]);



-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn.UIStroke
G2L["36"] = Instance.new("UIStroke", G2L["34"]);
G2L["36"]["Thickness"] = 0.5;
G2L["36"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn.Indicator
G2L["37"] = Instance.new("Frame", G2L["34"]);
G2L["37"]["Visible"] = false;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["37"]["Size"] = UDim2.new(0, 3, 0.6, 0);
G2L["37"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["37"]["Name"] = [[Indicator]];


-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn.Indicator.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.VIP.MainFrame.ChoosingFrame.GraphicsBtn.Label
G2L["39"] = Instance.new("TextLabel", G2L["34"]);
G2L["39"]["TextSize"] = 13;
G2L["39"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["39"]["TextColor3"] = Color3.fromRGB(151, 151, 161);
G2L["39"]["BackgroundTransparency"] = 1;
G2L["39"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["39"]["Text"] = [[🎨 Graphics]];
G2L["39"]["Name"] = [[Label]];
G2L["39"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn
G2L["3a"] = Instance.new("Frame", G2L["1f"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 38);
G2L["3a"]["Name"] = [[VendingBtn]];
G2L["3a"]["LayoutOrder"] = 5;


-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn.UICorner
G2L["3b"] = Instance.new("UICorner", G2L["3a"]);



-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn.UIStroke
G2L["3c"] = Instance.new("UIStroke", G2L["3a"]);
G2L["3c"]["Thickness"] = 0.5;
G2L["3c"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn.Indicator
G2L["3d"] = Instance.new("Frame", G2L["3a"]);
G2L["3d"]["Visible"] = false;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["3d"]["Size"] = UDim2.new(0, 3, 0.6, 0);
G2L["3d"]["Position"] = UDim2.new(0, 0, 0.2, 0);
G2L["3d"]["Name"] = [[Indicator]];


-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn.Indicator.UICorner
G2L["3e"] = Instance.new("UICorner", G2L["3d"]);
G2L["3e"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.VIP.MainFrame.ChoosingFrame.VendingBtn.Label
G2L["3f"] = Instance.new("TextLabel", G2L["3a"]);
G2L["3f"]["TextSize"] = 13;
G2L["3f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3f"]["TextColor3"] = Color3.fromRGB(151, 151, 161);
G2L["3f"]["BackgroundTransparency"] = 1;
G2L["3f"]["Size"] = UDim2.new(1, -12, 1, 0);
G2L["3f"]["Text"] = [[🏪 Vending]];
G2L["3f"]["Name"] = [[Label]];
G2L["3f"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.AimbotFrame
G2L["40"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["40"]["Name"] = [[AimbotFrame]];
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 27);
G2L["40"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["40"]["Size"] = UDim2.new(1, -178, 1, -70);
G2L["40"]["ScrollBarImageColor3"] = Color3.fromRGB(51, 51, 57);
G2L["40"]["Position"] = UDim2.new(0, 178, 0, 42);
G2L["40"]["ScrollBarThickness"] = 4;


-- StarterGui.VIP.MainFrame.AimbotFrame.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);
G2L["41"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.AimbotFrame.UIStroke
G2L["42"] = Instance.new("UIStroke", G2L["40"]);
G2L["42"]["Thickness"] = 0.5;
G2L["42"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.UIListLayout
G2L["43"] = Instance.new("UIListLayout", G2L["40"]);
G2L["43"]["Padding"] = UDim.new(0, 6);
G2L["43"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.AimbotFrame.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["40"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 10);
G2L["44"]["PaddingRight"] = UDim.new(0, 10);
G2L["44"]["PaddingLeft"] = UDim.new(0, 10);
G2L["44"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot
G2L["45"] = Instance.new("Frame", G2L["40"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["45"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["45"]["Name"] = [[ToggleAimbot]];
G2L["45"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.UICorner
G2L["46"] = Instance.new("UICorner", G2L["45"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.UIStroke
G2L["47"] = Instance.new("UIStroke", G2L["45"]);
G2L["47"]["Thickness"] = 0.5;
G2L["47"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.Label
G2L["48"] = Instance.new("TextLabel", G2L["45"]);
G2L["48"]["TextSize"] = 14;
G2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["48"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["48"]["Text"] = [[Aimbot]];
G2L["48"]["Name"] = [[Label]];
G2L["48"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.SubLabel
G2L["49"] = Instance.new("TextLabel", G2L["45"]);
G2L["49"]["TextSize"] = 11;
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["49"]["Text"] = [[Targets the nearest humanoid]];
G2L["49"]["Name"] = [[SubLabel]];
G2L["49"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.ToggleSwitch
G2L["4a"] = Instance.new("Frame", G2L["45"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["4a"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["4a"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["4a"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.ToggleSwitch.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.ToggleSwitch.Knob
G2L["4c"] = Instance.new("Frame", G2L["4a"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["4c"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["4c"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["4c"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleAimbot.ToggleSwitch.Knob.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);
G2L["4d"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey
G2L["4e"] = Instance.new("Frame", G2L["40"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["4e"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["4e"]["Name"] = [[ToggleKey]];
G2L["4e"]["LayoutOrder"] = 2;


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.UIStroke
G2L["50"] = Instance.new("UIStroke", G2L["4e"]);
G2L["50"]["Thickness"] = 0.5;
G2L["50"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.Label
G2L["51"] = Instance.new("TextLabel", G2L["4e"]);
G2L["51"]["TextSize"] = 14;
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["51"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["51"]["Text"] = [[Keybind]];
G2L["51"]["Name"] = [[Label]];
G2L["51"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.SubLabel
G2L["52"] = Instance.new("TextLabel", G2L["4e"]);
G2L["52"]["TextSize"] = 11;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["52"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["52"]["Text"] = [[Press to set a custom toggle key]];
G2L["52"]["Name"] = [[SubLabel]];
G2L["52"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.KeybindBtn
G2L["53"] = Instance.new("TextButton", G2L["4e"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 13;
G2L["53"]["TextColor3"] = Color3.fromRGB(101, 255, 101);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 31);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["53"]["Size"] = UDim2.new(0, 44, 0, 26);
G2L["53"]["Text"] = [[K]];
G2L["53"]["Name"] = [[KeybindBtn]];
G2L["53"]["Position"] = UDim2.new(1, -54, 0.5, -13);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.KeybindBtn.UICorner
G2L["54"] = Instance.new("UICorner", G2L["53"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.AimbotFrame.ToggleKey.KeybindBtn.UIStroke
G2L["55"] = Instance.new("UIStroke", G2L["53"]);
G2L["55"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength
G2L["56"] = Instance.new("Frame", G2L["40"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["56"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["56"]["Name"] = [[AimbotStrength]];
G2L["56"]["LayoutOrder"] = 3;


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.UICorner
G2L["57"] = Instance.new("UICorner", G2L["56"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.UIStroke
G2L["58"] = Instance.new("UIStroke", G2L["56"]);
G2L["58"]["Thickness"] = 0.5;
G2L["58"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.Label
G2L["59"] = Instance.new("TextLabel", G2L["56"]);
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["59"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["59"]["Text"] = [[Strength]];
G2L["59"]["Name"] = [[Label]];
G2L["59"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SubLabel
G2L["5a"] = Instance.new("TextLabel", G2L["56"]);
G2L["5a"]["TextSize"] = 11;
G2L["5a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["5a"]["Text"] = [[How fast the camera locks on]];
G2L["5a"]["Name"] = [[SubLabel]];
G2L["5a"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SliderTrack
G2L["5b"] = Instance.new("Frame", G2L["56"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 56);
G2L["5b"]["Size"] = UDim2.new(0, 110, 0, 6);
G2L["5b"]["Position"] = UDim2.new(1, -50, 0.5, -3);
G2L["5b"]["Name"] = [[SliderTrack]];


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SliderTrack.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SliderTrack.SliderFill
G2L["5d"] = Instance.new("Frame", G2L["5b"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["5d"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["5d"]["Name"] = [[SliderFill]];


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SliderTrack.SliderFill.UICorner
G2L["5e"] = Instance.new("UICorner", G2L["5d"]);
G2L["5e"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.SliderTrack.Hitbox
G2L["5f"] = Instance.new("TextButton", G2L["5b"]);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(1, 0, 1, 10);
G2L["5f"]["Text"] = [[]];
G2L["5f"]["Name"] = [[Hitbox]];
G2L["5f"]["Position"] = UDim2.new(0, 0, 0, -5);


-- StarterGui.VIP.MainFrame.AimbotFrame.AimbotStrength.ValueLabel
G2L["60"] = Instance.new("TextLabel", G2L["56"]);
G2L["60"]["TextSize"] = 12;
G2L["60"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(101, 255, 101);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["60"]["Text"] = [[50%]];
G2L["60"]["Name"] = [[ValueLabel]];
G2L["60"]["Position"] = UDim2.new(1, -14, 0.5, -10);


-- StarterGui.VIP.MainFrame.AimbotFrame.Separator
G2L["61"] = Instance.new("Frame", G2L["40"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 57);
G2L["61"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["61"]["Name"] = [[Separator]];
G2L["61"]["LayoutOrder"] = 4;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSectionLabel
G2L["62"] = Instance.new("TextLabel", G2L["40"]);
G2L["62"]["TextSize"] = 11;
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["62"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(1, 0, 0, 22);
G2L["62"]["Text"] = [[FOV SETTINGS]];
G2L["62"]["LayoutOrder"] = 5;
G2L["62"]["Name"] = [[FOVSectionLabel]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle
G2L["63"] = Instance.new("Frame", G2L["40"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["63"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["63"]["Name"] = [[FOVToggle]];
G2L["63"]["LayoutOrder"] = 6;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.UIStroke
G2L["65"] = Instance.new("UIStroke", G2L["63"]);
G2L["65"]["Thickness"] = 0.5;
G2L["65"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.Label
G2L["66"] = Instance.new("TextLabel", G2L["63"]);
G2L["66"]["TextSize"] = 14;
G2L["66"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["66"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["66"]["BackgroundTransparency"] = 1;
G2L["66"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["66"]["Text"] = [[FOV Circle]];
G2L["66"]["Name"] = [[Label]];
G2L["66"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.SubLabel
G2L["67"] = Instance.new("TextLabel", G2L["63"]);
G2L["67"]["TextSize"] = 11;
G2L["67"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["67"]["Text"] = [[Show targeting range on screen]];
G2L["67"]["Name"] = [[SubLabel]];
G2L["67"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.ToggleSwitch
G2L["68"] = Instance.new("Frame", G2L["63"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["68"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["68"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["68"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.ToggleSwitch.UICorner
G2L["69"] = Instance.new("UICorner", G2L["68"]);
G2L["69"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.ToggleSwitch.Knob
G2L["6a"] = Instance.new("Frame", G2L["68"]);
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["6a"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["6a"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["6a"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVToggle.ToggleSwitch.Knob.UICorner
G2L["6b"] = Instance.new("UICorner", G2L["6a"]);
G2L["6b"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor
G2L["6c"] = Instance.new("Frame", G2L["40"]);
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["6c"]["Size"] = UDim2.new(1, 0, 0, 60);
G2L["6c"]["Name"] = [[FOVColor]];
G2L["6c"]["LayoutOrder"] = 7;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.UICorner
G2L["6d"] = Instance.new("UICorner", G2L["6c"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.UIStroke
G2L["6e"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6e"]["Thickness"] = 0.5;
G2L["6e"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.Label
G2L["6f"] = Instance.new("TextLabel", G2L["6c"]);
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["6f"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["6f"]["BackgroundTransparency"] = 1;
G2L["6f"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["6f"]["Text"] = [[FOV Color]];
G2L["6f"]["Name"] = [[Label]];
G2L["6f"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.SubLabel
G2L["70"] = Instance.new("TextLabel", G2L["6c"]);
G2L["70"]["TextSize"] = 11;
G2L["70"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["70"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["70"]["Text"] = [[Choose the circle color]];
G2L["70"]["Name"] = [[SubLabel]];
G2L["70"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer
G2L["71"] = Instance.new("Frame", G2L["6c"]);
G2L["71"]["Size"] = UDim2.new(0, 168, 0, 24);
G2L["71"]["Position"] = UDim2.new(1, -178, 0, 32);
G2L["71"]["Name"] = [[ColorContainer]];
G2L["71"]["BackgroundTransparency"] = 1;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.UIListLayout
G2L["72"] = Instance.new("UIListLayout", G2L["71"]);
G2L["72"]["Padding"] = UDim.new(0, 4);
G2L["72"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["72"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Red
G2L["73"] = Instance.new("TextButton", G2L["71"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 81, 81);
G2L["73"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["73"]["LayoutOrder"] = 1;
G2L["73"]["Text"] = [[]];
G2L["73"]["Name"] = [[Red]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Red.UICorner
G2L["74"] = Instance.new("UICorner", G2L["73"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Red.UIStroke
G2L["75"] = Instance.new("UIStroke", G2L["73"]);
G2L["75"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Red.SelectionRing
G2L["76"] = Instance.new("UIStroke", G2L["73"]);
G2L["76"]["Transparency"] = 1;
G2L["76"]["Thickness"] = 2;
G2L["76"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["76"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Green
G2L["77"] = Instance.new("TextButton", G2L["71"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(81, 255, 81);
G2L["77"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["77"]["LayoutOrder"] = 2;
G2L["77"]["Text"] = [[]];
G2L["77"]["Name"] = [[Green]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Green.UICorner
G2L["78"] = Instance.new("UICorner", G2L["77"]);
G2L["78"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Green.UIStroke
G2L["79"] = Instance.new("UIStroke", G2L["77"]);
G2L["79"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Green.SelectionRing
G2L["7a"] = Instance.new("UIStroke", G2L["77"]);
G2L["7a"]["Transparency"] = 1;
G2L["7a"]["Thickness"] = 2;
G2L["7a"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["7a"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Cyan
G2L["7b"] = Instance.new("TextButton", G2L["71"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(0, 213, 171);
G2L["7b"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["7b"]["LayoutOrder"] = 3;
G2L["7b"]["Text"] = [[]];
G2L["7b"]["Name"] = [[Cyan]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Cyan.UICorner
G2L["7c"] = Instance.new("UICorner", G2L["7b"]);
G2L["7c"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Cyan.UIStroke
G2L["7d"] = Instance.new("UIStroke", G2L["7b"]);
G2L["7d"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Cyan.SelectionRing
G2L["7e"] = Instance.new("UIStroke", G2L["7b"]);
G2L["7e"]["Thickness"] = 2;
G2L["7e"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["7e"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.White
G2L["7f"] = Instance.new("TextButton", G2L["71"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["7f"]["LayoutOrder"] = 4;
G2L["7f"]["Text"] = [[]];
G2L["7f"]["Name"] = [[White]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.White.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7f"]);
G2L["80"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.White.UIStroke
G2L["81"] = Instance.new("UIStroke", G2L["7f"]);
G2L["81"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.White.SelectionRing
G2L["82"] = Instance.new("UIStroke", G2L["7f"]);
G2L["82"]["Transparency"] = 1;
G2L["82"]["Thickness"] = 2;
G2L["82"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["82"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Yellow
G2L["83"] = Instance.new("TextButton", G2L["71"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(255, 221, 51);
G2L["83"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["83"]["LayoutOrder"] = 5;
G2L["83"]["Text"] = [[]];
G2L["83"]["Name"] = [[Yellow]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Yellow.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);
G2L["84"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Yellow.UIStroke
G2L["85"] = Instance.new("UIStroke", G2L["83"]);
G2L["85"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Yellow.SelectionRing
G2L["86"] = Instance.new("UIStroke", G2L["83"]);
G2L["86"]["Transparency"] = 1;
G2L["86"]["Thickness"] = 2;
G2L["86"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["86"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Pink
G2L["87"] = Instance.new("TextButton", G2L["71"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(255, 101, 201);
G2L["87"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["87"]["LayoutOrder"] = 6;
G2L["87"]["Text"] = [[]];
G2L["87"]["Name"] = [[Pink]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Pink.UICorner
G2L["88"] = Instance.new("UICorner", G2L["87"]);
G2L["88"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Pink.UIStroke
G2L["89"] = Instance.new("UIStroke", G2L["87"]);
G2L["89"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVColor.ColorContainer.Pink.SelectionRing
G2L["8a"] = Instance.new("UIStroke", G2L["87"]);
G2L["8a"]["Transparency"] = 1;
G2L["8a"]["Thickness"] = 2;
G2L["8a"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["8a"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize
G2L["8b"] = Instance.new("Frame", G2L["40"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["8b"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["8b"]["Name"] = [[FOVSize]];
G2L["8b"]["LayoutOrder"] = 8;


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.UICorner
G2L["8c"] = Instance.new("UICorner", G2L["8b"]);



-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.UIStroke
G2L["8d"] = Instance.new("UIStroke", G2L["8b"]);
G2L["8d"]["Thickness"] = 0.5;
G2L["8d"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.Label
G2L["8e"] = Instance.new("TextLabel", G2L["8b"]);
G2L["8e"]["TextSize"] = 14;
G2L["8e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["8e"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["8e"]["BackgroundTransparency"] = 1;
G2L["8e"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["8e"]["Text"] = [[FOV Size]];
G2L["8e"]["Name"] = [[Label]];
G2L["8e"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SubLabel
G2L["8f"] = Instance.new("TextLabel", G2L["8b"]);
G2L["8f"]["TextSize"] = 11;
G2L["8f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8f"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["8f"]["BackgroundTransparency"] = 1;
G2L["8f"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["8f"]["Text"] = [[Radius of the targeting circle]];
G2L["8f"]["Name"] = [[SubLabel]];
G2L["8f"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SliderTrack
G2L["90"] = Instance.new("Frame", G2L["8b"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 56);
G2L["90"]["Size"] = UDim2.new(0, 110, 0, 6);
G2L["90"]["Position"] = UDim2.new(1, -60, 0.5, -3);
G2L["90"]["Name"] = [[SliderTrack]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SliderTrack.UICorner
G2L["91"] = Instance.new("UICorner", G2L["90"]);
G2L["91"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SliderTrack.SliderFill
G2L["92"] = Instance.new("Frame", G2L["90"]);
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["92"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["92"]["Name"] = [[SliderFill]];


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SliderTrack.SliderFill.UICorner
G2L["93"] = Instance.new("UICorner", G2L["92"]);
G2L["93"]["CornerRadius"] = UDim.new(0, 3);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.SliderTrack.Hitbox
G2L["94"] = Instance.new("TextButton", G2L["90"]);
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["Size"] = UDim2.new(1, 0, 1, 10);
G2L["94"]["Text"] = [[]];
G2L["94"]["Name"] = [[Hitbox]];
G2L["94"]["Position"] = UDim2.new(0, 0, 0, -5);


-- StarterGui.VIP.MainFrame.AimbotFrame.FOVSize.ValueLabel
G2L["95"] = Instance.new("TextLabel", G2L["8b"]);
G2L["95"]["TextSize"] = 12;
G2L["95"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["95"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["95"]["TextColor3"] = Color3.fromRGB(101, 255, 101);
G2L["95"]["BackgroundTransparency"] = 1;
G2L["95"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["95"]["Text"] = [[150]];
G2L["95"]["Name"] = [[ValueLabel]];
G2L["95"]["Position"] = UDim2.new(1, -14, 0.5, -10);


-- StarterGui.VIP.MainFrame.ESPFrame
G2L["96"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["96"]["Visible"] = false;
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["96"]["Name"] = [[ESPFrame]];
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 27);
G2L["96"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["96"]["Size"] = UDim2.new(1, -178, 1, -70);
G2L["96"]["ScrollBarImageColor3"] = Color3.fromRGB(51, 51, 57);
G2L["96"]["Position"] = UDim2.new(0, 178, 0, 42);
G2L["96"]["ScrollBarThickness"] = 4;


-- StarterGui.VIP.MainFrame.ESPFrame.UICorner
G2L["97"] = Instance.new("UICorner", G2L["96"]);
G2L["97"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.ESPFrame.UIStroke
G2L["98"] = Instance.new("UIStroke", G2L["96"]);
G2L["98"]["Thickness"] = 0.5;
G2L["98"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ESPFrame.UIListLayout
G2L["99"] = Instance.new("UIListLayout", G2L["96"]);
G2L["99"]["Padding"] = UDim.new(0, 6);
G2L["99"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.ESPFrame.UIPadding
G2L["9a"] = Instance.new("UIPadding", G2L["96"]);
G2L["9a"]["PaddingTop"] = UDim.new(0, 10);
G2L["9a"]["PaddingRight"] = UDim.new(0, 10);
G2L["9a"]["PaddingLeft"] = UDim.new(0, 10);
G2L["9a"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP
G2L["9b"] = Instance.new("Frame", G2L["96"]);
G2L["9b"]["BorderSizePixel"] = 0;
G2L["9b"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["9b"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["9b"]["Name"] = [[ToggleESP]];
G2L["9b"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9b"]);



-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.UIStroke
G2L["9d"] = Instance.new("UIStroke", G2L["9b"]);
G2L["9d"]["Thickness"] = 0.5;
G2L["9d"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.Label
G2L["9e"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9e"]["TextSize"] = 14;
G2L["9e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["9e"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["9e"]["BackgroundTransparency"] = 1;
G2L["9e"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["9e"]["Text"] = [[ESP]];
G2L["9e"]["Name"] = [[Label]];
G2L["9e"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.SubLabel
G2L["9f"] = Instance.new("TextLabel", G2L["9b"]);
G2L["9f"]["TextSize"] = 11;
G2L["9f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["9f"]["BackgroundTransparency"] = 1;
G2L["9f"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["9f"]["Text"] = [[Highlight all players and NPCs]];
G2L["9f"]["Name"] = [[SubLabel]];
G2L["9f"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.ToggleSwitch
G2L["a0"] = Instance.new("Frame", G2L["9b"]);
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["a0"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["a0"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["a0"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.ToggleSwitch.UICorner
G2L["a1"] = Instance.new("UICorner", G2L["a0"]);
G2L["a1"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.ToggleSwitch.Knob
G2L["a2"] = Instance.new("Frame", G2L["a0"]);
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["a2"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["a2"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["a2"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.ESPFrame.ToggleESP.ToggleSwitch.Knob.UICorner
G2L["a3"] = Instance.new("UICorner", G2L["a2"]);
G2L["a3"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername
G2L["a4"] = Instance.new("Frame", G2L["96"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["a4"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["a4"]["Name"] = [[ShowUsername]];
G2L["a4"]["LayoutOrder"] = 2;


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.UICorner
G2L["a5"] = Instance.new("UICorner", G2L["a4"]);



-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.UIStroke
G2L["a6"] = Instance.new("UIStroke", G2L["a4"]);
G2L["a6"]["Thickness"] = 0.5;
G2L["a6"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.Label
G2L["a7"] = Instance.new("TextLabel", G2L["a4"]);
G2L["a7"]["TextSize"] = 14;
G2L["a7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a7"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["a7"]["BackgroundTransparency"] = 1;
G2L["a7"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["a7"]["Text"] = [[Show Username]];
G2L["a7"]["Name"] = [[Label]];
G2L["a7"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.SubLabel
G2L["a8"] = Instance.new("TextLabel", G2L["a4"]);
G2L["a8"]["TextSize"] = 11;
G2L["a8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a8"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["a8"]["BackgroundTransparency"] = 1;
G2L["a8"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["a8"]["Text"] = [[Display name above characters]];
G2L["a8"]["Name"] = [[SubLabel]];
G2L["a8"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.ToggleSwitch
G2L["a9"] = Instance.new("Frame", G2L["a4"]);
G2L["a9"]["BorderSizePixel"] = 0;
G2L["a9"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["a9"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["a9"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["a9"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.ToggleSwitch.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a9"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.ToggleSwitch.Knob
G2L["ab"] = Instance.new("Frame", G2L["a9"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["ab"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["ab"]["Position"] = UDim2.new(1, -20, 0.5, -9);
G2L["ab"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.ESPFrame.ShowUsername.ToggleSwitch.Knob.UICorner
G2L["ac"] = Instance.new("UICorner", G2L["ab"]);
G2L["ac"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth
G2L["ad"] = Instance.new("Frame", G2L["96"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["ad"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["ad"]["Name"] = [[ShowHealth]];
G2L["ad"]["LayoutOrder"] = 3;


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.UICorner
G2L["ae"] = Instance.new("UICorner", G2L["ad"]);



-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.UIStroke
G2L["af"] = Instance.new("UIStroke", G2L["ad"]);
G2L["af"]["Thickness"] = 0.5;
G2L["af"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.Label
G2L["b0"] = Instance.new("TextLabel", G2L["ad"]);
G2L["b0"]["TextSize"] = 14;
G2L["b0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b0"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["b0"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["b0"]["BackgroundTransparency"] = 1;
G2L["b0"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["b0"]["Text"] = [[Show Health]];
G2L["b0"]["Name"] = [[Label]];
G2L["b0"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.SubLabel
G2L["b1"] = Instance.new("TextLabel", G2L["ad"]);
G2L["b1"]["TextSize"] = 11;
G2L["b1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b1"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b1"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["b1"]["BackgroundTransparency"] = 1;
G2L["b1"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["b1"]["Text"] = [[Display health bar above characters]];
G2L["b1"]["Name"] = [[SubLabel]];
G2L["b1"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.ToggleSwitch
G2L["b2"] = Instance.new("Frame", G2L["ad"]);
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(101, 255, 101);
G2L["b2"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["b2"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["b2"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.ToggleSwitch.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b2"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.ToggleSwitch.Knob
G2L["b4"] = Instance.new("Frame", G2L["b2"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["b4"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["b4"]["Position"] = UDim2.new(1, -20, 0.5, -9);
G2L["b4"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.ESPFrame.ShowHealth.ToggleSwitch.Knob.UICorner
G2L["b5"] = Instance.new("UICorner", G2L["b4"]);
G2L["b5"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.NoclipFrame
G2L["b6"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["b6"]["Visible"] = false;
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["b6"]["Name"] = [[NoclipFrame]];
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 27);
G2L["b6"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["b6"]["Size"] = UDim2.new(1, -178, 1, -70);
G2L["b6"]["ScrollBarImageColor3"] = Color3.fromRGB(51, 51, 57);
G2L["b6"]["Position"] = UDim2.new(0, 178, 0, 42);
G2L["b6"]["ScrollBarThickness"] = 4;


-- StarterGui.VIP.MainFrame.NoclipFrame.UICorner
G2L["b7"] = Instance.new("UICorner", G2L["b6"]);
G2L["b7"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.NoclipFrame.UIStroke
G2L["b8"] = Instance.new("UIStroke", G2L["b6"]);
G2L["b8"]["Thickness"] = 0.5;
G2L["b8"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.NoclipFrame.UIListLayout
G2L["b9"] = Instance.new("UIListLayout", G2L["b6"]);
G2L["b9"]["Padding"] = UDim.new(0, 6);
G2L["b9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.NoclipFrame.UIPadding
G2L["ba"] = Instance.new("UIPadding", G2L["b6"]);
G2L["ba"]["PaddingTop"] = UDim.new(0, 10);
G2L["ba"]["PaddingRight"] = UDim.new(0, 10);
G2L["ba"]["PaddingLeft"] = UDim.new(0, 10);
G2L["ba"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip
G2L["bb"] = Instance.new("Frame", G2L["b6"]);
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["bb"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["bb"]["Name"] = [[ToggleNoclip]];
G2L["bb"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["bb"]);



-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.UIStroke
G2L["bd"] = Instance.new("UIStroke", G2L["bb"]);
G2L["bd"]["Thickness"] = 0.5;
G2L["bd"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.Label
G2L["be"] = Instance.new("TextLabel", G2L["bb"]);
G2L["be"]["TextSize"] = 14;
G2L["be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["be"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["be"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["be"]["BackgroundTransparency"] = 1;
G2L["be"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["be"]["Text"] = [[Noclip]];
G2L["be"]["Name"] = [[Label]];
G2L["be"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.SubLabel
G2L["bf"] = Instance.new("TextLabel", G2L["bb"]);
G2L["bf"]["TextSize"] = 11;
G2L["bf"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bf"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bf"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["bf"]["BackgroundTransparency"] = 1;
G2L["bf"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["bf"]["Text"] = [[Walk through walls and objects]];
G2L["bf"]["Name"] = [[SubLabel]];
G2L["bf"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.ToggleSwitch
G2L["c0"] = Instance.new("Frame", G2L["bb"]);
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["c0"]["Size"] = UDim2.new(0, 42, 0, 22);
G2L["c0"]["Position"] = UDim2.new(1, -54, 0.5, -11);
G2L["c0"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.ToggleSwitch.UICorner
G2L["c1"] = Instance.new("UICorner", G2L["c0"]);
G2L["c1"]["CornerRadius"] = UDim.new(0, 11);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.ToggleSwitch.Knob
G2L["c2"] = Instance.new("Frame", G2L["c0"]);
G2L["c2"]["BorderSizePixel"] = 0;
G2L["c2"]["BackgroundColor3"] = Color3.fromRGB(201, 201, 201);
G2L["c2"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["c2"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["c2"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleNoclip.ToggleSwitch.Knob.UICorner
G2L["c3"] = Instance.new("UICorner", G2L["c2"]);
G2L["c3"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling
G2L["c4"] = Instance.new("Frame", G2L["b6"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 29);
G2L["c4"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["c4"]["Name"] = [[ToggleFling]];


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.UICorner
G2L["c5"] = Instance.new("UICorner", G2L["c4"]);
G2L["c5"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.UIStroke
G2L["c6"] = Instance.new("UIStroke", G2L["c4"]);
G2L["c6"]["Color"] = Color3.fromRGB(41, 41, 51);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.Label
G2L["c7"] = Instance.new("TextLabel", G2L["c4"]);
G2L["c7"]["TextSize"] = 14;
G2L["c7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c7"]["TextColor3"] = Color3.fromRGB(221, 221, 231);
G2L["c7"]["BackgroundTransparency"] = 1;
G2L["c7"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["c7"]["Text"] = [[Fling]];
G2L["c7"]["Name"] = [[Label]];
G2L["c7"]["Position"] = UDim2.new(0, 12, 0, 0);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.SubLabel
G2L["c8"] = Instance.new("TextLabel", G2L["c4"]);
G2L["c8"]["TextSize"] = 11;
G2L["c8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c8"]["TextColor3"] = Color3.fromRGB(121, 121, 141);
G2L["c8"]["BackgroundTransparency"] = 1;
G2L["c8"]["Size"] = UDim2.new(0, 200, 0, 16);
G2L["c8"]["Text"] = [[Push all players away]];
G2L["c8"]["Name"] = [[SubLabel]];
G2L["c8"]["Position"] = UDim2.new(0, 12, 0, 28);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.ToggleSwitch
G2L["c9"] = Instance.new("Frame", G2L["c4"]);
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["c9"]["Size"] = UDim2.new(0, 40, 0, 18);
G2L["c9"]["Position"] = UDim2.new(1, -52, 0.5, -9);
G2L["c9"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.ToggleSwitch.UICorner
G2L["ca"] = Instance.new("UICorner", G2L["c9"]);
G2L["ca"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.ToggleSwitch.Knob
G2L["cb"] = Instance.new("Frame", G2L["c9"]);
G2L["cb"]["BorderSizePixel"] = 0;
G2L["cb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cb"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["cb"]["Position"] = UDim2.new(0, 2, 0.5, -7);
G2L["cb"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.NoclipFrame.ToggleFling.ToggleSwitch.Knob.UICorner
G2L["cc"] = Instance.new("UICorner", G2L["cb"]);
G2L["cc"]["CornerRadius"] = UDim.new(0, 7);


-- StarterGui.VIP.MainFrame.Vendingmashinetp
G2L["cd"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["cd"]["Visible"] = false;
G2L["cd"]["BorderSizePixel"] = 0;
G2L["cd"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["cd"]["Name"] = [[Vendingmashinetp]];
G2L["cd"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 27);
G2L["cd"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["cd"]["Size"] = UDim2.new(1, -178, 1, -70);
G2L["cd"]["ScrollBarImageColor3"] = Color3.fromRGB(51, 51, 57);
G2L["cd"]["Position"] = UDim2.new(0, 178, 0, 42);
G2L["cd"]["ScrollBarThickness"] = 4;


-- StarterGui.VIP.MainFrame.Vendingmashinetp.UICorner
G2L["ce"] = Instance.new("UICorner", G2L["cd"]);
G2L["ce"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.Vendingmashinetp.UIStroke
G2L["cf"] = Instance.new("UIStroke", G2L["cd"]);
G2L["cf"]["Thickness"] = 0.5;
G2L["cf"]["Color"] = Color3.fromRGB(51, 51, 57);


-- StarterGui.VIP.MainFrame.Vendingmashinetp.UIListLayout
G2L["d0"] = Instance.new("UIListLayout", G2L["cd"]);
G2L["d0"]["Padding"] = UDim.new(0, 6);
G2L["d0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.Vendingmashinetp.UIPadding
G2L["d1"] = Instance.new("UIPadding", G2L["cd"]);
G2L["d1"]["PaddingTop"] = UDim.new(0, 10);
G2L["d1"]["PaddingRight"] = UDim.new(0, 10);
G2L["d1"]["PaddingLeft"] = UDim.new(0, 10);
G2L["d1"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.VIP.MainFrame.Vendingmashinetp.TextLabel
G2L["d2"] = Instance.new("TextLabel", G2L["cd"]);
G2L["d2"]["TextSize"] = 13;
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d2"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["d2"]["BackgroundTransparency"] = 1;
G2L["d2"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["d2"]["Text"] = [[Hier kommt dein Inhalt rein]];
G2L["d2"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.GraphicsFrame
G2L["d3"] = Instance.new("ScrollingFrame", G2L["8"]);
G2L["d3"]["Visible"] = false;
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["d3"]["Name"] = [[GraphicsFrame]];
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 27);
G2L["d3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["d3"]["Size"] = UDim2.new(1, -178, 1, -70);
G2L["d3"]["ScrollBarImageColor3"] = Color3.fromRGB(101, 255, 101);
G2L["d3"]["Position"] = UDim2.new(0, 178, 0, 42);
G2L["d3"]["ScrollBarThickness"] = 4;


-- StarterGui.VIP.MainFrame.GraphicsFrame.UICorner
G2L["d4"] = Instance.new("UICorner", G2L["d3"]);



-- StarterGui.VIP.MainFrame.GraphicsFrame.UIStroke
G2L["d5"] = Instance.new("UIStroke", G2L["d3"]);
G2L["d5"]["Color"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.VIP.MainFrame.GraphicsFrame.UIListLayout
G2L["d6"] = Instance.new("UIListLayout", G2L["d3"]);
G2L["d6"]["Padding"] = UDim.new(0, 6);
G2L["d6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VIP.MainFrame.GraphicsFrame.UIPadding
G2L["d7"] = Instance.new("UIPadding", G2L["d3"]);
G2L["d7"]["PaddingTop"] = UDim.new(0, 8);
G2L["d7"]["PaddingRight"] = UDim.new(0, 10);
G2L["d7"]["PaddingLeft"] = UDim.new(0, 10);
G2L["d7"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright
G2L["d8"] = Instance.new("Frame", G2L["d3"]);
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["d8"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["d8"]["Name"] = [[FullBright]];
G2L["d8"]["LayoutOrder"] = 1;


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.UICorner
G2L["d9"] = Instance.new("UICorner", G2L["d8"]);



-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.UIStroke
G2L["da"] = Instance.new("UIStroke", G2L["d8"]);
G2L["da"]["Color"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.Label
G2L["db"] = Instance.new("TextLabel", G2L["d8"]);
G2L["db"]["TextSize"] = 14;
G2L["db"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["db"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["db"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["db"]["BackgroundTransparency"] = 1;
G2L["db"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["db"]["Text"] = [[Full Bright]];
G2L["db"]["Name"] = [[Label]];
G2L["db"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.SubLabel
G2L["dc"] = Instance.new("TextLabel", G2L["d8"]);
G2L["dc"]["TextSize"] = 11;
G2L["dc"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["dc"]["Text"] = [[See everything even in the dark]];
G2L["dc"]["Name"] = [[SubLabel]];
G2L["dc"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.ToggleSwitch
G2L["dd"] = Instance.new("Frame", G2L["d8"]);
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["dd"]["Size"] = UDim2.new(0, 44, 0, 22);
G2L["dd"]["Position"] = UDim2.new(1, -56, 0.5, -11);
G2L["dd"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.ToggleSwitch.UICorner
G2L["de"] = Instance.new("UICorner", G2L["dd"]);
G2L["de"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.ToggleSwitch.Knob
G2L["df"] = Instance.new("Frame", G2L["dd"]);
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["df"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["df"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.FullBright.ToggleSwitch.Knob.UICorner
G2L["e0"] = Instance.new("UICorner", G2L["df"]);
G2L["e0"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton
G2L["e1"] = Instance.new("Frame", G2L["d3"]);
G2L["e1"]["BorderSizePixel"] = 0;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["e1"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["e1"]["Name"] = [[ShowSkeleton]];
G2L["e1"]["LayoutOrder"] = 2;


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.UICorner
G2L["e2"] = Instance.new("UICorner", G2L["e1"]);



-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.UIStroke
G2L["e3"] = Instance.new("UIStroke", G2L["e1"]);
G2L["e3"]["Color"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.Label
G2L["e4"] = Instance.new("TextLabel", G2L["e1"]);
G2L["e4"]["TextSize"] = 14;
G2L["e4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e4"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["e4"]["BackgroundTransparency"] = 1;
G2L["e4"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["e4"]["Text"] = [[Show Skeleton]];
G2L["e4"]["Name"] = [[Label]];
G2L["e4"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.SubLabel
G2L["e5"] = Instance.new("TextLabel", G2L["e1"]);
G2L["e5"]["TextSize"] = 11;
G2L["e5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e5"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e5"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["e5"]["BackgroundTransparency"] = 1;
G2L["e5"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["e5"]["Text"] = [[Display skeleton overlay on characters]];
G2L["e5"]["Name"] = [[SubLabel]];
G2L["e5"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.ToggleSwitch
G2L["e6"] = Instance.new("Frame", G2L["e1"]);
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["e6"]["Size"] = UDim2.new(0, 44, 0, 22);
G2L["e6"]["Position"] = UDim2.new(1, -56, 0.5, -11);
G2L["e6"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.ToggleSwitch.UICorner
G2L["e7"] = Instance.new("UICorner", G2L["e6"]);
G2L["e7"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.ToggleSwitch.Knob
G2L["e8"] = Instance.new("Frame", G2L["e6"]);
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["e8"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["e8"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.ShowSkeleton.ToggleSwitch.Knob.UICorner
G2L["e9"] = Instance.new("UICorner", G2L["e8"]);
G2L["e9"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen
G2L["ea"] = Instance.new("Frame", G2L["d3"]);
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["ea"]["Size"] = UDim2.new(1, 0, 0, 47);
G2L["ea"]["Name"] = [[NightScreen]];
G2L["ea"]["LayoutOrder"] = 3;


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.UICorner
G2L["eb"] = Instance.new("UICorner", G2L["ea"]);



-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.UIStroke
G2L["ec"] = Instance.new("UIStroke", G2L["ea"]);
G2L["ec"]["Color"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.Label
G2L["ed"] = Instance.new("TextLabel", G2L["ea"]);
G2L["ed"]["TextSize"] = 14;
G2L["ed"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ed"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ed"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["ed"]["BackgroundTransparency"] = 1;
G2L["ed"]["Size"] = UDim2.new(1, -200, 0, 18);
G2L["ed"]["Text"] = [[Night Screen]];
G2L["ed"]["Name"] = [[Label]];
G2L["ed"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.SubLabel
G2L["ee"] = Instance.new("TextLabel", G2L["ea"]);
G2L["ee"]["TextSize"] = 11;
G2L["ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ee"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ee"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["ee"]["BackgroundTransparency"] = 1;
G2L["ee"]["Size"] = UDim2.new(1, -200, 0, 14);
G2L["ee"]["Text"] = [[Green night vision overlay]];
G2L["ee"]["Name"] = [[SubLabel]];
G2L["ee"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.ToggleSwitch
G2L["ef"] = Instance.new("Frame", G2L["ea"]);
G2L["ef"]["BorderSizePixel"] = 0;
G2L["ef"]["BackgroundColor3"] = Color3.fromRGB(49, 49, 49);
G2L["ef"]["Size"] = UDim2.new(0, 44, 0, 22);
G2L["ef"]["Position"] = UDim2.new(1, -56, 0.5, -11);
G2L["ef"]["Name"] = [[ToggleSwitch]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.ToggleSwitch.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ef"]);
G2L["f0"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.ToggleSwitch.Knob
G2L["f1"] = Instance.new("Frame", G2L["ef"]);
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["f1"]["Position"] = UDim2.new(0, 2, 0.5, -9);
G2L["f1"]["Name"] = [[Knob]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.NightScreen.ToggleSwitch.Knob.UICorner
G2L["f2"] = Instance.new("UICorner", G2L["f1"]);
G2L["f2"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor
G2L["f3"] = Instance.new("Frame", G2L["d3"]);
G2L["f3"]["BorderSizePixel"] = 0;
G2L["f3"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 39);
G2L["f3"]["Size"] = UDim2.new(1, 0, 0, 80);
G2L["f3"]["Name"] = [[SkinColor]];
G2L["f3"]["LayoutOrder"] = 4;


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.UICorner
G2L["f4"] = Instance.new("UICorner", G2L["f3"]);



-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.UIStroke
G2L["f5"] = Instance.new("UIStroke", G2L["f3"]);
G2L["f5"]["Color"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.Label
G2L["f6"] = Instance.new("TextLabel", G2L["f3"]);
G2L["f6"]["TextSize"] = 14;
G2L["f6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f6"]["TextColor3"] = Color3.fromRGB(231, 231, 236);
G2L["f6"]["BackgroundTransparency"] = 1;
G2L["f6"]["Size"] = UDim2.new(1, -20, 0, 18);
G2L["f6"]["Text"] = [[Skin Color]];
G2L["f6"]["Name"] = [[Label]];
G2L["f6"]["Position"] = UDim2.new(0, 14, 0, 7);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.SubLabel
G2L["f7"] = Instance.new("TextLabel", G2L["f3"]);
G2L["f7"]["TextSize"] = 11;
G2L["f7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f7"]["TextColor3"] = Color3.fromRGB(91, 91, 101);
G2L["f7"]["BackgroundTransparency"] = 1;
G2L["f7"]["Size"] = UDim2.new(1, -20, 0, 14);
G2L["f7"]["Text"] = [[Change your character's skin color]];
G2L["f7"]["Name"] = [[SubLabel]];
G2L["f7"]["Position"] = UDim2.new(0, 14, 0, 25);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer
G2L["f8"] = Instance.new("Frame", G2L["f3"]);
G2L["f8"]["Size"] = UDim2.new(1, -28, 0, 28);
G2L["f8"]["Position"] = UDim2.new(0, 14, 0, 44);
G2L["f8"]["Name"] = [[ColorContainer]];
G2L["f8"]["BackgroundTransparency"] = 1;


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.UIListLayout
G2L["f9"] = Instance.new("UIListLayout", G2L["f8"]);
G2L["f9"]["Padding"] = UDim.new(0, 6);
G2L["f9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["f9"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.White
G2L["fa"] = Instance.new("TextButton", G2L["f8"]);
G2L["fa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fa"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["fa"]["LayoutOrder"] = 1;
G2L["fa"]["Text"] = [[]];
G2L["fa"]["Name"] = [[White]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.White.UICorner
G2L["fb"] = Instance.new("UICorner", G2L["fa"]);
G2L["fb"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.White.UIStroke
G2L["fc"] = Instance.new("UIStroke", G2L["fa"]);
G2L["fc"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.White.SelectionRing
G2L["fd"] = Instance.new("UIStroke", G2L["fa"]);
G2L["fd"]["Transparency"] = 1;
G2L["fd"]["Thickness"] = 2;
G2L["fd"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["fd"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Black
G2L["fe"] = Instance.new("TextButton", G2L["f8"]);
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["fe"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["fe"]["LayoutOrder"] = 2;
G2L["fe"]["Text"] = [[]];
G2L["fe"]["Name"] = [[Black]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Black.UICorner
G2L["ff"] = Instance.new("UICorner", G2L["fe"]);
G2L["ff"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Black.UIStroke
G2L["100"] = Instance.new("UIStroke", G2L["fe"]);
G2L["100"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Black.SelectionRing
G2L["101"] = Instance.new("UIStroke", G2L["fe"]);
G2L["101"]["Transparency"] = 1;
G2L["101"]["Thickness"] = 2;
G2L["101"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["101"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Red
G2L["102"] = Instance.new("TextButton", G2L["f8"]);
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 81, 81);
G2L["102"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["102"]["LayoutOrder"] = 3;
G2L["102"]["Text"] = [[]];
G2L["102"]["Name"] = [[Red]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Red.UICorner
G2L["103"] = Instance.new("UICorner", G2L["102"]);
G2L["103"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Red.UIStroke
G2L["104"] = Instance.new("UIStroke", G2L["102"]);
G2L["104"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Red.SelectionRing
G2L["105"] = Instance.new("UIStroke", G2L["102"]);
G2L["105"]["Transparency"] = 1;
G2L["105"]["Thickness"] = 2;
G2L["105"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["105"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Blue
G2L["106"] = Instance.new("TextButton", G2L["f8"]);
G2L["106"]["BackgroundColor3"] = Color3.fromRGB(81, 81, 255);
G2L["106"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["106"]["LayoutOrder"] = 4;
G2L["106"]["Text"] = [[]];
G2L["106"]["Name"] = [[Blue]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Blue.UICorner
G2L["107"] = Instance.new("UICorner", G2L["106"]);
G2L["107"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Blue.UIStroke
G2L["108"] = Instance.new("UIStroke", G2L["106"]);
G2L["108"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Blue.SelectionRing
G2L["109"] = Instance.new("UIStroke", G2L["106"]);
G2L["109"]["Transparency"] = 1;
G2L["109"]["Thickness"] = 2;
G2L["109"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["109"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Green
G2L["10a"] = Instance.new("TextButton", G2L["f8"]);
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(81, 255, 81);
G2L["10a"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["10a"]["LayoutOrder"] = 5;
G2L["10a"]["Text"] = [[]];
G2L["10a"]["Name"] = [[Green]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Green.UICorner
G2L["10b"] = Instance.new("UICorner", G2L["10a"]);
G2L["10b"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Green.UIStroke
G2L["10c"] = Instance.new("UIStroke", G2L["10a"]);
G2L["10c"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Green.SelectionRing
G2L["10d"] = Instance.new("UIStroke", G2L["10a"]);
G2L["10d"]["Transparency"] = 1;
G2L["10d"]["Thickness"] = 2;
G2L["10d"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["10d"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Yellow
G2L["10e"] = Instance.new("TextButton", G2L["f8"]);
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 81);
G2L["10e"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["10e"]["LayoutOrder"] = 6;
G2L["10e"]["Text"] = [[]];
G2L["10e"]["Name"] = [[Yellow]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Yellow.UICorner
G2L["10f"] = Instance.new("UICorner", G2L["10e"]);
G2L["10f"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Yellow.UIStroke
G2L["110"] = Instance.new("UIStroke", G2L["10e"]);
G2L["110"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Yellow.SelectionRing
G2L["111"] = Instance.new("UIStroke", G2L["10e"]);
G2L["111"]["Transparency"] = 1;
G2L["111"]["Thickness"] = 2;
G2L["111"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["111"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Orange
G2L["112"] = Instance.new("TextButton", G2L["f8"]);
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(255, 166, 51);
G2L["112"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["112"]["LayoutOrder"] = 7;
G2L["112"]["Text"] = [[]];
G2L["112"]["Name"] = [[Orange]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Orange.UICorner
G2L["113"] = Instance.new("UICorner", G2L["112"]);
G2L["113"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Orange.UIStroke
G2L["114"] = Instance.new("UIStroke", G2L["112"]);
G2L["114"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Orange.SelectionRing
G2L["115"] = Instance.new("UIStroke", G2L["112"]);
G2L["115"]["Transparency"] = 1;
G2L["115"]["Thickness"] = 2;
G2L["115"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["115"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Purple
G2L["116"] = Instance.new("TextButton", G2L["f8"]);
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(161, 81, 255);
G2L["116"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["116"]["LayoutOrder"] = 8;
G2L["116"]["Text"] = [[]];
G2L["116"]["Name"] = [[Purple]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Purple.UICorner
G2L["117"] = Instance.new("UICorner", G2L["116"]);
G2L["117"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Purple.UIStroke
G2L["118"] = Instance.new("UIStroke", G2L["116"]);
G2L["118"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Purple.SelectionRing
G2L["119"] = Instance.new("UIStroke", G2L["116"]);
G2L["119"]["Transparency"] = 1;
G2L["119"]["Thickness"] = 2;
G2L["119"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["119"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Pink
G2L["11a"] = Instance.new("TextButton", G2L["f8"]);
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(255, 131, 181);
G2L["11a"]["Size"] = UDim2.new(0, 28, 0, 28);
G2L["11a"]["LayoutOrder"] = 9;
G2L["11a"]["Text"] = [[]];
G2L["11a"]["Name"] = [[Pink]];


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Pink.UICorner
G2L["11b"] = Instance.new("UICorner", G2L["11a"]);
G2L["11b"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Pink.UIStroke
G2L["11c"] = Instance.new("UIStroke", G2L["11a"]);
G2L["11c"]["Color"] = Color3.fromRGB(61, 61, 71);


-- StarterGui.VIP.MainFrame.GraphicsFrame.SkinColor.ColorContainer.Pink.SelectionRing
G2L["11d"] = Instance.new("UIStroke", G2L["11a"]);
G2L["11d"]["Transparency"] = 1;
G2L["11d"]["Thickness"] = 2;
G2L["11d"]["Color"] = Color3.fromRGB(101, 255, 101);
G2L["11d"]["Name"] = [[SelectionRing]];


-- StarterGui.VIP.NightOverlay
G2L["11e"] = Instance.new("Frame", G2L["1"]);
G2L["11e"]["Visible"] = false;
G2L["11e"]["ZIndex"] = 0;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
G2L["11e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["11e"]["Name"] = [[NightOverlay]];
G2L["11e"]["BackgroundTransparency"] = 0.8;


-- StarterGui.VIP.NightOverlay.UICorner
G2L["11f"] = Instance.new("UICorner", G2L["11e"]);
G2L["11f"]["CornerRadius"] = UDim.new(0, 0);


-- StarterGui.VIP.GuiLogic
local function C_2()
local script = G2L["2"];
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	
	local player = Players.LocalPlayer
	local screenGui = script.Parent
	local mainFrame = screenGui:FindFirstChild("MainFrame")
	local section = mainFrame and mainFrame:FindFirstChild("Section")
	local choosingFrame = mainFrame and mainFrame:FindFirstChild("ChoosingFrame")
	local underSection = mainFrame and mainFrame:FindFirstChild("UnderSection")
	local fovCircle = screenGui:FindFirstChild("FOVCircle")
	
	-- Content frames
	local aimbotFrame = mainFrame and mainFrame:FindFirstChild("AimbotFrame")
	local espFrame = mainFrame and mainFrame:FindFirstChild("ESPFrame")
	local noclipFrame = mainFrame and mainFrame:FindFirstChild("NoclipFrame")
	local vendingFrame = mainFrame and mainFrame:FindFirstChild("Vendingmashinetp")
	
	local graphicsFrame = mainFrame and mainFrame:FindFirstChild("GraphicsFrame")
	
	local contentFrames = {aimbotFrame, espFrame, noclipFrame, graphicsFrame, vendingFrame}
	
	-- Header buttons
	local closeBtn = section and section:FindFirstChild("Close")
	local minBtn = section and section:FindFirstChild("Minimize")
	local fsBtn = section and section:FindFirstChild("Fullscreen")
	
	-- Sidebar buttons
	local sidebarBtns = {}
	if choosingFrame then
		for _, child in choosingFrame:GetChildren() do
			if child:IsA("Frame") and child:FindFirstChild("Label") then
				sidebarBtns[child.Name] = child
			end
		end
	end
	
	-- State
	local ORIGINAL_SIZE = mainFrame and mainFrame.Size or UDim2.new(0, 680, 0, 500)
	local ORIGINAL_POS = mainFrame and mainFrame.Position or UDim2.new(0.25, 0, 0.15, 0)
	local isFullscreen = false
	local isMinimized = false
	local isGuiOpen = true
	local activeTab = "AimbotBtn"
	
	-- ============ TAB SWITCHING ============
	local tabToFrame = {
		AimbotBtn = aimbotFrame,
		ESPBtn = espFrame,
		NoclipBtn = noclipFrame,
		GraphicsBtn = graphicsFrame,
		VendingBtn = vendingFrame,
	}
	
	local function switchTab(tabName)
		activeTab = tabName
		for name, frame in tabToFrame do
			if frame then
				frame.Visible = (name == tabName)
			end
		end
		for name, btn in sidebarBtns do
			local indicator = btn:FindFirstChild("Indicator")
			local label = btn:FindFirstChild("Label")
			if indicator then indicator.Visible = (name == tabName) end
			if label then label.TextColor3 = (name == tabName) and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(150, 150, 160) end
		end
	end
	
	switchTab("AimbotBtn")
	
	for name, btn in sidebarBtns do
		btn.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				switchTab(name)
			end
		end)
	end
	
	-- ============ TOGGLE SWITCH LOGIC ============
	local ON_COLOR = Color3.fromRGB(100, 255, 100)
	local OFF_COLOR = Color3.fromRGB(48, 48, 48)
	local KNOB_LEFT = UDim2.new(0, 2, 0.5, -9)
	local KNOB_RIGHT = UDim2.new(1, -20, 0.5, -9)
	
	local function setupToggle(toggleSwitch, attributeName)
		if not toggleSwitch then return end
		local knob = toggleSwitch:FindFirstChild("Knob")
		if not knob then return end
	
		local function updateVisual(isOn)
			local targetPos = isOn and KNOB_RIGHT or KNOB_LEFT
			local targetColor = isOn and ON_COLOR or OFF_COLOR
			TweenService:Create(knob, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {Position = targetPos}):Play()
			TweenService:Create(toggleSwitch, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {BackgroundColor3 = targetColor}):Play()
		end
	
		-- Set initial visual from attribute
		local currentVal = screenGui:GetAttribute(attributeName)
		if currentVal ~= nil then
			updateVisual(currentVal)
		end
	
		toggleSwitch.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local newVal = not screenGui:GetAttribute(attributeName)
				screenGui:SetAttribute(attributeName, newVal)
				updateVisual(newVal)
			end
		end)
	end
	
	-- Setup all toggles
	if aimbotFrame then
		local toggleRow = aimbotFrame:FindFirstChild("ToggleAimbot")
		if toggleRow then setupToggle(toggleRow:FindFirstChild("ToggleSwitch"), "AimbotEnabled") end
	
		local fovRow = aimbotFrame:FindFirstChild("FOVToggle")
		if fovRow then setupToggle(fovRow:FindFirstChild("ToggleSwitch"), "FovEnabled") end
	end
	
	if espFrame then
		local espRow = espFrame:FindFirstChild("ToggleESP")
		if espRow then setupToggle(espRow:FindFirstChild("ToggleSwitch"), "EspEnabled") end
	
		local unameRow = espFrame:FindFirstChild("ShowUsername")
		if unameRow then setupToggle(unameRow:FindFirstChild("ToggleSwitch"), "EspShowUsername") end
	
		local hpRow = espFrame:FindFirstChild("ShowHealth")
		if hpRow then setupToggle(hpRow:FindFirstChild("ToggleSwitch"), "EspShowHealth") end
	end
	
	if noclipFrame then
		local noclipRow = noclipFrame:FindFirstChild("ToggleNoclip")
		if noclipRow then setupToggle(noclipRow:FindFirstChild("ToggleSwitch"), "NoclipEnabled") end
	
		local flingRow = noclipFrame:FindFirstChild("ToggleFling")
		if flingRow then setupToggle(flingRow:FindFirstChild("ToggleSwitch"), "FlingEnabled") end
	end
	
	if graphicsFrame then
		local fbRow = graphicsFrame:FindFirstChild("FullBright")
		if fbRow then setupToggle(fbRow:FindFirstChild("ToggleSwitch"), "FullBrightEnabled") end
	
		local skRow = graphicsFrame:FindFirstChild("ShowSkeleton")
		if skRow then setupToggle(skRow:FindFirstChild("ToggleSwitch"), "SkeletonEnabled") end
	
		local nsRow = graphicsFrame:FindFirstChild("NightScreen")
		if nsRow then setupToggle(nsRow:FindFirstChild("ToggleSwitch"), "NightScreenEnabled") end
	
		-- Skin Color buttons
		local skinRow = graphicsFrame:FindFirstChild("SkinColor")
		if skinRow then
			local container = skinRow:FindFirstChild("ColorContainer")
			if container then
				for _, btn in container:GetChildren() do
					if btn:IsA("TextButton") then
						btn.MouseButton1Click:Connect(function()
							for _, other in container:GetChildren() do
								if other:IsA("TextButton") then
									local ring = other:FindFirstChild("SelectionRing")
									if ring then ring.Transparency = 1 end
								end
							end
							local ring = btn:FindFirstChild("SelectionRing")
							if ring then ring.Transparency = 0 end
							screenGui:SetAttribute("SkinColor", btn.BackgroundColor3)
						end)
					end
				end
			end
		end
	end
	
	-- ============ KEYBIND BUTTON ============
	if aimbotFrame then
		local keyRow = aimbotFrame:FindFirstChild("ToggleKey")
		if keyRow then
			local keyBtn = keyRow:FindFirstChild("KeybindBtn")
			if keyBtn then
				local listening = false
				keyBtn.MouseButton1Click:Connect(function()
					if listening then return end
					listening = true
					keyBtn.Text = "..."
					keyBtn.TextColor3 = Color3.fromRGB(255, 220, 50)
	
					local conn
					conn = UserInputService.InputBegan:Connect(function(input, gp)
						if gp then return end
						local keyName = input.KeyCode.Name
						if keyName == "Unknown" then return end
						screenGui:SetAttribute("AimbotKeybind", keyName)
						keyBtn.Text = keyName:sub(1, 3)
						keyBtn.TextColor3 = Color3.fromRGB(100, 255, 100)
						listening = false
						conn:Disconnect()
					end)
	
					-- Timeout after 5 seconds
					task.delay(5, function()
						if listening then
							listening = false
							local cur = screenGui:GetAttribute("AimbotKeybind") or "K"
							keyBtn.Text = cur:sub(1, 3)
							keyBtn.TextColor3 = Color3.fromRGB(100, 255, 100)
							conn:Disconnect()
						end
					end)
				end)
			end
		end
	end
	
	-- ============ SLIDER LOGIC ============
	local function setupSlider(track, fill, hitbox, attributeName, min, max, default, formatFunc)
		if not track or not fill then return end
		local value = screenGui:GetAttribute(attributeName) or default
		local pct = (value - min) / (max - min)
		fill.Size = UDim2.new(math.clamp(pct, 0, 1), 0, 1, 0)
	
		local row = track.Parent
		local valLabel = row:FindFirstChild("ValueLabel")
		if valLabel and formatFunc then
			valLabel.Text = formatFunc(value)
		end
	
		local dragging = false
	
		local function updateSlider(inputX)
			local relX = math.clamp((inputX - track.AbsolutePosition.X) / track.AbsoluteSize.X, 0, 1)
			fill.Size = UDim2.new(relX, 0, 1, 0)
			local newVal = min + relX * (max - min)
			screenGui:SetAttribute(attributeName, newVal)
			if valLabel and formatFunc then
				valLabel.Text = formatFunc(newVal)
			end
		end
	
		if hitbox then
			hitbox.MouseButton1Down:Connect(function()
				dragging = true
				updateSlider(UserInputService:GetMouseLocation().X)
			end)
		end
	
		UserInputService.InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				updateSlider(input.Position.X)
			end
		end)
	
		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)
	end
	
	if aimbotFrame then
		local strRow = aimbotFrame:FindFirstChild("AimbotStrength")
		if strRow then
			setupSlider(
				strRow:FindFirstChild("SliderTrack"),
				strRow.SliderTrack:FindFirstChild("SliderFill"),
				strRow.SliderTrack:FindFirstChild("Hitbox"),
				"AimbotStrength",
				0.05, 1.0, 0.5,
				function(v) return math.floor(v * 100 + 0.5) .. "%" end
			)
		end
	
		local fovRow = aimbotFrame:FindFirstChild("FOVSize")
		if fovRow then
			setupSlider(
				fovRow:FindFirstChild("SliderTrack"),
				fovRow.SliderTrack:FindFirstChild("SliderFill"),
				fovRow.SliderTrack:FindFirstChild("Hitbox"),
				"FovSize",
				50, 500, 150,
				function(v) return math.floor(v + 0.5) end
			)
		end
	end
	
	-- ============ FOV COLOR BUTTONS ============
	if aimbotFrame then
		local colorRow = aimbotFrame:FindFirstChild("FOVColor")
		if colorRow then
			local container = colorRow:FindFirstChild("ColorContainer")
			if container then
				for _, btn in container:GetChildren() do
					if btn:IsA("TextButton") then
						btn.MouseButton1Click:Connect(function()
							-- Deselect all
							for _, other in container:GetChildren() do
								if other:IsA("TextButton") then
									local ring = other:FindFirstChild("SelectionRing")
									if ring then ring.Transparency = 1 end
								end
							end
							-- Select this one
							local ring = btn:FindFirstChild("SelectionRing")
							if ring then ring.Transparency = 0 end
							screenGui:SetAttribute("FovColor", btn.BackgroundColor3)
						end)
					end
				end
			end
		end
	end
	
	-- ============ WINDOW CONTROLS ============
	if closeBtn then
		closeBtn.MouseButton1Click:Connect(function()
			screenGui.Enabled = false
			isGuiOpen = false
		end)
	end
	
	if minBtn then
		minBtn.MouseButton1Click:Connect(function()
			if not mainFrame then return end
			isMinimized = not isMinimized
			if isMinimized then
				for _, f in contentFrames do if f then f.Visible = false end end
				if choosingFrame then choosingFrame.Visible = false end
				if underSection then underSection.Visible = false end
				mainFrame.Size = UDim2.new(mainFrame.Size.X.Scale, mainFrame.Size.X.Offset, 0, section.Size.Y.Offset)
			else
				if choosingFrame then choosingFrame.Visible = true end
				if underSection then underSection.Visible = true end
				switchTab(activeTab)
				if isFullscreen then
					mainFrame.Size = UDim2.new(1, 0, 1, 0)
					mainFrame.Position = UDim2.new(0, 0, 0, 0)
				else
					mainFrame.Size = ORIGINAL_SIZE
					mainFrame.Position = ORIGINAL_POS
				end
			end
		end)
	end
	
	if fsBtn then
		fsBtn.MouseButton1Click:Connect(function()
			if not mainFrame then return end
			isFullscreen = not isFullscreen
			if isFullscreen then
				mainFrame.Size = UDim2.new(1, 0, 1, 0)
				mainFrame.Position = UDim2.new(0, 0, 0, 0)
			else
				mainFrame.Size = ORIGINAL_SIZE
				mainFrame.Position = ORIGINAL_POS
			end
		end)
	end
	
	-- Toggle GUI with keybind
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		local keyName = screenGui:GetAttribute("AimbotKeybind") or "K"
		-- Only toggle GUI if RightShift is pressed (separate from aimbot toggle)
		if input.KeyCode == Enum.KeyCode.RightShift then
			isGuiOpen = not isGuiOpen
			screenGui.Enabled = isGuiOpen
		end
	end)
	
	-- ============ DRAG FUNCTIONALITY ============
	local dragToggle = false
	local dragStart = nil
	local startPos = nil
	
	if section then
		section.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local clickedOnButton = false
				for _, child in section:GetChildren() do
					if child:IsA("GuiButton") and child.AbsolutePosition and child.AbsoluteSize then
						local mousePos = UserInputService:GetMouseLocation()
						local btnPos = child.AbsolutePosition
						local btnSize = child.AbsoluteSize
						if mousePos.X >= btnPos.X and mousePos.X <= btnPos.X + btnSize.X
							and mousePos.Y >= btnPos.Y and mousePos.Y <= btnPos.Y + btnSize.Y then
							clickedOnButton = true
							break
						end
					end
				end
				if clickedOnButton then return end
	
				dragToggle = true
				dragStart = input.Position
				startPos = mainFrame.Position
			end
		end)
	
		section.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragToggle = false
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if dragToggle and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				mainFrame.Position = UDim2.new(
					startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y
				)
			end
		end)
	end
	
	-- ============ FOV CIRCLE UPDATE ============
	if fovCircle then
		local fovStroke = fovCircle:FindFirstChild("CircleStroke")
		screenGui:GetAttributeChangedSignal("FovEnabled"):Connect(function()
			fovCircle.Visible = screenGui:GetAttribute("FovEnabled")
		end)
		screenGui:GetAttributeChangedSignal("FovSize"):Connect(function()
			local size = screenGui:GetAttribute("FovSize") or 150
			fovCircle.Size = UDim2.new(0, size, 0, size)
			fovCircle.Position = UDim2.new(0.5, -size/2, 0.5, -size/2)
			fovCircle.Corner = nil
			local c = fovCircle:FindFirstChildOfClass("UICorner")
			if c then c.CornerRadius = UDim.new(0, size/2) end
		end)
		screenGui:GetAttributeChangedSignal("FovColor"):Connect(function()
			local color = screenGui:GetAttribute("FovColor")
			if color and fovStroke then
				fovStroke.Color = color
			end
		end)
		-- Initial size
		local initSize = screenGui:GetAttribute("FovSize") or 150
		fovCircle.Size = UDim2.new(0, initSize, 0, initSize)
		fovCircle.Position = UDim2.new(0.5, -initSize/2, 0.5, -initSize/2)
		local initCorner = fovCircle:FindFirstChildOfClass("UICorner")
		if initCorner then initCorner.CornerRadius = UDim.new(0, initSize/2) end
	end
end;
task.spawn(C_2);
-- StarterGui.VIP.VIPFeatures
local function C_3()
local script = G2L["3"];
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")
	
	local player = Players.LocalPlayer
	local screenGui = script.Parent
	local camera = workspace.CurrentCamera
	
	-- ============ INITIALIZE DEFAULT ATTRIBUTES ============
	local function initAttribute(name, default)
		if screenGui:GetAttribute(name) == nil then
			screenGui:SetAttribute(name, default)
		end
	end
	
	initAttribute("AimbotEnabled", false)
	initAttribute("AimbotActive", false)
	initAttribute("AimbotKeybind", "K")
	initAttribute("AimbotStrength", 0.5)
	initAttribute("FovEnabled", false)
	initAttribute("FovSize", 150)
	initAttribute("FovColor", Color3.fromRGB(255, 0, 0))
	initAttribute("EspEnabled", false)
	initAttribute("EspShowUsername", true)
	initAttribute("EspShowHealth", true)
	initAttribute("NoclipEnabled", false)
	initAttribute("FullBrightEnabled", false)
	initAttribute("SkeletonEnabled", false)
	initAttribute("NightScreenEnabled", false)
	initAttribute("FlingEnabled", false)
	-- SkinColor is only set when user clicks a color button
	
	-- ============ CHARACTER CACHE (Players + NPCs) ============
	local characterCache = {}
	
	local function findRootCharacter(humanoid)
		-- Walk up from humanoid.Parent to find the model that has HumanoidRootPart
		local current = humanoid.Parent
		while current and current ~= workspace do
			if current:FindFirstChild("HumanoidRootPart") or current:FindFirstChild("Head") then
				return current
			end
			current = current.Parent
		end
		return humanoid.Parent
	end
	
	local function updateCharacterCache()
		characterCache = {}
		local playerChars = {}
	
		-- Add all other players
		for _, p in Players:GetPlayers() do
			if p ~= player and p.Character then
				local hum = p.Character:FindFirstChildOfClass("Humanoid")
				if hum and hum.Health > 0 then
					table.insert(characterCache, {character = p.Character, name = p.Name, isPlayer = true})
					playerChars[p.Character] = true
				end
			end
		end
	
		-- Add NPCs from workspace
		for _, desc in workspace:GetDescendants() do
			if desc:IsA("Humanoid") and desc.Health > 0 then
				local char = findRootCharacter(desc)
				if char
					and char ~= player.Character
					and not playerChars[char]
					and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Head"))
					and char:IsA("Model") then
					-- Avoid duplicates
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
	
		-- Red highlight for all characters (players + NPCs)
		local highlight = Instance.new("Highlight")
		highlight.Name = "VIP_ESP_Highlight"
		highlight.FillTransparency = 0.8
		highlight.FillColor = Color3.fromRGB(255, 50, 50)
		highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
		highlight.OutlineTransparency = 0
		highlight.Adornee = char
		highlight.Parent = char
		objects.highlight = highlight
	
		-- BillboardGui for name + health (use Head or HumanoidRootPart as adornee)
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
				if objects then
					if objects.highlight then objects.highlight.Enabled = true end
					if objects.nameLabel then objects.nameLabel.Visible = showUsername end
					if objects.healthLabel then
						objects.healthLabel.Visible = showHealth
						local humanoid = char:FindFirstChildOfClass("Humanoid")
						if humanoid then
							local hp = math.floor(humanoid.Health + 0.5)
							local maxHp = math.floor(humanoid.MaxHealth + 0.5)
							objects.healthLabel.Text = "HP: " .. hp .. "/" .. maxHp
							local hpPct = humanoid.Health / humanoid.MaxHealth
							if hpPct > 0.5 then
								objects.healthLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
							elseif hpPct > 0.25 then
								objects.healthLabel.TextColor3 = Color3.fromRGB(255, 220, 50)
							else
								objects.healthLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
							end
						end
					end
				end
			else
				removeESPForCharacter(char)
			end
		end
	
		-- Clean up ESP for characters no longer in cache
		for char, _ in espObjects do
			if not processedChars[char] then
				removeESPForCharacter(char)
			end
		end
	end
	
	-- ESP update loop (every 0.2s for performance)
	task.spawn(function()
		while true do
			updateESP()
			task.wait(0.2)
		end
	end)
	
	Players.PlayerRemoving:Connect(function(otherPlayer)
		if otherPlayer.Character then
			removeESPForCharacter(otherPlayer.Character)
		end
	end)
	
	-- ============ NOCLIP LOGIC ============
	local noclipConn = nil
	
	local function stopNoclip()
		if noclipConn then
			noclipConn:Disconnect()
			noclipConn = nil
		end
		local char = player.Character
		if char then
			for _, part in char:GetDescendants() do
				if part:IsA("BasePart") then
					part.CanCollide = true
				end
			end
		end
	end
	
	local function startNoclip()
		if noclipConn then return end
		noclipConn = RunService.Stepped:Connect(function()
			if not screenGui:GetAttribute("NoclipEnabled") then
				stopNoclip()
				return
			end
			local char = player.Character
			if not char then return end
			for _, part in char:GetDescendants() do
				if part:IsA("BasePart") then
					part.CanCollide = false
				end
			end
		end)
	end
	
	screenGui:GetAttributeChangedSignal("NoclipEnabled"):Connect(function()
		if screenGui:GetAttribute("NoclipEnabled") then
			startNoclip()
		else
			stopNoclip()
		end
	end)
	
	-- ============ FULL BRIGHT LOGIC ============
	local savedLighting = {}
	
	local function enableFullBright()
		savedLighting = {
			Brightness = Lighting.Brightness,
			Ambient = Lighting.Ambient,
			OutdoorAmbient = Lighting.OutdoorAmbient,
			ClockTime = Lighting.ClockTime,
			FogEnd = Lighting.FogEnd,
			GlobalShadows = Lighting.GlobalShadows,
		}
		Lighting.Brightness = 2
		Lighting.Ambient = Color3.fromRGB(178, 178, 178)
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		Lighting.ClockTime = 14
		Lighting.FogEnd = 1000000
		Lighting.GlobalShadows = false
	end
	
	local function disableFullBright()
		if savedLighting.Brightness then
			Lighting.Brightness = savedLighting.Brightness
			Lighting.Ambient = savedLighting.Ambient
			Lighting.OutdoorAmbient = savedLighting.OutdoorAmbient
			Lighting.ClockTime = savedLighting.ClockTime
			Lighting.FogEnd = savedLighting.FogEnd
			Lighting.GlobalShadows = savedLighting.GlobalShadows
		end
	end
	
	screenGui:GetAttributeChangedSignal("FullBrightEnabled"):Connect(function()
		if screenGui:GetAttribute("FullBrightEnabled") then
			enableFullBright()
		else
			disableFullBright()
		end
	end)
	
	-- ============ SKIN COLOR LOGIC ============
	local function applySkinColor(color)
		if not color then return end
		local char = player.Character
		if not char then return end
	
		local bodyColors = char:FindFirstChildOfClass("BodyColors")
		if bodyColors then
			bodyColors.HeadColor3 = color
			bodyColors.TorsoColor3 = color
			bodyColors.LeftArmColor3 = color
			bodyColors.RightArmColor3 = color
			bodyColors.LeftLegColor3 = color
			bodyColors.RightLegColor3 = color
		else
			for _, part in char:GetDescendants() do
				if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
					part.Color = color
				end
			end
		end
	end
	
	screenGui:GetAttributeChangedSignal("SkinColor"):Connect(function()
		applySkinColor(screenGui:GetAttribute("SkinColor"))
	end)
	
	-- ============ SHOW SKELETON LOGIC ============
	local skeletonObjects = {}
	
	local R15_CONNECTIONS = {
		{"Head", "UpperTorso"},
		{"UpperTorso", "LowerTorso"},
		{"UpperTorso", "LeftUpperArm"},
		{"UpperTorso", "RightUpperArm"},
		{"LowerTorso", "LeftUpperLeg"},
		{"LowerTorso", "RightUpperLeg"},
		{"LeftUpperArm", "LeftLowerArm"},
		{"LeftLowerArm", "LeftHand"},
		{"RightUpperArm", "RightLowerArm"},
		{"RightLowerArm", "RightHand"},
		{"LeftUpperLeg", "LeftLowerLeg"},
		{"LeftLowerLeg", "LeftFoot"},
		{"RightUpperLeg", "RightLowerLeg"},
		{"RightLowerLeg", "RightFoot"},
	}
	
	local R6_CONNECTIONS = {
		{"Head", "Torso"},
		{"Torso", "Left Arm"},
		{"Torso", "Right Arm"},
		{"Torso", "Left Leg"},
		{"Torso", "Right Leg"},
	}
	
	local function createSkeletonForCharacter(char)
		if skeletonObjects[char] then return end
	
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end
	
		local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15
		local connections = isR15 and R15_CONNECTIONS or R6_CONNECTIONS
	
		local objects = {beams = {}, billboards = {}, attachments = {}}
	
		for _, conn in connections do
			local partA = char:FindFirstChild(conn[1])
			local partB = char:FindFirstChild(conn[2])
	
			if partA and partB and partA:IsA("BasePart") and partB:IsA("BasePart") then
				local attA = partA:FindFirstChild("VIP_Skel_Att")
				if not attA then
					attA = Instance.new("Attachment")
					attA.Name = "VIP_Skel_Att"
					attA.Parent = partA
				end
	
				local attB = partB:FindFirstChild("VIP_Skel_Att")
				if not attB then
					attB = Instance.new("Attachment")
					attB.Name = "VIP_Skel_Att"
					attB.Parent = partB
				end
	
				local beam = Instance.new("Beam")
				beam.Name = "VIP_Skeleton_Beam"
				beam.Attachment0 = attA
				beam.Attachment1 = attB
				beam.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
				beam.Transparency = NumberSequence.new(0.2)
				beam.Width0 = 0.15
				beam.Width1 = 0.15
				beam.LightEmission = 0.5
				beam.FaceCamera = true
				beam.Parent = partA
	
				table.insert(objects.beams, beam)
				table.insert(objects.attachments, attA)
				table.insert(objects.attachments, attB)
			end
		end
	
		-- BillboardGuis attached to body parts
		local bodyParts = isR15
			and {"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg"}
			or {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
	
		for _, partName in bodyParts do
			local part = char:FindFirstChild(partName)
			if part and part:IsA("BasePart") then
				local bb = Instance.new("BillboardGui")
				bb.Name = "VIP_Skel_Label"
				bb.Adornee = part
				bb.Size = UDim2.new(0, 100, 0, 16)
				bb.StudsOffset = Vector3.new(0, 1, 0)
				bb.AlwaysOnTop = true
				bb.MaxDistance = 500
				bb.Parent = part
	
				local label = Instance.new("TextLabel")
				label.Size = UDim2.new(1, 0, 1, 0)
				label.BackgroundTransparency = 1
				label.Text = partName
				label.TextColor3 = Color3.fromRGB(255, 255, 255)
				label.TextSize = 10
				label.Font = Enum.Font.GothamBold
				label.TextStrokeTransparency = 0.3
				label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
				label.Parent = bb
	
				table.insert(objects.billboards, bb)
			end
		end
	
		skeletonObjects[char] = objects
	end
	
	local function removeSkeletonForCharacter(char)
		local objects = skeletonObjects[char]
		if not objects then return end
	
		for _, beam in objects.beams do
			if beam.Parent then beam.Parent = nil end
		end
		for _, att in objects.attachments do
			if att.Parent then att.Parent = nil end
		end
		for _, bb in objects.billboards do
			if bb.Parent then bb.Parent = nil end
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
	
	-- Skeleton update loop
	task.spawn(function()
		while true do
			updateSkeletons()
			task.wait(0.5)
		end
	end)
	
	-- ============ NIGHT SCREEN LOGIC ============
	local nightOverlay = screenGui:FindFirstChild("NightOverlay")
	
	-- Initialize NightOverlay visibility
	if nightOverlay then
		nightOverlay.Visible = screenGui:GetAttribute("NightScreenEnabled") or false
	end
	
	screenGui:GetAttributeChangedSignal("NightScreenEnabled"):Connect(function()
		if nightOverlay then
			nightOverlay.Visible = screenGui:GetAttribute("NightScreenEnabled") or false
		end
	end)
	
	-- ============ FLING LOGIC (Aggressive) ============
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
	
			-- Push ALL other players away aggressively
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
	
			-- Also push NPCs away (unanchor them first so physics applies)
			for _, data in characterCache do
				if not data.isPlayer then
					local npcChar = data.character
					local npcHRP = npcChar:FindFirstChild("HumanoidRootPart")
					if npcHRP then
						-- Unanchor NPC parts so they can be flung
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
	
	-- ============ WORKSPACE DESCENDANT ADDED ============
	-- Force cache refresh when new objects are added to workspace
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
end;
task.spawn(C_3);

return G2L["1"];
