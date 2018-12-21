
local own_id

RegisterNetEvent("ownId:init")
AddEventHandler("ownId:init", function(user_id)
	own_id = user_id
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)
		if own_id ~= nil then
			local text = "Your ID: "..own_id

			SetTextFont(0)
			SetTextProportional(1)
			SetTextScale(0.40, 0.40)
			SetTextColour(255, 255, 255, 255)
			SetTextDropshadow(0, 0, 0, 0, 255)
			SetTextEdge(1, 0, 0, 0, 255)
			SetTextDropShadow()
			SetTextOutline()
			SetTextRightJustify(true)
			SetTextWrap(0,0.95)
			SetTextEntry("STRING")

			AddTextComponentString(text)
			DrawText(1.0, 0.88)
		end
	end
end)
