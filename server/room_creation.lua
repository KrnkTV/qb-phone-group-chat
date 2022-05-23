local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.PhoneHackItem, function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player.Functions.GetItemByName(Config.PhoneHackItem) then
        if Player.Functions.GetItemByName('phone') then
            TriggerClientEvent('qb-phone:client:TriggerPhoneHack', src)
        else
            TriggerClientEvent('QBCore:Notify', src, "You don't have a phone to use this on.", "error")
        end
    end
end)

RegisterNetEvent('qb-phone:server:HackPhone', function(source)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveItem('phone', 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["phone"], "remove")
    Player.Functions.AddItem('phone', 1, false, {hacked = true})
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items["phone"], "add")

    TriggerClientEvent('QBCore:Notify', source, "Your phone is now jailbroken.", "success")
end)

QBCore.Functions.CreateCallback('qb-phone:server:hasHackedPhone', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local phones = Player.Functions.GetItemsByName('phone')
    local isHacked = false

    if phones then
        for _, phone in pairs(phones) do
            if phone.info.hacked then
                isHacked = true

                break
            end
        end
    else
        cb(false)
    end
    cb(isHacked)
end)

