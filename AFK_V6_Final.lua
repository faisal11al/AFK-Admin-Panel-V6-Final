-- Updated on Aug 06, 2026
-- AFK Admin Panel - V6 Final (Blue & White Design + Real Spam + Logs Protection)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ToggleCircle = Instance.new("TextButton")
local PageHome = Instance.new("Frame")
local PageSettings = Instance.new("Frame")
local PagePresets = Instance.new("Frame")
local PageGhamid = Instance.new("Frame")

-- الألوان الأصلية (Blue & White)
local Color_MainBG = Color3.fromRGB(225, 245, 255)
local Color_SecondaryBG = Color3.fromRGB(255, 255, 255)
local Color_Accent = Color3.fromRGB(100, 180, 255)
local Color_TextDark = Color3.fromRGB(0, 80, 150)
local Color_TextLight = Color3.fromRGB(255, 255, 255)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local success = pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not success then ScreenGui.Parent = PlayerGui end

ScreenGui.Name = "AFK_V6_Final"
ScreenGui.ResetOnSpawn = false

ToggleCircle.Name = "ToggleCircle"
ToggleCircle.Parent = ScreenGui
ToggleCircle.BackgroundColor3 = Color_Accent
ToggleCircle.Position = UDim2.new(0, 30, 0.5, -30)
ToggleCircle.Size = UDim2.new(0, 55, 0, 55)
ToggleCircle.Font = Enum.Font.GothamBold
ToggleCircle.Text = "AFK"
ToggleCircle.TextColor3 = Color_TextLight
ToggleCircle.TextSize = 13
ToggleCircle.Visible = false
ToggleCircle.Active = true
ToggleCircle.Draggable = true
Instance.new("UICorner", ToggleCircle).CornerRadius = UDim.new(1, 0)
local CStroke = Instance.new("UIStroke", ToggleCircle)
CStroke.Color = Color_SecondaryBG
CStroke.Thickness = 1.5
CStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color_MainBG
MainFrame.Position = UDim2.new(0.5, -130, 0.5, -110)
MainFrame.Size = UDim2.new(0, 260, 0, 240)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame)
local MStroke = Instance.new("UIStroke", MainFrame)
MStroke.Color = Color_Accent
MStroke.Thickness = 2

-- ===== الصفحة الرئيسية =====
PageHome.Name = "PageHome"
PageHome.Parent = MainFrame
PageHome.BackgroundTransparency = 1
PageHome.Size = UDim2.new(1, 0, 1, 0)

local HomeTitle = Instance.new("TextLabel")
HomeTitle.Parent = PageHome
HomeTitle.BackgroundTransparency = 1
HomeTitle.Position = UDim2.new(0, 10, 0, 5)
HomeTitle.Size = UDim2.new(0.6, 0, 0, 20)
HomeTitle.Font = Enum.Font.GothamBold
HomeTitle.Text = "AFK"
HomeTitle.TextColor3 = Color_TextDark
HomeTitle.TextSize = 14
HomeTitle.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = PageHome
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -25, 0, 5)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color_TextDark
CloseBtn.TextSize = 14

local SettingsBtn = Instance.new("TextButton")
SettingsBtn.Parent = PageHome
SettingsBtn.BackgroundTransparency = 1
SettingsBtn.Position = UDim2.new(1, -50, 0, 5)
SettingsBtn.Size = UDim2.new(0, 20, 0, 20)
SettingsBtn.Font = Enum.Font.SourceSans
SettingsBtn.Text = "⚙️"
SettingsBtn.TextColor3 = Color_TextDark
SettingsBtn.TextSize = 16

