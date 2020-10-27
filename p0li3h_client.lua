-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/

RegisterNetEvent('p0li3h:fix')
AddEventHandler('p0li3h:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		notification("~g~Auto Zostalo ~r~Naprawione")
	else
		notification("~y~Nie ma cie w pojezdzie !!!")
	end
end)

RegisterNetEvent('p0li3h:clean')
AddEventHandler('p0li3h:clean', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		notification("~g~Auto Zostalo ~r~Wyczyszczone")
	else
		notification("~y~Nie ma cie w pojezdzie !!!")
	end
end)

RegisterNetEvent('p0li3h:noPerms')
AddEventHandler('p0li3h:noPerms', function()
	notification("~r~Nie ~b~Masz ~r~Permisji ~b~Cioto")
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
