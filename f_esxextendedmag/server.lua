ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('extendedmag', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('fuego:extended', source)
end)

RegisterServerEvent('fuego:remove')
AddEventHandler('fuego:remove', function()
    TriggerClientEvent('esx:showNotification', source, '~g~[SUCCESS] : ~w~Extended Magazine sucesfully applied to your weapon ')
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('extendedmag', 1)
end)