local QBCore = exports['qb-core']:GetCoreObject()
local BackEngineVehicles = { -- Used from qb-vehicle failure <3
'ninef',
'adder',
'vagner',
't20',
'infernus',
'zentorno',
'reaper',
'comet2',
'comet3',
'jester',
'jester2',
'cheetah',
'cheetah2',
'prototipo',
'turismor',
'pfister811',
'ardent',
'nero',
'nero2',
'tempesta',
'vacca',
'bullet',
'osiris',
'entityxf',
'turismo2',
'fmj',
're7b',
'tyrus',
'italigtb',
'penetrator',
'monroe',
'ninef2',
'stingergt',
'surfer',
'surfer2',
'comet3',
}

isLoggedIn = true
PlayerJob = {}

local onDuty = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == Config.Job then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)


local function saveVehicle()
    local plyPed = PlayerPedId()
    local veh = QBCore.Functions.GetClosestVehicle()
    local vehicleMods = {
        mods = {},
    }
    vehicleMods.mods[11] = GetVehicleMod(veh,11)
    vehicleMods.mods[12] = GetVehicleMod(veh,12)
    vehicleMods.mods[13] = GetVehicleMod(veh,13)
    vehicleMods.mods[15] = GetVehicleMod(veh,15)
    vehicleMods.mods[18] = IsToggleModOn(veh, 18)

local myCar = QBCore.Functions.GetVehicleProperties(veh)
    TriggerServerEvent('updateVehicle',myCar)
end

function IsBackEngine(vehModel)
    for _, model in pairs(BackEngineVehicles) do
        if GetHashKey(model) == vehModel then
            return true
        end
    end
    return false
end


--Parts Install 

--Engine

RegisterNetEvent('qb-mechanicparts:E0')
AddEventHandler('qb-mechanicparts:E0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
--     local trunkpos = false
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            if onDuty then
                  if engine ~= -1 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
-- 			    trunkpos = true
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine Mod...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine0"], "remove")
                                    QBCore.Functions.Notify("Stock Engine Successfully installed", "success")
                                end)
