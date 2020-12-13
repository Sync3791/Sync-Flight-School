Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.Locale          = 'en'

Config.Prices = {
	flightdmv         = 250,
	fly       = 1500,
	fly_light  = 1000,
	fly_jet = 3000
}

Config.VehicleModels = {
	fly       = 'velum2',
	fly_light  = 'mammatus',
	fly_jet = 'nimbus'
}

Config.Zones = {

	SyncSchool = {
		Pos   = {x = -1155.04, y = -2715.28, z = 19.89},
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Color = {r = 171, g = 62, b = 243},
		Type  = 7
	},

	VehicleSpawnPoint = {
		Pos   = {x = -978.65, y = -2996.51, z = 11.95, h = 61.07},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Color = {r = 171, g = 62, b = 243},
		Type  = -1
	}

}

Config.CheckPoints = {

	{
		Pos = {x = -1064.91, y = -2979.39, z = 13.96},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('next_point_speed'), 5000)
		end
	},

	{
		Pos = {x = -1023.24, y = -3061.04, z = 13.94},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -1011.76, y = -3129.57, z = 13.94},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('watch_traffic_lightson'), 5000)
			end)
		end
	},

	{
		Pos = {x = -1478.29, y = -2867.07, z = 50.96},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			Citizen.CreateThread(function()
				DrawMissionText(_U('stop_for_ped'), 5000)
			end)
		end
	},

	{
		Pos = {x = -1985.79, y = -2583.05, z = 208.94},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('watch_traffic_lightson'), 5000)
		end
	},

	{
		Pos = {x = -3807.71, y = 19.63, z = 410.03},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -3267.47, y = 2473.18, z = 477.76},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = -615.01, y = 2543.81, z = 564.87},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('hway_time'), 5000)
		end
	},

	{
		Pos = {x = 284.09, y = 2827.10, z = 238.94},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 579.14, y = 2912.26, z = 169.19},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 853.16, y = 2995.65, z = 107.86},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('gratz_stay_alert'), 5000)
		end
	},

	{
		Pos = {x = 997.62, y = 3059.63, z = 57.99},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1120.44, y = 3095.8, z = 40.41},
		Action = function(playerPed, vehicle, setCurrentZoneType)
			DrawMissionText(_U('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1274.31, y = 3135.83, z = 40.41},
		Action = function(playerPed, vehicle, setCurrentZoneType)
		PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			ESX.Game.DeleteVehicle(vehicle)
		end
	}

}
