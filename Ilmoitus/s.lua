ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("poliisitiedoittaa", function(source, args, user)
local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.job.name == "police" or xPlayer.job.name == 'sheriff' then
		TriggerClientEvent('chat:addMessage', -1, { args = {"^5Poliisi tiedoittaa ", table.concat(args, " ")}})
	else
		TriggerClientEvent('chat:addMessage', source, ('Et vissii oo poliisi joten mene vittu roihin'))
	end
end)

RegisterCommand("ensihoitotiedoittaa", function(source, args, user)
local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.job.name == "ambulance" then
		TriggerClientEvent('chat:addMessage', -1, { args = {"^1Ensihoito tiedoittaa ", table.concat(args, " ")}})
	else
		TriggerClientEvent('chat:addMessage', source, { args = {"^1SYSTEM", "ET OLE  ENSIHOITAJA"} })
	end
end)

RegisterCommand("fixsustiedoittaa", function(source, args, user)
local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.job.name == "jfservice" then
		TriggerClientEvent('chat:addMessage', -1, { args = {"^5Fixus tiedoittaa ", table.concat(args, " ")}})
	else
		TriggerClientEvent('chat:addMessage', source, { args = {"^1SYSTEM", "ET OLE MEKSU, VITUTTAAKO?"} })
	end
end)

RegisterCommand("taksitiedoittaa", function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.job.name == "taxi" then
			TriggerClientEvent('chat:addMessage', -1, { args = {"^6Taksi tiedoittaa ", table.concat(args, " ")}})
		else
			TriggerClientEvent('chat:addMessage', source, { args = {"^1SYSTEM", "ET OLE MEKSU, VITUTTAAKO?"} })
		end
	end)

RegisterCommand("janoinenmestaritiedoittaa", function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.job.name == "amarillo" then
			TriggerClientEvent('chat:addMessage', -1, { args = {"^5Janoinen Mestari tiedoittaa ", table.concat(args, " ")}})
		else
			TriggerClientEvent('chat:addMessage', source, { args = {"^1SYSTEM", "ET OLE Baarissa, VITUTTAAKO?"} })
		end
	end)

	RegisterCommand("autotiedoittaa", function(source, args, user)
		local xPlayer = ESX.GetPlayerFromId(source)
			if xPlayer.job.name == "autoexotic" then
				TriggerClientEvent('chat:addMessage', -1, { args = {"^5Auto-Exotic tiedoittaa ", table.concat(args, " ")}})
			else
				TriggerClientEvent('chat:addMessage', source, { args = {"^1SYSTEM", "ET OLE MEKSU, VITUTTAAKO?"} })
			end
		end)