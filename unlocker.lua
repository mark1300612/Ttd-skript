
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

local UltimateUnits = {
    "Quantum Cameraman",
    "Titan Camera Strider", 
    "Titan Reaper Cameraman",
    "Titan Plunger Cameraman",
    "Golden Titan Speakerman",
    "Titan Bucket Head Speaker Woman",
    "Frost Speakerman Titan", 
    "Titan Glacier TV Man",
    "Nuke Titan TV Man",
    "Upgraded Titan Clockman",
    "Titan Cryo Clock Striker",
    "Titan Warlord Clockman",
    "Sinister Titan Clockman",
    "Upgraded Titan Drill Man",
    "Angelic Guardian",
    "Telanthric Titan"
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ULTIMATE_UNLOCKER"

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 500, 0, 600)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -300)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 460, 0, 40)
Title.Position = UDim2.new(0, 20, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "🔥 ULTIMATE UNITS UNLOCKER 🔥"
Title.TextColor3 = Color3.fromRGB(255, 100, 0)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBlack
Title.Parent = MainFrame

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(0, 460, 0, 500)
ScrollFrame.Position = UDim2.new(0, 20, 0, 60)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.ScrollBarThickness = 5
ScrollFrame.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.Parent = ScrollFrame

local function unlockUnit(unitName)
    local remotes = {
        "PurchaseUnit", "UnlockUnit", "AddToInventory",
        "BuyUnit", "AddUnit", "UnlockTower"
    }
    
    for _, remoteName in pairs(remotes) do
        local remote = ReplicatedStorage:FindFirstChild(remoteName)
        if remote then
            remote:FireServer(unitName)
        end
    end
    
    local playerData = player:FindFirstChild("Data") or player:FindFirstChild("Inventory")
    if playerData then
        local units = playerData:FindFirstChild("UnlockedUnits") or playerData:FindFirstChild("Units")
        if units then
            local unitValue = units:FindFirstChild(unitName)
            if not unitValue then
                unitValue = Instance.new("BoolValue")
                unitValue.Name = unitName
                unitValue.Value = true
                unitValue.Parent = units
            end
        end
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "ULTIMATE UNLOCKER",
        Text = unitName .. " разблокирован!",
        Duration = 3
    })
end

for _, unitName in pairs(UltimateUnits) do
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 440, 0, 40)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    Button.BorderSizePixel = 0
    Button.Text = unitName
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 14
    Button.Font = Enum.Font.Gotham
    Button.TextWrapped = true
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)
    ButtonCorner.Parent = Button
    
    Button.MouseButton1Click:Connect(function()
        unlockUnit(unitName)
        Button.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        Button.Text = "✓ " .. unitName
        wait(1)
        Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
        Button.Text = unitName
    end)
    
    Button.Parent = ScrollFrame
end

local UnlockAllButton = Instance.new("TextButton")
UnlockAllButton.Size = UDim2.new(0, 460, 0, 50)
UnlockAllButton.Position = UDim2.new(0, 20, 0, 570)
UnlockAllButton.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
UnlockAllButton.Text = "РАЗБЛОКИРОВАТЬ ВСЕ ULTIMATE ЮНИТЫ"
UnlockAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnlockAllButton.TextSize = 16
UnlockAllButton.Font = Enum.Font.GothamBold
UnlockAllButton.Parent = MainFrame

local UnlockAllCorner = Instance.new("UICorner")
UnlockAllCorner.CornerRadius = UDim.new(0, 8)
UnlockAllCorner.Parent = UnlockAllButton

UnlockAllButton.MouseButton1Click:Connect(function()
    for _, unitName in pairs(UltimateUnits) do
        unlockUnit(unitName)
        wait(0.2)
    end
    UnlockAllButton.Text = "ВСЕ ЮНИТЫ ДОБАВЛЕНЫ!"
    UnlockAllButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
end)

ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, #UltimateUnits * 45)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

