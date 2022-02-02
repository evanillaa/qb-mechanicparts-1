# WIP

# A Mechanic Job for QBCore Framework
Features :
- Allows mechanics or a set job (configurable in Config file) to install vehichle upgrades as usable items. 
- Some of the items have been set up and incorporated with to be craftable already, work will continue on this...
- Originally I believe it was set up so you had to do the upgrades in stages, however, when functioning for me I could simply put Stage 4 upgrades on a Stock engine so not sure if that was removed.

Preview : 
- Please make sure you use the latest dependencies aswell as core for this in order to work.
- This Job has been tested on the latest build as of 2/2/2022

Screenshots :

https://i.imgur.com/1Z9bDWw.png

https://i.imgur.com/GmMTD4g.png

https://i.imgur.com/4ijuHoy.png

https://i.imgur.com/VQg8vFa.png

https://i.imgur.com/7Rp1h16.png

https://i.imgur.com/IhebqWn.png

https://i.imgur.com/9tg5r1Z.png

https://i.imgur.com/Bx3CsTi.png

https://i.imgur.com/tlTkjSq.png

https://i.imgur.com/Ye9672o.png

https://i.imgur.com/8ReQe0D.png

https://i.imgur.com/UZF0eCD.png


Issues :
- Most now fixed, that I'm aware of. 
- Feedback is greatly appreciated, I am simply looking to update the script and effort originally create by DrB1ackBeard, I deserve NO CREDIT whatsoever for this project!

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


## Insert into shop/config.lua (To make items purchasable at Store for Mechanic Only if not wanting to craft them...)
```
    ["mechanic"] = {
        [1] = {
            name = "engine0",
            price = 800,
            amount = 5,
            info = {},
            type = "item",
            slot = 1,
            requiredJob = { "mechanic" }
        },
        [2] = {
            name = "engine1",
            price = 1350,
            amount = 5,
            info = {},
            type = "item",
            slot = 2,
            requiredJob = { "mechanic" }
        },
        [3] = {
            name = "engine2",
            price = 6000,
            amount = 5,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic" }
        },
        [4] = {
            name = "engine3",
            price = 11000,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
            requiredJob = { "mechanic" }
        },
        [5] = {
            name = "engine4",
            price = 16000,
            amount = 2,
            info = {},
            type = "item",
            slot = 5,
            requiredJob = { "mechanic" }
        },
        [6] = {
            name = "brake0",
            price = 375,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
            requiredJob = { "mechanic" }
        },
        [7] = {
            name = "brake1",
            price = 1000,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
            requiredJob = { "mechanic" }
        },
        [8] = {
            name = "brake2",
            price = 2250,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
            requiredJob = { "mechanic" }
        },
        [9] = {
            name = "brake3",
            price = 3750,
            amount = 5,
            info = {},
            type = "item",
            slot = 9,
            requiredJob = { "mechanic" }
        },
        [11] = {
            name = "transmission0",
            price = 700,
            amount = 5,
            info = {},
            type = "item",
            slot = 11,
            requiredJob = { "mechanic" }
        },
        [12] = {
            name = "transmission1",
            price = 1500,
            amount = 5,
            info = {},
            type = "item",
            slot = 12,
            requiredJob = { "mechanic" }
        },
        [13] = {
            name = "transmission2",
            price = 3250,
            amount = 5,
            info = {},
            type = "item",
            slot = 13,
            requiredJob = { "mechanic" }
        },
        [14] = {
            name = "transmission3",
            price = 4250,
            amount = 5,
            info = {},
            type = "item",
            slot = 14,
            requiredJob = { "mechanic" }
        },
        [16] = {
            name = "suspension0",
            price = 300,
            amount = 5,
            info = {},
            type = "item",
            slot = 16,
            requiredJob = { "mechanic" }
        },
        [17] = {
            name = "suspension1",
            price = 880,
            amount = 5,
            info = {},
            type = "item",
            slot = 17,
            requiredJob = { "mechanic" }
        },
        [18] = {
            name = "suspension2",
            price = 2250,
            amount = 5,
            info = {},
            type = "item",
            slot = 18,
            requiredJob = { "mechanic" }
        },
        [19] = {
            name = "suspension3",
            price = 4750,
            amount = 5,
            info = {},
            type = "item",
            slot = 19,
            requiredJob = { "mechanic" }
        },
        [20] = {
            name = "turbo0",
            price = 500,
            amount = 5,
            info = {},
            type = "item",
            slot = 20,
            requiredJob = { "mechanic" }
        },
        [21] = {
            name = "turbo1",
            price = 5000,
            amount = 5,
            info = {},
            type = "item",
            slot = 21,
            requiredJob = { "mechanic" }
        },
        [22] = {
            name = "cleaningkit",
            price = 18,
            amount = 50,
            info = {},
            type = "item",
            slot = 22,
            requiredJob = { "mechanic" }
        },
    },
```
```
        ["tunershop"] = {
        ["label"] = "Tuner Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = vector3(148.36, -3050.99, 7.04)
        },
        ["products"] = Config.Products["mechanic"],
        ["showblip"] = false,
        ["blipsprite"] = 402
    },
    ```