-- 				if trunkpos then
-- 					SetVehicleDoorShut(vehicle, 5, false)
-- 				else
-- 					SetVehicleDoorShut(vehicle, 4, false)
-- 				end
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock Engine Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)
RegisterNetEvent('qb-mechanicparts:E1')
AddEventHandler('qb-mechanicparts:E1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if engine ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine Mod...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine1"], "remove")
                                    QBCore.Functions.Notify("Engine Upgrade B Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine Upgrade B Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:E2')
AddEventHandler('qb-mechanicparts:E2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if engine ~= 1 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine Mod...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine2"], "remove")
                                    QBCore.Functions.Notify("Engine Upgrade C Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine Upgrade C Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:E3')
AddEventHandler('qb-mechanicparts:E3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if engine ~= 2 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine Mod...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine3"], "remove")
                                    QBCore.Functions.Notify("Engine Upgrade D Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine Upgrade D Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)


RegisterNetEvent('qb-mechanicparts:E4')
AddEventHandler('qb-mechanicparts:E4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    engine = GetVehicleMod(veh, 11)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if engine ~= 3 then 
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Gas_Engine", "Installing Engine Mod...", 10000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 11, 3, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "engine4", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["engine4"], "remove")
                                    QBCore.Functions.Notify("Engine Upgrade S Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Engine Upgrade S Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

--brakes
RegisterNetEvent('qb-mechanicparts:B0')
AddEventHandler('qb-mechanicparts:B0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if brake ~= -1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Brakes", "Installing Stock Brakes...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake0"], "remove")
                                    QBCore.Functions.Notify("Stock Brakes Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock Brakes Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B1')
AddEventHandler('qb-mechanicparts:B1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if brake ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake1"], "remove")
                                    QBCore.Functions.Notify("Brake Upgrade B Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brakes Upgrade B Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B2')
AddEventHandler('qb-mechanicparts:B2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if brake ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake2"], "remove")
                                    QBCore.Functions.Notify("Brakes Upgrade C Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brakes Upgrade C Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:B3')
AddEventHandler('qb-mechanicparts:B3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    brake = GetVehicleMod(veh, 12)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if brake ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Brakes", "Installing Brakes...", 8500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 12, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "brake3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["brake3"], "remove")
                                    QBCore.Functions.Notify("Brakes Upgrade S Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Brakes Upgrade S Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

-- --Transmission
RegisterNetEvent('qb-mechanicparts:T0')
AddEventHandler('qb-mechanicparts:T0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if transmission ~= -1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Transmission", "Installing Stock Transmission...", 9250, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission0"], "remove")
                                    QBCore.Functions.Notify("Stock Transmission Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock Transmission Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T1')
AddEventHandler('qb-mechanicparts:T1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if transmission ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission...", 9250, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission1"], "remove")
                                    QBCore.Functions.Notify("Transmission Upgrade B Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission Upgrade B Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T2')
AddEventHandler('qb-mechanicparts:T2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if transmission ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission...", 9250, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission2"], "remove")
                                    QBCore.Functions.Notify("Transmission Upgrade C Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission Upgrade C Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:T3')
AddEventHandler('qb-mechanicparts:T3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    transmission = GetVehicleMod(veh, 13)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if transmission ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Transmission", "Installing Transmission...", 9250, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 13, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "transmission3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["transmission3"], "remove")
                                    QBCore.Functions.Notify("Transmission Upgrade S Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Transmission Upgrade S Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

-- --Suspension
RegisterNetEvent('qb-mechanicparts:S0')
AddEventHandler('qb-mechanicparts:S0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if suspension ~= -1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Suspension", "Installing Stock Suspension...", 9000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, -1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension0"], "remove")
                                    QBCore.Functions.Notify("Stock Suspension Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Stock Suspension Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S1')
AddEventHandler('qb-mechanicparts:S1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if suspension ~= 0 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension...", 9000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 0, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension1"], "remove")
                                    QBCore.Functions.Notify("Suspension Upgrade B Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension Upgrade B Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S2')
AddEventHandler('qb-mechanicparts:S2', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if suspension ~= 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension...", 9000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 1, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension2", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension2"], "remove")
                                    QBCore.Functions.Notify("Suspension Upgrade C Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension Upgrade C Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S3')
AddEventHandler('qb-mechanicparts:S3', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if suspension ~= 2 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension...", 9000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 2, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension3", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension3"], "remove")
                                    QBCore.Functions.Notify("Suspension Upgrade D Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension Upgrade D Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:S4')
AddEventHandler('qb-mechanicparts:S4', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    suspension = GetVehicleMod(veh, 15)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if suspension ~= 3 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Suspension", "Installing Suspension...", 9000, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    SetVehicleMod(vehicle, 15, 3, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "suspension4", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["suspension4"], "remove")
                                    QBCore.Functions.Notify("Suspension Upgrade S Successfully installed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Suspension Upgrade S Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

-- --Suspension
RegisterNetEvent('qb-mechanicparts:Turbo0')
AddEventHandler('qb-mechanicparts:Turbo0', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    turbo = IsToggleModOn(veh, 18)
    print(turbo)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if turbo == 1 then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Turbo", "Removing Turbo...", 9250, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 18, false)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "turbo0", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["turbo0"], "remove")
                                    QBCore.Functions.Notify("Turbo Successfully removed", "success")

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Turbo Already Removed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)

RegisterNetEvent('qb-mechanicparts:Turbo1')
AddEventHandler('qb-mechanicparts:Turbo1', function()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local PlayerJob = QBCore.Functions.GetPlayerData().job
    turbo = IsToggleModOn(veh, 18)
    print(turbo)
        if PlayerJob.name == Config.Job then
            if onDuty then
                if turbo == false then
                    if vehicle ~= nil and vehicle ~= 0 then
                        if (IsBackEngine(GetEntityModel(vehicle))) then
                            SetVehicleDoorOpen(vehicle, 5, false, false)
                        else
                            SetVehicleDoorOpen(vehicle, 4, false, false)
                        end
                        local ped = PlayerPedId()
                        local pos = GetEntityCoords(ped)
                        local vehpos = GetEntityCoords(vehicle)
                        if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                            local drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, 2.5, 0)
                            if (IsBackEngine(GetEntityModel(vehicle))) then
                                drawpos = GetOffsetFromEntityInWorldCoords(vehicle, 0, -2.5, 0)
                            end
                            if #(pos - drawpos) < 2.0 and not IsPedInAnyVehicle(ped) then
                            
                                QBCore.Functions.Progressbar("Turbo", "Installing Turbo...", 9500, false, true, {
                                    disableMovement = true,
                                    disableCarMovement = true,
                                    disableMouse = false,
                                    disableCombat = true,
                                }, {
                                    animDict = "mini@repair",
                                    anim = "fixing_a_player",
                                    flags = 16,
                                }, {}, {}, function() -- Done
                                    ClearPedTasksImmediately(PlayerPedId())
                                    SetVehicleModKit(vehicle, 0)
                                    ToggleVehicleMod(vehicle, 18, true)
                                    local vehicle = QBCore.Functions.GetVehicleProperties(vehicle)
                                    saveVehicle()  
                                    TriggerServerEvent("QBCore:Server:RemoveItem", "turbo1", 1)
                                    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["turbo1"], "remove")
                                    QBCore.Functions.Notify("Turbo Successfully installed", "success")
                                    

                                end)
                            end
                        end
                    end
                else
                    QBCore.Functions.Notify("Turbo Already Installed", "error")
                end
            else
                QBCore.Functions.Notify("You need to sign on duty!!", "error")
            end
        else
            QBCore.Functions.Notify("You are not allowed to complete this action", "error")
        end
end)


-------------------------USING QB MENU FOR BELOW-------------------------
---------YOU MUST CONVERT TO WHAT YOUR USING IF NOT USING QB MENU--------
-------------------------------------------------------------------------

-- VEHICLE MENU
RegisterNetEvent('craft:vehmenu', function()
    
    local ped = PlayerPedId()
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local plate = QBCore.Functions.GetPlate(vehicle)

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Vehicle: " .. plate,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 2,
            header = "Vehicle Status",
            txt = "View vehicle health and status",
            params = {
                event = "craft:vehstatus",
            }
        },
        {
            id = 3,
            header = "Vehicle Modifications",
            txt = "View vehicles modifications and upgrades",
            params = {
                event = "craft:vehmods",
            }
        },
        {
            id = 4,
            header = "Close Menu",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },
    })
end)

-- VEHICLE HEALTH/STATUS
RegisterNetEvent('craft:vehstatus', function()

    statusList = exports['qb-mechanicjob']:GetVehicleStatusList(plate)
    fuel = exports['LegacyFuel']:GetFuel(vehicle)
    vehicle = QBCore.Functions.GetClosestVehicle()
    plate = GetVehicleNumberPlateText(vehicle)
    engineHealth = GetVehicleEngineHealth(vehicle)
    vehTemp = GetVehicleEngineTemperature(vehicle)
    bodyHealth = GetVehicleBodyHealth(vehicle)
    fuelHealth = exports['LegacyFuel']:GetFuel(vehicle)
    tankHealth = GetVehiclePetrolTankHealth(vehicle)

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Fuel Level",
            txt = "Status: " .. math.ceil(fuelHealth) .. ".0% / 100.0%",
        },
        {
            id = 2,
            header = "Engine Health",
            txt = "Status: " .. math.ceil(engineHealth / 10) .. "% / 100.0%",
        },
        {
            id = 3,
            header = "Body Health",
            txt = "Status: " .. math.ceil(bodyHealth / 10) .. "% / 100.0%",
        },
        {
            id = 4,
            header = "Engine Temperature",
            txt = "Status: " .. math.ceil(vehTemp) .. "° C",
        }, 

        {
            id = 5,
            header = "Main Menu",
            txt = "Back to main menu",
            params = {
                event = "craft:vehmenu",
            }
        },
        {
            id = 6,
            header = "Close Menu",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },
    })
end)

-- VEHICLE MODIFICATIONS
RegisterNetEvent('craft:vehmods', function()

    ped = PlayerPedId()
    vehicle = QBCore.Functions.GetClosestVehicle()
    plate = QBCore.Functions.GetPlate(vehicle)
    statusList = exports['qb-mechanicjob']:GetVehicleStatusList(plate)
    fuel = exports['LegacyFuel']:GetFuel(vehicle)
    engine = GetVehicleMod(veh, 11)
    brakes = GetVehicleMod(veh, 12)
    transmission = GetVehicleMod(veh, 13)
    suspension = GetVehicleMod(veh, 15)
    turbo = IsToggleModOn(veh, 18)

    if engine == -1 then
        engine = "Standard"
    elseif
    engine == 0 then
        engine = "Stage 1 Upgrade"
    elseif
    engine == 1 then
        engine = "Stage 2 Upgrade"
    elseif
    engine == 2 then
        engine = "Stage 3 Upgrade"
    elseif
    engine == 3 then
        engine = "Stage 4 Upgrade"
    end
    if brakes == -1 then
        brakes = "Standard"
    elseif
    brakes == 0 then
        brakes = "Stage 1 Upgrade"
    elseif
    brakes == 1 then
        brakes = "Stage 2 Upgrade"
    elseif
    brakes == 2 then
        brakes = "Stage 3 Upgrade"
    end
    if transmission == -1 then
        transmission = "Standard"
    elseif
    transmission == 0 then
        transmission = "Stage 1 Upgrade"
    elseif
    transmission == 1 then
        transmission = "Stage 2 Upgrade"
    elseif
    transmission == 2 then
        transmission = "Stage 3 Upgrade"
    end
    if suspension == -1 then
        suspension = "Standard"
    elseif
    suspension == 0 then
        suspension = "Stage 1 Upgrade"
    elseif
    suspension == 1 then
        suspension = "Stage 2 Upgrade"
    elseif
    suspension == 2 then
        suspension = "Stage 3 Upgrade"
    elseif
    suspension == 3 then
        suspension = "Stage 4 Upgrade"
    end
    if turbo == 1  then
        turbo = "Turbo"
    else
        turbo = "N/A"
    end

    exports['qb-menu']:openMenu({
        {
            id = 1,
            header = "Vehicle: " .. plate,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 2,
            header = "Engine: ".. engine,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 3,
            header = "Transmission: ".. transmission,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 4,
            header = "Suspension: ".. suspension,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 5,
            header = "Brakes: ".. brakes,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 6,
            header = "Turbo: ".. turbo,
            txt = "",
            isMenuHeader = true
        },
        {
            id = 7,
            header = "Main Menu",
            txt = "Back to main menu",
            params = {
                event = "craft:vehmenu",
            }
        },
        {
            id = 8,
            header = "Close Menu",
            txt = "",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },
    })
end)
