ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	TriggerEvent('esx_license:getLicenses', source, function(licenses)
		TriggerClientEvent('sync_flightschool:loadLicenses', source, licenses)
	end)
end)

RegisterNetEvent('sync_flightschool:addLicense')
AddEventHandler('sync_flightschool:addLicense', function(type)
	local _source = source

	TriggerEvent('esx_license:addLicense', _source, type, function()
		TriggerEvent('esx_license:getLicenses', _source, function(licenses)
			TriggerClientEvent('sync_flightschool:loadLicenses', _source, licenses)
		end)
	end)
end)

RegisterNetEvent('sync_flightschool:pay')
AddEventHandler('sync_flightschool:pay', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', _source, _U('you_paid', ESX.Math.GroupDigits(price)))
end)
