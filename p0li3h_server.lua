-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/

local everyoneAllowed = false

local allowed = 
{
	"steam:", -- Change this to yours steam hex

}


AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fx" then
		CancelEvent()
		if everyoneAllowed == true then
			TriggerClientEvent('p0li3h:fix', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('p0li3h:fix', source)
			else
				TriggerClientEvent('p0li3h:noPerms', source)
			end
		end
	elseif msg == "/c" then 
		CancelEvent()
		if everyoneAllowed == true then
			TriggerClientEvent('p0li3h:clean', source)
		else
			if checkAllowed(identifier) then
				TriggerClientEvent('p0li3h:clean', source)
			else
				TriggerClientEvent('p0li3h:noPerms', source)
			end
		end
	end
end)

function checkAllowed(id)
	for k, v in pairs(allowed) do
		if id == v then
			return true
		end
	end
	
	return false
end

-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
-- https://g0dp0li3h.pl/