local UsernameInput = Instance.new("TextBox")
UsernameInput.Parent = PageHome
UsernameInput.BackgroundColor3 = Color_SecondaryBG
UsernameInput.Position = UDim2.new(0.05, 0, 0.12, 0)
UsernameInput.Size = UDim2.new(0.9, 0, 0, 25)
UsernameInput.Font = Enum.Font.Gotham
UsernameInput.PlaceholderText = "Username..."
UsernameInput.PlaceholderColor3 = Color3.fromRGB(150, 180, 200)
UsernameInput.Text = ""
UsernameInput.TextColor3 = Color_TextDark
UsernameInput.TextSize = 13
Instance.new("UICorner", UsernameInput)
local UIStrokeInput = Instance.new("UIStroke", UsernameInput)
UIStrokeInput.Color = Color_Accent
UIStrokeInput.Thickness = 1

local ResultBox = Instance.new("TextBox")
ResultBox.Parent = PageHome
ResultBox.BackgroundColor3 = Color3.fromRGB(240, 250, 255)
ResultBox.Position = UDim2.new(0.05, 0, 0.28, 0)
ResultBox.Size = UDim2.new(0.9, 0, 0, 45)
ResultBox.Font = Enum.Font.Code
ResultBox.Text = "—"
ResultBox.TextColor3 = Color_TextDark
ResultBox.TextSize = 9
ResultBox.TextWrapped = true
ResultBox.TextEditable = false
Instance.new("UICorner", ResultBox)
local UIStrokeResult = Instance.new("UIStroke", ResultBox)
UIStrokeResult.Color = Color_Accent
UIStrokeResult.Thickness = 0.5

local CopyButton = Instance.new("TextButton")
CopyButton.Parent = PageHome
CopyButton.BackgroundColor3 = Color_Accent
CopyButton.Position = UDim2.new(0.05, 0, 0.52, 0)
CopyButton.Size = UDim2.new(0.9, 0, 0, 28)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "نسخ 📋"
CopyButton.TextColor3 = Color_TextLight
CopyButton.TextSize = 12
Instance.new("UICorner", CopyButton)

local SpamButton = Instance.new("TextButton")
SpamButton.Parent = PageHome
SpamButton.BackgroundColor3 = Color_Accent
SpamButton.Position = UDim2.new(0.05, 0, 0.67, 0)
SpamButton.Size = UDim2.new(0.9, 0, 0, 28)
SpamButton.Font = Enum.Font.GothamBold
SpamButton.Text = "تشغيل سبام"
SpamButton.TextColor3 = Color_TextLight
SpamButton.TextSize = 12
Instance.new("UICorner", SpamButton)

local LogsButton = Instance.new("TextButton")
LogsButton.Parent = PageHome
LogsButton.BackgroundColor3 = Color_SecondaryBG
LogsButton.Position = UDim2.new(0.05, 0, 0.82, 0)
LogsButton.Size = UDim2.new(0.9, 0, 0, 28)
LogsButton.Font = Enum.Font.GothamBold
LogsButton.Text = "تشغيل حماية logs/clogs"
LogsButton.TextColor3 = Color_TextDark
LogsButton.TextSize = 11
Instance.new("UICorner", LogsButton)
local LogsStroke = Instance.new("UIStroke", LogsButton)
LogsStroke.Color = Color_Accent
LogsStroke.Thickness = 1

local CreditLabel = Instance.new("TextLabel")
CreditLabel.Parent = PageHome
CreditLabel.BackgroundTransparency = 1
CreditLabel.Position = UDim2.new(0, 8, 1, -15)
CreditLabel.Size = UDim2.new(0.5, 0, 0, 12)
CreditLabel.Font = Enum.Font.Gotham
CreditLabel.Text = "by SAE5964"
CreditLabel.TextColor3 = Color3.fromRGB(100, 150, 200)
CreditLabel.TextSize = 8
CreditLabel.TextXAlignment = Enum.TextXAlignment.Left

-- ===== صفحة الإعدادات =====
PageSettings.Name = "PageSettings"
PageSettings.Parent = MainFrame
PageSettings.BackgroundTransparency = 1
PageSettings.Size = UDim2.new(1, 0, 1, 0)
PageSettings.Visible = false

