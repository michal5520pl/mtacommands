function createVehicleForPlayer(thePlayer, spawn, vehicleModel)
	local x,y,z = getElementPosition(thePlayer)
	x = x + 5
	local createdVehicle = createVehicle(tonumber(vehicleModel),x,y,z)
end

function fixVeh(sourcePlayer)
	local theVehicle = getPedOccupiedVehicle(sourcePlayer)
    if theVehicle and getVehicleController(theVehicle) == sourcePlayer then
         fixVehicle(theVehicle)
         outputChatBox("Your vehicle has been fixed !", thePlayer)
	end
end

addCommandHandler("spawn", createVehicleForPlayer)
addCommandHandler("fix", fixVeh)