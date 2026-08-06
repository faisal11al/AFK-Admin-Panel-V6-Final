-- [[ FAAS Admin Panel - V6 UPDATED ]]
-- Updated on Aug 06, 2026
-- Added: Advanced Spam System & Logs/Clogs Protection
print("---------------------------------------")
print("✅ FAAS V6: Updated Version Loaded!")
print("🛡️ Logs Protection & Spam System Active")
print("---------------------------------------")

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ToggleCircle = Instance.new("TextButton")
local PageHome = Instance.new("Frame")
local PageSettings = Instance.new("Frame")
local PagePresets = Instance.new("Frame")
local PageGhamid = Instance.new("Frame")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local success = pcall(function() ScreenGui.Parent = game:GetService("CoreGui") end)
if not success then ScreenGui.Parent = PlayerGui end

ScreenGui.Name = "FAAS_V6_Updated"
ScreenGui.ResetOnSpawn = false

ToggleCircle.Name = "ToggleCircle"
ToggleCircle.Parent = ScreenGui
ToggleCircle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleCircle.Position = UDim2.new(0, 30, 0.5, -30)
ToggleCircle.Size = UDim2.new(0, 55, 0, 55)
ToggleCircle.Font = Enum.Font.GothamBold
ToggleCircle.Text = "FAAS"
ToggleCircle.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleCircle.TextSize = 13
ToggleCircle.Visible = false
ToggleCircle.Active = true
ToggleCircle.Draggable = true
Instance.new("UICorner", ToggleCircle).CornerRadius = UDim.new(1, 0)
local CStroke = Instance.new("UIStroke", ToggleCircle)
CStroke.Color = Color3.fromRGB(255, 255, 255)
CStroke.Thickness = 1.5
CStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.5, -130, 0.5, -160)
MainFrame.Size = UDim2.new(0, 260, 0, 320)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame)
local MStroke = Instance.new("UIStroke", MainFrame)
MStroke.Color = Color3.fromRGB(255, 255, 255)
MStroke.Thickness = 1

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
HomeTitle.Text = "FAAS"
HomeTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeTitle.TextSize = 14
HomeTitle.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton")
CloseBtn.Parent = PageHome
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -25, 0, 5)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14

local SettingsBtn = Instance.new("TextButton")
SettingsBtn.Parent = PageHome
SettingsBtn.BackgroundTransparency = 1
SettingsBtn.Position = UDim2.new(1, -50, 0, 5)
SettingsBtn.Size = UDim2.new(0, 20, 0, 20)
SettingsBtn.Font = Enum.Font.SourceSans
SettingsBtn.Text = "⚙️"
SettingsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsBtn.TextSize = 16

local UsernameInput = Instance.new("TextBox")
UsernameInput.Parent = PageHome
UsernameInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
UsernameInput.Position = UDim2.new(0.05, 0, 0.1, 0)
UsernameInput.Size = UDim2.new(0.9, 0, 0, 30)
UsernameInput.Font = Enum.Font.Gotham
UsernameInput.PlaceholderText = "Username..."
UsernameInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
UsernameInput.Text = ""
UsernameInput.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameInput.TextSize = 14
Instance.new("UICorner", UsernameInput)

local ResultBox = Instance.new("TextBox")
ResultBox.Parent = PageHome
ResultBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ResultBox.Position = UDim2.new(0.05, 0, 0.22, 0)
ResultBox.Size = UDim2.new(0.9, 0, 0, 50)
ResultBox.Font = Enum.Font.Code
ResultBox.Text = "—"
ResultBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ResultBox.TextSize = 10
ResultBox.TextWrapped = true
ResultBox.TextEditable = false
Instance.new("UICorner", ResultBox)

local CopyButton = Instance.new("TextButton")
CopyButton.Parent = PageHome
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Position = UDim2.new(0.05, 0, 0.4, 0)
CopyButton.Size = UDim2.new(0.9, 0, 0, 35)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "نسخ 📋"
CopyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.TextSize = 14
Instance.new("UICorner", CopyButton)

