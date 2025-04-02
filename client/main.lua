-- OFF-ROAD CHECKER --
local function getMaxSpeed(vehicle)
    local vehicleClass = GetVehicleClass(vehicle)
    local vehicleModel = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))

    if Config.UseCustomOffRoadLimit then 
        if Config.CustomOffRoadLimits[vehicleModel] ~= nil then 
            maxSpeed = Config.CustomOffRoadLimits[vehicleModel]
            return maxSpeed
        else 
            maxSpeed = Config.OffRoadLimitClasses[vehicleClass]
            return maxSpeed
        end 
    else
        maxSpeed = Config.OffRoadLimitClasses[vehicleClass]
        return maxSpeed
    end 
end 

Citizen.CreateThread(function()
    local sleep = 2000 
    local isOffroad = false
    local wasOffroad = false 
    while true do
        sleep = 2000    
        
        local playerPed = PlayerPedId()

        if IsPedInAnyVehicle(playerPed, false) then
            sleep = 1000
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            local materialHash = GetVehicleWheelSurfaceMaterial(vehicle, 0)
         

            local maxSpeed = getMaxSpeed(vehicle) 

            --print(materialHash) -- Decomment that if you want to debug what ground you are standing on

            if maxSpeed == -1 then return end 

            isOffroad = false 

            for _, mat in ipairs(Config.offroadMaterials) do
                if materialHash == mat then
                    isOffroad = true
                    break
                end
            end

            if isOffroad then 
                wasOffroad = true 


                if Config.UseMPH then 
                    maxSpeed = maxSpeed * 0.44704  
                else 
                    maxSpeed = maxSpeed / 3.6
                end 

                SetEntityMaxSpeed(vehicle, maxSpeed)
            elseif wasOffroad and not isOffroad then
                wasOffroad = false 
                SetEntityMaxSpeed(vehicle, GetVehicleHandlingFloat(vehicle, "CHandlingData", "fInitialDriveMaxFlatVel"))
            end 

        end 
        Citizen.Wait(sleep)
    end
end)
-- OFF-ROAD CHECKER -- 