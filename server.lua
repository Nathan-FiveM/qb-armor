local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-setarmor:Server:GetPlayerarmor', function()
    local src = source
getArmor(src)
end)


-- set armor after using it
RegisterNetEvent('qb-setarmor:Server:SetPlayerArmor', function(amount)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    --exports.oxmysql:execute('UPDATE players SET armor = ? WHERE citizenid = ?', {amount, player.PlayerData.citizenid})
    MySQL.Async.execute('UPDATE players SET armor = ? WHERE citizenid = ?', {amount, player.PlayerData.citizenid})

end)


-- Update it
RegisterNetEvent('qb-setarmor:Server:update', function(player, armorAmount)
    --exports.oxmysql:execute('UPDATE players SET armor = ? WHERE citizenid = ?', {armorAmount, player.citizenid})
    MySQL.Async.execute('UPDATE players SET armor = ? WHERE citizenid = ?', {armorAmount, player.citizenid})
end)


-- function just to update it..
function getArmor(src)
    player = QBCore.Functions.GetPlayer(src)
    armorAmount = player.PlayerData.armor
    SetPedArmour(src, armorAmount)
        if armorAmount > 0 then
            SetPedArmour(src, armorAmount)
        end
end