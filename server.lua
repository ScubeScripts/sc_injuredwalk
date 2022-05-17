Citizen.CreateThread(function()

	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	while true do
		Wait(0)
	RequestAnimSet("move_m@injured")
	Wait(500)
		if DoesEntityExist(ped) then
			if GetEntityHealth(ped) <= 120 then
				hurt = true
			elseif GetEntityHealth(ped) > 121 then
				hurt = false
			end
		end

		if hurt then
			SetPedMovementClipset(ped, "move_m@injured", true)
		else
			ResetPedMovementClipset(GetPlayerPed(-1))
			ResetPedWeaponMovementClipset(GetPlayerPed(-1))
			ResetPedStrafeClipset(GetPlayerPed(-1))
		end
	end
end, false)