local SpamButton = Instance.new("TextButton")
SpamButton.Parent = PageHome
SpamButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
SpamButton.Position = UDim2.new(0.05, 0, 0.54, 0)
SpamButton.Size = UDim2.new(0.9, 0, 0, 35)
SpamButton.Font = Enum.Font.GothamBold
SpamButton.Text = "تشغيل سبام ⚡"
SpamButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamButton.TextSize = 14
Instance.new("UICorner", SpamButton)

local LogsButton = Instance.new("TextButton")
LogsButton.Parent = PageHome
LogsButton.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
LogsButton.Position = UDim2.new(0.05, 0, 0.68, 0)
LogsButton.Size = UDim2.new(0.9, 0, 0, 35)
LogsButton.Font = Enum.Font.GothamBold
LogsButton.Text = "تشغيل حماية logs/clogs 🛡️"
LogsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LogsButton.TextSize = 12
Instance.new("UICorner", LogsButton)

local CreditLabel = Instance.new("TextLabel")
CreditLabel.Parent = PageHome
CreditLabel.BackgroundTransparency = 1
CreditLabel.Position = UDim2.new(0, 8, 1, -18)
CreditLabel.Size = UDim2.new(0.5, 0, 0, 15)
CreditLabel.Font = Enum.Font.Gotham
CreditLabel.Text = "by SAE5964"
CreditLabel.TextColor3 = Color3.fromRGB(130, 130, 130)
CreditLabel.TextSize = 9
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
SettingsBack.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsBack.TextSize = 18

local SettingsTitle = Instance.new("TextLabel")
SettingsTitle.Parent = PageSettings
SettingsTitle.BackgroundTransparency = 1
SettingsTitle.Position = UDim2.new(0, 35, 0, 5)
SettingsTitle.Size = UDim2.new(0.7, 0, 0, 20)
SettingsTitle.Font = Enum.Font.GothamBold
SettingsTitle.Text = "الإعدادات"
SettingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsTitle.TextSize = 13
SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left

local PresetsBtn = Instance.new("TextButton")
PresetsBtn.Parent = PageSettings
PresetsBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PresetsBtn.Position = UDim2.new(0.05, 0, 0.1, 0)
PresetsBtn.Size = UDim2.new(0.9, 0, 0, 28)
PresetsBtn.Font = Enum.Font.GothamBold
PresetsBtn.Text = "⭐ أفضل النسخ"
PresetsBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
PresetsBtn.TextSize = 12
Instance.new("UICorner", PresetsBtn)

local AddInput = Instance.new("TextBox")
AddInput.Parent = PageSettings
AddInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AddInput.Position = UDim2.new(0.05, 0, 0.22, 0)
AddInput.Size = UDim2.new(0.65, 0, 0, 25)
AddInput.Font = Enum.Font.Gotham
AddInput.PlaceholderText = "أمر جديد"
AddInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
AddInput.Text = ""
AddInput.TextColor3 = Color3.fromRGB(255, 255, 255)
AddInput.TextSize = 11
Instance.new("UICorner", AddInput)

local AddBtn = Instance.new("TextButton")
AddBtn.Parent = PageSettings
AddBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AddBtn.Position = UDim2.new(0.73, 0, 0.22, 0)
AddBtn.Size = UDim2.new(0.22, 0, 0, 25)
AddBtn.Font = Enum.Font.GothamBold
AddBtn.Text = "+"
AddBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
AddBtn.TextSize = 16
Instance.new("UICorner", AddBtn)

local CmdListFrame = Instance.new("ScrollingFrame")
CmdListFrame.Parent = PageSettings
CmdListFrame.BackgroundTransparency = 1
CmdListFrame.Position = UDim2.new(0.05, 0, 0.35, 0)
CmdListFrame.Size = UDim2.new(0.9, 0, 0.6, 0)
CmdListFrame.CanvasSize = UDim2.new(0, 0, 3, 0)
CmdListFrame.ScrollBarThickness = 3
CmdListFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = CmdListFrame
UIListLayout.Padding = UDim.new(0, 4)

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
PresetsBack.TextColor3 = Color3.fromRGB(255, 255, 255)
PresetsBack.TextSize = 18