local SettingsBack = Instance.new("TextButton")
SettingsBack.Parent = PageSettings
SettingsBack.BackgroundTransparency = 1
SettingsBack.Position = UDim2.new(0, 5, 0, 5)
SettingsBack.Size = UDim2.new(0, 30, 0, 20)
SettingsBack.Font = Enum.Font.GothamBold
SettingsBack.Text = "←"
SettingsBack.TextColor3 = Color_TextDark
SettingsBack.TextSize = 18

local SettingsTitle = Instance.new("TextLabel")
SettingsTitle.Parent = PageSettings
SettingsTitle.BackgroundTransparency = 1
SettingsTitle.Position = UDim2.new(0, 35, 0, 5)
SettingsTitle.Size = UDim2.new(0.7, 0, 0, 20)
SettingsTitle.Font = Enum.Font.GothamBold
SettingsTitle.Text = "الإعدادات"
SettingsTitle.TextColor3 = Color_TextDark
SettingsTitle.TextSize = 13
SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left

local PresetsBtn = Instance.new("TextButton")
PresetsBtn.Parent = PageSettings
PresetsBtn.BackgroundColor3 = Color_Accent
PresetsBtn.Position = UDim2.new(0.05, 0, 0.15, 0)
PresetsBtn.Size = UDim2.new(0.9, 0, 0, 28)
PresetsBtn.Font = Enum.Font.GothamBold
PresetsBtn.Text = "⭐ أفضل النسخ"
PresetsBtn.TextColor3 = Color_TextLight
PresetsBtn.TextSize = 12
Instance.new("UICorner", PresetsBtn)

local AddInput = Instance.new("TextBox")
AddInput.Parent = PageSettings
AddInput.BackgroundColor3 = Color_SecondaryBG
AddInput.Position = UDim2.new(0.05, 0, 0.32, 0)
AddInput.Size = UDim2.new(0.65, 0, 0, 25)
AddInput.Font = Enum.Font.Gotham
AddInput.PlaceholderText = "أمر جديد"
AddInput.PlaceholderColor3 = Color3.fromRGB(150, 180, 200)
AddInput.Text = ""
AddInput.TextColor3 = Color_TextDark
AddInput.TextSize = 11
Instance.new("UICorner", AddInput)
local UIStrokeAdd = Instance.new("UIStroke", AddInput)
UIStrokeAdd.Color = Color_Accent
UIStrokeAdd.Thickness = 1

local AddBtn = Instance.new("TextButton")
AddBtn.Parent = PageSettings
AddBtn.BackgroundColor3 = Color_Accent
AddBtn.Position = UDim2.new(0.73, 0, 0.32, 0)
AddBtn.Size = UDim2.new(0.22, 0, 0, 25)
AddBtn.Font = Enum.Font.GothamBold
AddBtn.Text = "+"
AddBtn.TextColor3 = Color_TextLight
AddBtn.TextSize = 16
Instance.new("UICorner", AddBtn)

local CmdListFrame = Instance.new("ScrollingFrame")
CmdListFrame.Parent = PageSettings
CmdListFrame.BackgroundTransparency = 1
CmdListFrame.Position = UDim2.new(0.05, 0, 0.45, 0)
CmdListFrame.Size = UDim2.new(0.9, 0, 0.52, 0)
CmdListFrame.CanvasSize = UDim2.new(0, 0, 3, 0)
CmdListFrame.ScrollBarThickness = 3
CmdListFrame.ScrollBarImageColor3 = Color_Accent
Instance.new("UIListLayout", CmdListFrame).Padding = UDim.new(0, 4)

-- ===== صفحة أفضل النسخ =====
PagePresets.Name = "PagePresets"
PagePresets.Parent = MainFrame
PagePresets.BackgroundTransparency = 1
PagePresets.Size = UDim2.new(1, 0, 1, 0)
PagePresets.Visible = false

