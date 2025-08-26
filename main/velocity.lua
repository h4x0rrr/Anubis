-- Script Lua: FastRun básico
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local UserInputService = game:GetService("UserInputService")

local runSpeed = 100 -- velocidade do humanoid (padrão é 16)
humanoid.WalkSpeed = runSpeed

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.R then -- pressione R para ativar
        humanoid.WalkSpeed = runSpeed
        print("Fast Run ativado!")
    end
end)

UserInputService.InputEnded:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.R then
        humanoid.WalkSpeed = 16 -- volta ao normal
        print("Fast Run desativado!")
    end
end)
