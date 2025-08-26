-- Script Lua: SpeedHack GUI
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Estado
local speedActive = false
local normalSpeed = humanoid.WalkSpeed
local boostedSpeed = 100 -- 100x mais rápido (ajuste se quiser)

-- Criar GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SpeedHackGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Painel
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.8, 0, 0.05, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Botão
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 180, 0, 50)
button.Position = UDim2.new(0, 10, 0, 25)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 20
button.Text = "Ativar Speed Hack"
button.Parent = frame

-- Função botão
button.MouseButton1Click:Connect(function()
    speedActive = not speedActive
    if speedActive then
        humanoid.WalkSpeed = boostedSpeed
        button.Text = "Desativar Speed Hack"
    else
        humanoid.WalkSpeed = normalSpeed
        button.Text = "Ativar Speed Hack"
    end
end)