local PresetsBack = Instance.new("TextButton")
PresetsBack.Parent = PagePresets
PresetsBack.BackgroundTransparency = 1
PresetsBack.Position = UDim2.new(0, 5, 0, 5)
PresetsBack.Size = UDim2.new(0, 30, 0, 20)
PresetsBack.Font = Enum.Font.GothamBold
PresetsBack.Text = "←"
PresetsBack.TextColor3 = Color_TextDark
PresetsBack.TextSize = 18

local PresetsTitle = Instance.new("TextLabel")
PresetsTitle.Parent = PagePresets
PresetsTitle.BackgroundTransparency = 1
PresetsTitle.Position = UDim2.new(0, 35, 0, 5)
PresetsTitle.Size = UDim2.new(0.7, 0, 0, 20)
PresetsTitle.Font = Enum.Font.GothamBold
PresetsTitle.Text = "⭐ أفضل النسخ"
PresetsTitle.TextColor3 = Color_TextDark
PresetsTitle.TextSize = 13
PresetsTitle.TextXAlignment = Enum.TextXAlignment.Left

local function createPresetBtn(parent, pos, text)
    local btn = Instance.new("TextButton")
    btn.Parent = parent
    btn.BackgroundColor3 = Color_SecondaryBG
    btn.Position = pos
    btn.Size = UDim2.new(0.8, 0, 0, 35)
    btn.Font = Enum.Font.GothamBold
    btn.Text = text
    btn.TextColor3 = Color_TextDark
    btn.TextSize = 14
    Instance.new("UICorner", btn)
    local stroke = Instance.new("UIStroke", btn)
    stroke.Color = Color_Accent
    stroke.Thickness = 1
    return btn
end

local Btn1 = createPresetBtn(PagePresets, UDim2.new(0.1, 0, 0.2, 0), "مشرف + ادمن")
local Btn2 = createPresetBtn(PagePresets, UDim2.new(0.1, 0, 0.45, 0), "هيد ادمن")
local Btn3 = createPresetBtn(PagePresets, UDim2.new(0.1, 0, 0.7, 0), "غامض")

-- ===== صفحة غامض (3 نسخ) =====
PageGhamid.Name = "PageGhamid"
PageGhamid.Parent = MainFrame
PageGhamid.BackgroundTransparency = 1
PageGhamid.Size = UDim2.new(1, 0, 1, 0)
PageGhamid.Visible = false

local GhamidBack = Instance.new("TextButton")
GhamidBack.Parent = PageGhamid
GhamidBack.BackgroundTransparency = 1
GhamidBack.Position = UDim2.new(0, 5, 0, 5)
GhamidBack.Size = UDim2.new(0, 30, 0, 20)
GhamidBack.Font = Enum.Font.GothamBold
GhamidBack.Text = "←"
GhamidBack.TextColor3 = Color_TextDark
GhamidBack.TextSize = 18

local GhamidTitle = Instance.new("TextLabel")
GhamidTitle.Parent = PageGhamid
GhamidTitle.BackgroundTransparency = 1
GhamidTitle.Position = UDim2.new(0, 35, 0, 5)
GhamidTitle.Size = UDim2.new(0.7, 0, 0, 20)
GhamidTitle.Font = Enum.Font.GothamBold
GhamidTitle.Text = "غامض - اختر نسخة"
GhamidTitle.TextColor3 = Color_TextDark
GhamidTitle.TextSize = 13
GhamidTitle.TextXAlignment = Enum.TextXAlignment.Left

local GBtn1 = createPresetBtn(PageGhamid, UDim2.new(0.1, 0, 0.18, 0), "نسخة رقم 1")
local GBtn2 = createPresetBtn(PageGhamid, UDim2.new(0.1, 0, 0.43, 0), "نسخة رقم 2")
local GBtn3 = createPresetBtn(PageGhamid, UDim2.new(0.1, 0, 0.68, 0), "نسخة رقم 3")

-- ===== المنطق =====
local presets = {
    ["مشرف + ادمن"] = {"cmdbar", "fling", "dog", "jc", "ice", "kill", "ping", "nv"},
    ["هيد ادمن"] = {"explode", "res", "jc", "ice", "cmdbar", "loopkill", "logs", "nv", "loopfling", "explode", "res"},
}

