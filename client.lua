local QBCore = exports['qb-core']:GetCoreObject()
local player = QBCore.Functions.GetPlayerData()
local waitTime = false
local refreshTimer = 30000


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    TriggerServerEvent('qb-setarmor:Server:GetPlayerarmor')
end)

CreateThread(function()
    while true do
    Wait(1)
        if LocalPlayer.state.isLoggedIn then
            if not waitTime then
                waitTime = true
                local armorAmount = GetPedArmour(PlayerPedId())
                TriggerServerEvent('qb-setarmor:Server:update', player, armorAmount)
                Wait(refreshTimer)
                waitTime = false
            end
        end
    end
end)