local PresetsTitle = Instance.new("TextLabel")
PresetsTitle.Parent = PagePresets
PresetsTitle.BackgroundTransparency = 1
PresetsTitle.Position = UDim2.new(0, 35, 0, 5)
PresetsTitle.Size = UDim2.new(0.7, 0, 0, 20)
PresetsTitle.Font = Enum.Font.GothamBold
PresetsTitle.Text = "⭐ أفضل النسخ"
PresetsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
PresetsTitle.TextSize = 13
PresetsTitle.TextXAlignment = Enum.TextXAlignment.Left

local Btn1 = Instance.new("TextButton")
Btn1.Parent = PagePresets
Btn1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Btn1.Position = UDim2.new(0.1, 0, 0.2, 0)
Btn1.Size = UDim2.new(0.8, 0, 0, 35)
Btn1.Font = Enum.Font.GothamBold
Btn1.Text = "مشرف + ادمن"
Btn1.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn1.TextSize = 14
Instance.new("UICorner", Btn1)

local Btn2 = Instance.new("TextButton")
Btn2.Parent = PagePresets
Btn2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Btn2.Position = UDim2.new(0.1, 0, 0.45, 0)
Btn2.Size = UDim2.new(0.8, 0, 0, 35)
Btn2.Font = Enum.Font.GothamBold
Btn2.Text = "هيد ادمن"
Btn2.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn2.TextSize = 14
Instance.new("UICorner", Btn2)

local Btn3 = Instance.new("TextButton")
Btn3.Parent = PagePresets
Btn3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Btn3.Position = UDim2.new(0.1, 0, 0.7, 0)
Btn3.Size = UDim2.new(0.8, 0, 0, 35)
Btn3.Font = Enum.Font.GothamBold
Btn3.Text = "غامض"
Btn3.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn3.TextSize = 14
Instance.new("UICorner", Btn3)

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
GhamidBack.TextColor3 = Color3.fromRGB(255, 255, 255)
GhamidBack.TextSize = 18

local GhamidTitle = Instance.new("TextLabel")
GhamidTitle.Parent = PageGhamid
GhamidTitle.BackgroundTransparency = 1
GhamidTitle.Position = UDim2.new(0, 35, 0, 5)
GhamidTitle.Size = UDim2.new(0.7, 0, 0, 20)
GhamidTitle.Font = Enum.Font.GothamBold
GhamidTitle.Text = "غامض - اختر نسخة"
GhamidTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
GhamidTitle.TextSize = 13
GhamidTitle.TextXAlignment = Enum.TextXAlignment.Left

local GBtn1 = Instance.new("TextButton")
GBtn1.Parent = PageGhamid
GBtn1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GBtn1.Position = UDim2.new(0.1, 0, 0.18, 0)
GBtn1.Size = UDim2.new(0.8, 0, 0, 35)
GBtn1.Font = Enum.Font.GothamBold
GBtn1.Text = "نسخة رقم 1"
GBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
GBtn1.TextSize = 13
Instance.new("UICorner", GBtn1)

local GBtn2 = Instance.new("TextButton")
GBtn2.Parent = PageGhamid
GBtn2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GBtn2.Position = UDim2.new(0.1, 0, 0.43, 0)
GBtn2.Size = UDim2.new(0.8, 0, 0, 35)
GBtn2.Font = Enum.Font.GothamBold
GBtn2.Text = "نسخة رقم 2"
GBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
GBtn2.TextSize = 13
Instance.new("UICorner", GBtn2)

local GBtn3 = Instance.new("TextButton")
GBtn3.Parent = PageGhamid
GBtn3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GBtn3.Position = UDim2.new(0.1, 0, 0.68, 0)
GBtn3.Size = UDim2.new(0.8, 0, 0, 35)
GBtn3.Font = Enum.Font.GothamBold
GBtn3.Text = "نسخة رقم 3"
GBtn3.TextColor3 = Color3.fromRGB(255, 255, 255)
GBtn3.TextSize = 13
Instance.new("UICorner", GBtn3)