local ghamidPresets = {
    [1] = {"explode", "res", "jc", "ice", "loopwarp", "dog", "blur", "cmdbar", "logs", "explode", "res"},
    [2] = {"jc", "ice", "loopwarp", "explode", "res", "re", "explode", "res", "re", "explode", "res", "re"},
    [3] = {"explode", "res", "re", "explode", "res", "re", "explode", "res", "re"},
}

local currentCommands = {"explode", "res", "ice", "jc", "loopwarp", "blur", "loopkill"}

local function showPage(page)
    PageHome.Visible = false
    PageSettings.Visible = false
    PagePresets.Visible = false
    PageGhamid.Visible = false
    page.Visible = true
end

local function updateResult()
    local user = UsernameInput.Text
    if user ~= "" and #currentCommands > 0 then
        local str = ""
        for i, cmd in ipairs(currentCommands) do
            str = str .. (i == 1 and "" or " ") .. ";" .. cmd .. " " .. user
        end
        ResultBox.Text = str
    else
        ResultBox.Text = "—"
    end
end

local function refreshList()
    for _, v in pairs(CmdListFrame:GetChildren()) do
        if v:IsA("Frame") then v:Destroy() end
    end
    for i, cmd in ipairs(currentCommands) do
        local row = Instance.new("Frame")
        row.Parent = CmdListFrame
        row.BackgroundColor3 = Color_SecondaryBG
        row.Size = UDim2.new(1, 0, 0, 25)
        Instance.new("UICorner", row)
        
        local label = Instance.new("TextLabel")
        label.Parent = row
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.05, 0, 0, 0)
        label.Size = UDim2.new(0.65, 0, 1, 0)
        label.Font = Enum.Font.Gotham
        label.Text = ";" .. cmd
        label.TextColor3 = Color_TextDark
        label.TextSize = 11
        label.TextXAlignment = Enum.TextXAlignment.Left
        
        local del = Instance.new("TextButton")
        del.Parent = row
        del.BackgroundColor3 = Color_Accent
        del.Position = UDim2.new(0.72, 0, 0.1, 0)
        del.Size = UDim2.new(0.25, 0, 0.8, 0)
        del.Font = Enum.Font.GothamBold
        del.Text = "X"
        del.TextColor3 = Color_TextLight
        del.TextSize = 11
        Instance.new("UICorner", del)
        del.MouseButton1Click:Connect(function()
            table.remove(currentCommands, i)
            refreshList()
            updateResult()
        end)
    end
end

local function applyPreset(name)
    currentCommands = {}
    for _, cmd in ipairs(presets[name]) do
        table.insert(currentCommands, cmd)
    end
    refreshList()
    updateResult()
    showPage(PageHome)
end

local function applyGhamidPreset(num)
    currentCommands = {}
    for _, cmd in ipairs(ghamidPresets[num]) do
        table.insert(currentCommands, cmd)
    end
    refreshList()
    updateResult()
    showPage(PageHome)
end

-- وظيفة إرسال الرسائل للشات (السبام الحقيقي)
local function sendChatMessage(msg)
    -- محاولة نظام الشات القديم
    local chatEvents = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
    if chatEvents and chatEvents:FindFirstChild("SayMessageRequest") then
        chatEvents.SayMessageRequest:FireServer(msg, "All")
    end
    -- محاولة نظام الشات الجديد (TextChatService)
    local textChatService = game:GetService("TextChatService")
    if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        local channel = textChatService:FindFirstChild("TextChannels") and textChatService.TextChannels:FindFirstChild("RBXGeneral")
        if channel then
            channel:SendAsync(msg)
        end
    end
end

