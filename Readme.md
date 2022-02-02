# WIP

# A Mechanic Job for QBCore Framework
Features :
- Allows mechanics or a set job (configurable in Config file) to install vehichle upgrades as usable items. 
- Some of the items have been set up and incorporated with to be craftable already, work will continue on this...
- Originally I believe it was set up so you had to do the upgrades in stages, however, when functioning for me I could simply put Stage 4 upgrades on a Stock engine so not sure if that was removed.

Preview : 
- Please make sure you use the latest dependencies aswell as core for this in order to work.
- This Job has been tested on the latest build as of 2/2/2022

Issues :
- Ran into issues where it wasnt saving the upgrades, as soon as you complete them and check mods it was still completely stock, putting this up in its current state in the hopes someone can get it working...
- This could simply be a "me" issue on our server, if you complete the following steps, it SHOULD work though... 
- Feedback is greatly appreciated, I am simply looking to update the script and effort orginally create by DrB1ackBeard, I deserve NO CREDIT whatsoever for this project!

## Dependencies :
QB Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

nh-context - https://github.com/nerohiro/nh-context

nh-keyboard - https://github.com/nerohiro/nh-keyboard

## Credits : 
Kyle & DrB1ackBeard.


## Insert into #qb-core - shared/items.lua
```
QBShared.Items = {

	["engine0"] 		 	 	  = {["name"] = "engine0", 							["label"] = "Stock Engine A", 						["weight"] = 125, 		["type"] = "item", 		["image"] = "engine_parts_a.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stock Engine"},
	["engine1"] 		 	 	  = {["name"] = "engine1", 							["label"] = "Engine Upgrade B", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "engine_parts_b.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Engine Upgrade 1"},
	["engine2"] 		 	 	  = {["name"] = "engine2", 							["label"] = "Engine Upgrade C", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "engine_parts_c.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Engine Upgrade 2"},
	["engine3"] 		 	 	  = {["name"] = "engine3", 							["label"] = "Engine Upgrade D", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "engine_parts_d.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Engine Upgrade 3"},
	["engine4"] 		 	 	  = {["name"] = "engine4", 							["label"] = "Engine Upgrade S", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "engine_parts_s.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Engine Upgrade 4"},

	["brake0"] 		 	 		  = {["name"] = "brake0", 							["label"] = "Stock Brakes A", 						["weight"] = 125, 		["type"] = "item", 		["image"] = "brake_parts_a.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stock Brake"},
	["brake1"] 		 	 	      = {["name"] = "brake1", 							["label"] = "Brakes Upgrade B", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "brake_parts_b.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Brake Upgrade 1"},
	["brake2"] 		 	 		  = {["name"] = "brake2", 							["label"] = "Brakes Upgrade C", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "brake_parts_c.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Brake Upgrade 2"},
	["brake3"] 		 	 		  = {["name"] = "brake3", 							["label"] = "Brakes Upgrade S", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "brake_parts_s.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Brake Upgrade 3"},

	["transmission0"] 		 	  = {["name"] = "transmission0", 					["label"] = "Stock Transmission A", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "transmission_parts_a.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stock Transmission"},
	["transmission1"] 		 	  = {["name"] = "transmission1", 					["label"] = "Transmission Upgrade B", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "transmission_parts_b.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Transmission Upgrade 1"},
	["transmission2"] 		 	  = {["name"] = "transmission2", 					["label"] = "Transmission Upgrade C", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "transmission_parts_c.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Transmission Upgrade 2"},
	["transmission3"] 		 	  = {["name"] = "transmission3", 					["label"] = "Transmission Upgrade S", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "transmission_parts_s.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Transmission Upgrade 3"},

	
	["suspension0"] 		 	  = {["name"] = "suspension0", 						["label"] = "Stock Suspension A", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "stock_suspension.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Stock Suspension"},
	["suspension1"] 		 	  = {["name"] = "suspension1", 						["label"] = "Suspension Upgrade B", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "stock_suspension.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Suspension Upgrade 1"},
	["suspension2"] 		 	  = {["name"] = "suspension2", 						["label"] = "Suspension Upgrade C", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "stock_suspension.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Suspension Upgrade 2"},
	["suspension3"] 		 	  = {["name"] = "suspension3", 						["label"] = "Suspension Upgrade D", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "race_suspension.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Suspension Upgrade 3"},
	["suspension4"] 		 	  = {["name"] = "suspension4", 						["label"] = "Suspension Upgrade S", 				["weight"] = 125, 		["type"] = "item", 		["image"] = "race_suspension.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Suspension Upgrade 4"},


	["turbo0"] 		 	 		  = {["name"] = "turbo0", 							["label"] = "Remove Turbo", 						["weight"] = 125, 		["type"] = "item", 		["image"] = "turbo.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "No Turbo"},
	["turbo1"] 		 	 		  = {["name"] = "turbo1", 							["label"] = "Turbo Upgrade", 						["weight"] = 125, 		["type"] = "item", 		["image"] = "turbo.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Turbo"},

}
```
## Insert into #qb-core - shared/jobs.lua (Only if using 'gasmonkey' as the desired job in Config!!!)
```
QBShared.Jobs = {
    ["gasmonkey"] = {
		label = "GassMonkeyy",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Fuck Up",
                payment = 50
            },
			['1'] = {
                name = "Oil Turner",
                payment = 75
            },
			['2'] = {
                name = "Spark Ignition",
                payment = 100
            },
			['3'] = {
                name = "Engine Cease",
                payment = 125
            },
			['4'] = {
                name = "Big Mike",
				isboss = true,
                payment = 150
            },
        },
	},
}		
```
## Insert into #qb-bossmenu - config.lua (Must insert your vector3 for where you want to place Boss Menu)
```
['gasmonkey'] = vector3(, , )),
```
## Insert into #qb-target
```
Config.TargetBones = {
	["mechanic"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
            {
                type = "client",
                event = "craft:vehmenu",
                icon = "fad fa-key",
                label = "Vehicle Menu",
                job = "mechanic",
            },
        },
        distance = 3.0
    },
}
```

```
Config.Peds = {
{ -------Tuner Shop------
	model = 's_m_y_xmech_01',
	coords = vector4(149.0, -3050.15, 6.04, 56.86),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
    scenario = "WORLD_HUMAN_CLIPBOARD",
},```

```
Then, lastly:
## Insert images from zipfile into you inventory/html/images
```
