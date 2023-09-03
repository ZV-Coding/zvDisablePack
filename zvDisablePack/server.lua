--Disable WeaponFromPolVehicle
local Cops = {
	"steam:100000000000",
}

RegisterServerEvent("zvDisablePack:askDropWeapon")
AddEventHandler("zvDisablePack:askDropWeapon", function(wea)
	if Config.DisableWeaponFromPolVeh then
		local isCop = false

		for _,k in pairs(Cops) do
			if(k == getPlayerID(source)) then
				isCop = true
				break;
			end
		end

		if(not isCop) then
			print(1)
			TriggerClientEvent("zvDisablePack:weaDrop", source, wea)
		end
	end
end)

function getPlayerID(source)
	if Config.DisableWeaponFromPolVeh then
		local identifiers = GetPlayerIdentifiers(source)
		local player = getIdentifiant(identifiers)

		return player
	end
end

function getIdentifiant(id)
	if Config.DisableWeaponFromPolVeh then
		for _, v in ipairs(id) do
			return v
		end
	end
end