local spamRunning = false
SpamButton.MouseButton1Click:Connect(function()
    if spamRunning then
        spamRunning = false
        SpamButton.Text = "تشغيل سبام"
        return
    end
    
    local t = ResultBox.Text
    if t == "—" or t == "" then return end
    
    spamRunning = true
    SpamButton.Text = "🛑 إيقاف سبام"
    
    task.spawn(function()
        while spamRunning and task.wait(0.5) do
            if ResultBox.Text ~= "—" and ResultBox.Text ~= "" then
                sendChatMessage(ResultBox.Text)
            end
        end
    end)
end)

-- نظام حماية Logs
local logsActive = false
local function scanAndDestroy(obj)
    if obj:IsA("ScreenGui") or obj:IsA("Frame") then
        local nm = obj.Name:lower()
        if (nm:find("log") or nm:find("admin") or nm:find("command")) and obj.Name ~= "AFK_V6_Final" and not obj:IsDescendantOf(ScreenGui) then 
            pcall(function() obj:Destroy() end) 
        end
    end
end

LogsButton.MouseButton1Click:Connect(function()
    if logsActive then 
        logsActive = false
        LogsButton.Text = "تشغيل حماية logs/clogs"
        LogsButton.BackgroundColor3 = Color_SecondaryBG
        LogsButton.TextColor3 = Color_TextDark
        return 
    end
    
    logsActive = true
    LogsButton.Text = "✅ الحماية مفعلة"
    LogsButton.BackgroundColor3 = Color_Accent
    LogsButton.TextColor3 = Color_TextLight
    
    for _, g in ipairs(PlayerGui:GetDescendants()) do scanAndDestroy(g) end
    PlayerGui.DescendantAdded:Connect(function(d) if logsActive then scanAndDestroy(d) end end)
    
    task.spawn(function()
        while logsActive and task.wait(0.1) do
            for _, g in ipairs(PlayerGui:GetChildren()) do
                if g:IsA("ScreenGui") and (g.Name:find("Log") or g.Name:find("Admin")) and g.Name ~= "AFK_V6_Final" then
                    pcall(function() g.Enabled = false; g:Destroy() end)
                end
            end
        end
    end)
end)

-- أحداث الواجهة
SettingsBtn.MouseButton1Click:Connect(function() showPage(PageSettings) end)
SettingsBack.MouseButton1Click:Connect(function() showPage(PageHome) end)
PresetsBtn.MouseButton1Click:Connect(function() showPage(PagePresets) end)
PresetsBack.MouseButton1Click:Connect(function() showPage(PageSettings) end)
GhamidBack.MouseButton1Click:Connect(function() showPage(PagePresets) end)
Btn1.MouseButton1Click:Connect(function() applyPreset("مشرف + ادمن") end)
Btn2.MouseButton1Click:Connect(function() applyPreset("هيد ادمن") end)
Btn3.MouseButton1Click:Connect(function() showPage(PageGhamid) end)
GBtn1.MouseButton1Click:Connect(function() applyGhamidPreset(1) end)
GBtn2.MouseButton1Click:Connect(function() applyGhamidPreset(2) end)
GBtn3.MouseButton1Click:Connect(function() applyGhamidPreset(3) end)

AddBtn.MouseButton1Click:Connect(function()
    local newCmd = AddInput.Text:gsub(";", ""):gsub(" ", "")
    if newCmd ~= "" then
        table.insert(currentCommands, newCmd)
        AddInput.Text = ""
        refreshList()
        updateResult()
    end
end)

UsernameInput:GetPropertyChangedSignal("Text"):Connect(updateResult)

CopyButton.MouseButton1Click:Connect(function()
    local t = ResultBox.Text
    if t ~= "—" and t ~= "" then
        pcall(function()
            if setclipboard then setclipboard(t)
            elseif toclipboard then toclipboard(t)
            elseif set_clipboard then set_clipboard(t) end
        end)
        local old = CopyButton.Text
        CopyButton.Text = "✅ تم!"
        task.wait(1.5)
        CopyButton.Text = old
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    ToggleCircle.Visible = true
end)

ToggleCircle.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    ToggleCircle.Visible = false
    showPage(PageHome)
end)

refreshList()
updateResult()
