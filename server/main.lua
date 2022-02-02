local QBCore = exports['qb-core']:GetCoreObject()

-------------------USABLE ITEMS-------------------
--ENGINE PARTS
QBCore.Functions.CreateUseableItem("engine0", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:E0", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("engine1", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:E1", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("engine2", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:E2", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("engine3", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:E3", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("engine4", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:E4", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

--BRAKES
QBCore.Functions.CreateUseableItem("brake0", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:B0", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("brake1", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:B1", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("brake2", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:B2", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("brake3", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:B3", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

--TRANSMISSION
QBCore.Functions.CreateUseableItem("transmission0", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:T0", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("transmission1", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:T1", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("transmission2", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:T2", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("transmission3", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:T3", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

--SUSPENSION
QBCore.Functions.CreateUseableItem("suspension0", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:S0", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("suspension1", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:S1", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("suspension2", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:S2", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("suspension3", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:S3", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("suspension4", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:S4", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

--TURBO
QBCore.Functions.CreateUseableItem("turbo0", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:Turbo0", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

QBCore.Functions.CreateUseableItem("turbo1", function(source, item)
    
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("qb-mechanicparts:Turbo1", source)
    else
        TriggerClientEvent('QBCore:Notify', source, "Unknown Error", "error")
    end
end)

--DATA
RegisterServerEvent("updateVehicle")
AddEventHandler("updateVehicle", function(myCar)
    local src = source
    if IsVehicleOwned(myCar.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(myCar), myCar.plate})
    end
end)

function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then
        retval = true
    end
    return retval
end

----- DO NOT TOUCH ABOVE ^^^^^
-----ONLY EDIT BELOW THIS LINE-------


------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------EDIT BELOW HERE FOR 'CRAFTING'--------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------ENGINE PARTS-----------------------------------------------------------
RegisterServerEvent("craft:engine0")
AddEventHandler("craft:engine0", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")
    
    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 3 and rubber.amount >= 2 and iron.amount >= 1 and plastic.amount >= 2 then
            Player.Functions.RemoveItem("metalscrap", 3)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("plastic", 2)

            Player.Functions.AddItem("engine0", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["engine0"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a stock engine.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:engine1")
AddEventHandler("craft:engine1", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")

    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 3 and rubber.amount >= 2 and iron.amount >= 1 and plastic.amount >= 2 then
            Player.Functions.RemoveItem("metalscrap", 3)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("plastic", 2)

            Player.Functions.AddItem("engine1", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["engine1"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Engine Upgrade B.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:engine2")
AddEventHandler("craft:engine2", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")

    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 4 and rubber.amount >= 2 and iron.amount >= 1 and plastic.amount >= 2 then
            Player.Functions.RemoveItem("metalscrap", 4)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("plastic", 2)

            Player.Functions.AddItem("engine2", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["engine2"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Engine Upgrade C.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:engine3")
AddEventHandler("craft:engine3", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")

    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 4 and rubber.amount >= 2 and iron.amount >= 1 and plastic.amount >= 3 then
            Player.Functions.RemoveItem("metalscrap", 4)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("plastic", 3)

            Player.Functions.AddItem("engine3", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["engine3"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Engine Upgrade D.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:engine4")
AddEventHandler("craft:engine4", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")
    local aluminum = Player.Functions.GetItemByName("aluminum")

    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 4 and rubber.amount >= 2 and iron.amount >= 1 and plastic.amount >= 3 and aluminum.amount >= 3 then
            Player.Functions.RemoveItem("metalscrap", 4)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("plastic", 3)
            Player.Functions.RemoveItem("aluminum", 3)

            Player.Functions.AddItem("engine4", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["engine4"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Engine Upgrade S.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)
-----------------------------------------------------------BRAKE PARTS-----------------------------------------------------------
RegisterServerEvent("craft:brake0")
AddEventHandler("craft:brake0", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 2 and iron.amount >= 1 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("brake0", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["brake0"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built stock brakes.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:brake1")
AddEventHandler("craft:brake1", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 2 and iron.amount >= 1 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("brake1", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["brake1"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built Brake Upgrade B.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:brake2")
AddEventHandler("craft:brake2", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 2 and iron.amount >= 1 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("iron", 1)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("brake2", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["brake2"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built Brake Upgrade C.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:brake3")
AddEventHandler("craft:brake3", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 3 and iron.amount >= 2 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 3)
            Player.Functions.RemoveItem("iron", 2)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("brake3", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["brake3"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built Brake Upgrade D.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:brake4")
AddEventHandler("craft:brake4", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 3 and iron.amount >= 2 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 3)
            Player.Functions.RemoveItem("iron", 2)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("brake4", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["brake4"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built Brake Upgrade S.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

---turbo

RegisterServerEvent("craft:turbo0")
AddEventHandler("craft:turbo0", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 3 and iron.amount >= 2 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 3)
            Player.Functions.RemoveItem("iron", 2)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("turbo0", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["turbo0"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a stock Turbo.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:turbo1")
AddEventHandler("craft:turbo1", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local metalscrap = Player.Functions.GetItemByName("metalscrap")

    if rubber ~= nil and iron ~= nil  and metalscrap ~= nil then

        if rubber.amount >= 3 and iron.amount >= 2 and metalscrap.amount >= 2 then
            Player.Functions.RemoveItem("rubber", 3)
            Player.Functions.RemoveItem("iron", 2)
            Player.Functions.RemoveItem("metalscrap", 2)

            Player.Functions.AddItem("turbo1", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["turbo1"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Turbo.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

RegisterServerEvent("craft:repairkit")
AddEventHandler("craft:repairkit", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local plastic = Player.Functions.GetItemByName("plastic")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    local steel = Player.Functions.GetItemByName("steel")

    if metalscrap ~= nil and rubber ~= nil and iron ~= nil and plastic ~= nil then

        if metalscrap.amount >= 4 and rubber.amount >= 2 and plastic.amount >= 3 and aluminum.amount >= 2 and steel.amount >= 2 then
            Player.Functions.RemoveItem("metalscrap", 4)
            Player.Functions.RemoveItem("rubber", 2)
            Player.Functions.RemoveItem("plastic", 3)
            Player.Functions.RemoveItem("aluminum", 2)
            Player.Functions.RemoveItem("steel", 2)

            Player.Functions.AddItem("repairkit", 1)
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["repairkit"], "add")
            TriggerClientEvent('QBCore:Notify', src, 'You built a Repair Kit.', 'success')

        else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have the correct amount of something...', 'error')
        end

    else
        TriggerClientEvent("QBCore:Notify", src, "You are missing parts...", "error")
    end

end)

----------ONLY ENGINE, BRAKES AND TURBO COMPLETED FOR CRAFTING SO FAR (AND REPAIR KITS) ----------