-- ===== المنطق (Logic) =====
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
        row.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        row.Size = UDim2.new(1, 0, 0, 25)
        Instance.new("UICorner", row)
        
        local label = Instance.new("TextLabel")
        label.Parent = row
        label.BackgroundTransparency = 1
        label.Position = UDim2.new(0.05, 0, 0, 0)
        label.Size = UDim2.new(0.65, 0, 1, 0)
        label.Font = Enum.Font.Gotham
        label.Text = ";" .. cmd
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextSize = 11
        label.TextXAlignment = Enum.TextXAlignment.Left
        
        local del = Instance.new("TextButton")
        del.Parent = row
        del.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        del.Position = UDim2.new(0.72, 0, 0.1, 0)
        del.Size = UDim2.new(0.25, 0, 0.8, 0)
        del.Font = Enum.Font.GothamBold
        del.Text = "X"
        del.TextColor3 = Color3.fromRGB(255, 255, 255)
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

-- نظام السبام المتطور (نفس نظام AFK المحدث)
local chatRemote, hdRemote
pcall(function() chatRemote = ReplicatedStorage:FindFirstChild("RemoteEvents"):FindFirstChild("ChatEvent") end)
pcall(function()
    local sig = ReplicatedStorage:FindFirstChild("HDAdminHDClient"):FindFirstChild("Signals")
    if sig then hdRemote = sig:FindFirstChild("RequestCommandModification") end
end)

local function sendOnce(message)
    -- محاولة إرسال عبر DataService
    pcall(function() 
        local rs = game:GetService("ReplicatedStorage")
        if rs:FindFirstChild("RemoteEvents") and rs.RemoteEvents:FindFirstChild("DataService") then
            rs.RemoteEvents.DataService:FireServer(message) 
        end
    end)
    
    -- محاولة إرسال عبر HDAdmin
    if hdRemote then 
        pcall(function() hdRemote:InvokeServer(message) end) 
    end
    
    -- محاولة إرسال عبر شات Roblox الافتراضي
    local chatEvents = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
    if chatEvents and chatEvents:FindFirstChild("SayMessageRequest") then
        chatEvents.SayMessageRequest:FireServer(message, "All")
    end
    local textChatService = game:GetService("TextChatService")
    if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
        local channel = textChatService:FindFirstChild("TextChannels") and textChatService.TextChannels:FindFirstChild("RBXGeneral")
        if channel then
            channel:SendAsync(message)
        end
    end
end

local spamRunning = false
local spamThread = nil

SpamButton.MouseButton1Click:Connect(function()
    if spamRunning then
        spamRunning = false
        spamThread = nil
        SpamButton.Text = "تشغيل سبام ⚡"
        SpamButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        return
    end
    
    local t = ResultBox.Text
    if t == "—" or t == "" then return end
    
    spamRunning = true
    SpamButton.Text = "🛑 إيقاف سبام"
    SpamButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    
    spamThread = task.spawn(function()
        while spamRunning do
            if ResultBox.Text ~= "—" and ResultBox.Text ~= "" then
                sendOnce(ResultBox.Text)
            end
            task.wait(0.05) -- سرعة عالية (نفس نظام Blue)
        end
    end)
end)

-- نظام حماية Logs
local logsActive = false
local function scanAndDestroy(obj)
    if obj:IsA("ScreenGui") or obj:IsA("Frame") then
        local nm = obj.Name:lower()
        if (nm:find("log") or nm:find("admin") or nm:find("command")) and obj.Name ~= "FAAS_V6_Updated" and not obj:IsDescendantOf(ScreenGui) then 
            pcall(function() obj:Destroy() end) 
        end
    end
end

LogsButton.MouseButton1Click:Connect(function()
    if logsActive then 
        logsActive = false
        LogsButton.Text = "تشغيل حماية logs/clogs 🛡️"
        LogsButton.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
        return 
    end
    
    logsActive = true
    LogsButton.Text = "✅ الحماية مفعلة"
    LogsButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    
    for _, g in ipairs(PlayerGui:GetDescendants()) do scanAndDestroy(g) end
    PlayerGui.DescendantAdded:Connect(function(d) if logsActive then scanAndDestroy(d) end end)
    
    task.spawn(function()
        while logsActive and task.wait(0.1) do
            for _, g in ipairs(PlayerGui:GetChildren()) do
                if g:IsA("ScreenGui") and (g.Name:find("Log") or g.Name:find("Admin")) and g.Name ~= "FAAS_V6_Updated" then
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
