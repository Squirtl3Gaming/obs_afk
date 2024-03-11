local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	local time = 90

	while true do
		Wait(1000)
		local playerPed = PlayerPedId()
		if playerPed then
			-- if Config.AFK.kickInCharMenu == true then
				local CurrentPos = GetEntityCoords(playerPed, true)
					if CurrentPos == PrevPos then
						if time > 0 then
							if Config.kickWarning and time <= 30 then
								exports['okokNotify']:Alert("AFK", "You will be kicked for inactivity Soon", 10000, 'error')
								exports['ps-ui']:Circle(function(success)
									if success then
										exports['okokNotify']:Alert("AFK", "Succesfully Added time to AFK timer", 10000, 'success')
										time = Config.timeAFK
									else
										exports['okokNotify']:Alert("AFK", "You Failed the check You will be kicked soon", 10000, 'error')
										Citizen.Wait(90000)
										TriggerServerEvent("obs_afk:afk")
									end
								end, 2, 30) -- NumberOfCircles, MS
							end
							time = time - 1
						else
							TriggerServerEvent("obs_afk:afk")
						end
					else
						time = Config.timeAFK
					end
					PrevPos = CurrentPos
			-- end
		end
	end
end)


