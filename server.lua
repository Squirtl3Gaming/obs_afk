RegisterServerEvent("obs_afk:afk", function()
	if not Config.licenseID[GetPlayerIdentifier(source, 0)] then
		DropPlayer(source, Config.kickarsemsg)
	end
end)
