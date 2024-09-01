-- Nome do Script: Kakaglitch
-- Executor: Fluxus
-- Sistema de Key: Keyrblx
-- Chave: KeyNadaAqui

local key = "KeyNadaAqui"
local maxLevel = 2450

if key == "KeyNadaAqui" then
    loadstring(game:HttpGet("https://keyrblx.com/fluxus/keysystem"))()
    
    -- Função de Auto Farm de Baú
    function autoFarmChest()
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Model") and v.Name == "Chest" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                wait(0.5)
                fireclickdetector(v.ClickDetector)
            end
        end
    end
    
    -- Função de Auto Farm de Level
    function autoFarmLevel()
        while game.Players.LocalPlayer.Level < maxLevel do
            -- Código para farmar XP e subir de nível rapidamente
            -- Este é um exemplo genérico, ajuste conforme necessário
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 0, 0) -- Posição do NPC ou inimigo
            wait(0.5)
            -- Ataque ou ação para ganhar XP
        end
    end
    
    -- Executar as funções de Auto Farm
    while true do
        autoFarmChest()
        autoFarmLevel()
        wait(1)
    end
else
    print("Chave incorreta!")
end