local UltimateUnits = {
    "Quantum Cameraman",
    "Titan Camera Strider", 
    "Titan Reaper Cameraman",
    "Titan Plunger Cameraman",
    "Golden Titan Speakerman",
    "Titan Bucket Head Speaker Woman",
    "Frost Speakerman Titan", 
    "Titan Glacier TV Man",
    "Nuke Titan TV Man",
    "Upgraded Titan Clockman",
    "Titan Cryo Clock Striker",
    "Titan Warlord Clockman",
    "Sinister Titan Clockman",
    "Upgraded Titan Drill Man",
    "Angelic Guardian",
    "Telanthric Titan"
}

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "ULTIMATE_UNLOCKER"

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 500, 0, 600)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -300)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 460, 0, 40)
Title.Position = UDim2.new(0, 20, 0, 10)
Title.BackgroundTransparency = 1
Title.Text = "🔥 ULTIMATE UNITS UNLOCKER 🔥"
Title.TextColor3 = Color3.fromRGB(255, 100, 0)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBlack
Title.Parent = MainFrame

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(0, 460, 0, 500)
ScrollFrame.Position = UDim2.new(0, 20, 0, 60)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.ScrollBarThickness = 5
ScrollFrame.Parent = MainFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.Parent = ScrollFrame

local function unlockUnit(unitName)
    local remotes = {
        "PurchaseUnit", "UnlockUnit", "AddToInventory",
        "BuyUnit", "AddUnit", "UnlockTower"
    }
    
    for _, remoteName in pairs(remotes) do
        local remote = ReplicatedStorage:FindFirstChild(remoteName)
        if remote then
            remote:FireServer(unitName)
        end
    end
    
    local playerData = player:FindFirstChild("Data") or player:FindFirstChild("Inventory")
    if playerData then
        local units = playerData:FindFirstChild("UnlockedUnits") or playerData:FindFirstChild("Units")
        if units then
            local unitValue = units:FindFirstChild(unitName)
            if not unitValue then
                unitValue = Instance.new("BoolValue")
                unitValue.Name = unitName
                unitValue.Value = true
                unitValue.Parent = units
            end
        end
    end
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "ULTIMATE UNLOCKER",
        Text = unitName .. " разблокирован!",
        Duration = 3
    })
end

for _, unitName in pairs(UltimateUnits) do
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 440, 0, 40)
    Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    Button.BorderSizePixel = 0
    Button.Text = unitName
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 14
    Button.Font = Enum.Font.Gotham
    Button.TextWrapped = true
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 8)
    ButtonCorner.Parent = Button
    
    Button.MouseButton1Click:Connect(function()
        unlockUnit(unitName)
        Button.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        Button.Text = "✓ " .. unitName
        wait(1)
        Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
        Button.Text = unitName
    end)
    
    Button.Parent = ScrollFrame
end

local UnlockAllButton = Instance.new("TextButton")
UnlockAllButton.Size = UDim2.new(0, 460, 0, 50)
UnlockAllButton.Position = UDim2.new(0, 20, 0, 570)
UnlockAllButton.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
UnlockAllButton.Text = "РАЗБЛОКИРОВАТЬ ВСЕ ULTIMATE ЮНИТЫ"
UnlockAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnlockAllButton.TextSize = 16
UnlockAllButton.Font = Enum.Font.GothamBold
UnlockAllButton.Parent = MainFrame

local UnlockAllCorner = Instance.new("UICorner")
UnlockAllCorner.CornerRadius = UDim.new(0, 8)
UnlockAllCorner.Parent = UnlockAllButton

UnlockAllButton.MouseButton1Click:Connect(function()
    for _, unitName in pairs(UltimateUnits) do
        unlockUnit(unitName)
        wait(0.2)
    end
    UnlockAllButton.Text = "ВСЕ ЮНИТЫ ДОБАВЛЕНЫ!"
    UnlockAllButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
end)

ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, #UltimateUnits * 45)
