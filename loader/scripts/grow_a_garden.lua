repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true
getgenv().ConfigsKaitun = {
	Beta_Fix_Data_Sync = true,
	NoDeletePlayer = false,
	["Block Pet Gift"] = false,
	Collect_Cooldown = 120, -- cooldown to collect fruit
	["Low Cpu"] = true,
	["Auto Rejoin"] = false,
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 150,
		["Destroy Until"] = 120,
		["Safe Tree"] = {
			"Moon Blossom",
			"Fossilight",
			Bamboo = 2,
			Coconut = 2,
			Mushroom = 2,
			Glowthorn = 2,
			Tomato = 2,
			Pumpkin = 2,
			Pepper = 2,
			Cacao = 2,
			Apple = 2,
			Romanesco = 2,
			["Elder Strawberry"] = 2,
			["Burning Bud"] = 2,
			["Giant Pinecone"] = 2,
			Corn = 2,
			["Sugar Apple"] = 2,
			["Ember Lily"] = 2,
			["Dragon Fruit"] = 2,
			Sunbulb = 2,
			["Orange Tulip"] = 2,
			Blueberry = 2,
			Watermelon = 2,
			Mango = 2,
			Cactus = 2,
			Strawberry = 2,
			Beanstalk = 2,
			Lightshoot = 2,
			Grape = 2,
			Daffodil = 2,
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = { -- any fruit u need to place
				"Carrot",
			}
		},
		Place = {
			Mode = "Lock", -- Select , Lock
			Select = {
				"Carrot"
			},
			Lock = {
				"Beanstalk",
				"Ember Lily",
				"Sugar Apple",
				"Burning Bud",
				"Giant Pinecone",
				"Elder Strawberry",
				"Grand Tomato",
				"King Cabbage",
				"Bitter Melon",
				"King Cabbage",
				"Grand Tomato",
				"Tall Asparagus",
				"Cyclamen",
				"Sugarglaze",
				"Romanesco",
				"Poseidon Plant",
				"Gleamroot",
				"Princess Thorn",
				"Amberheart",
				"Wispwing",
			}
		}
	},
	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Fairy Event"] = {
			Minimum_Money = 1_000_000, -- minimum money to start play this event
			Rewards_Item = {
				"FairyPoints",
				"Enchanted Egg",
				"Enchanted Seed Pack",
			},
			Upgrade = {
				Mode = "Order", -- Order (mean will up on order), Chepest, Highest
				Order = { -- top upgrade first, not put mean not upgrade
					"Fairy Spawn Amount",
					"Loose Fairy Spawn Amount",
					"Glimmer Multiplier",
					"Fairy Event Duration",
				},
				Limit = {
					["Glimmer Multiplier"] = 5, -- max 10
					["Loose Fairy Spawn Amount"] = 4, -- max 4
					["Fairy Event Duration"] = 5, -- max 10
					["Fairy Spawn Amount"] = 9, -- max 9
				}
			}
		},
		MaxMoney_Restocks = 1_000_000,
		Shop = { -- un comment to buy
			"Sprout Egg",
		},
		["Traveling Shop"] = {
			"Bee Egg",
		},
		Craft = {
			"Anti Bee Egg",
			"Pet Shard GiantBean",
			"Sprout Egg",
		},
		Start_Do_Honey = 2_000_000 -- start trade fruit for honey at money
	},

	Gear = {
		Buy = { 
			"Tanning Mirror",
			"Cleaning Spray",
			"Favorite Tool",
			"Harvest Tool",
			"Friendship Pot",
			"Master Sprinkler",
			"Basic Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Level Up Lollipop",
			"Medium Toy",
			"Medium Treat",
			"Grandmaster Sprinkler",
			"Lightning Rod",

		},
		Lock = {
			"Tanning Mirror",
			"Cleaning Spray",
			"Favorite Tool",
			"Harvest Tool",
			"Friendship Pot",
			"Master Sprinkler",
			"Basic Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Level Up Lollipop",
			"Medium Toy",
			"Medium Treat",
			"Grandmaster Sprinkler",
			"Lightning Rod",
		},
	},
	Eggs = {
		Place = {
			"Enchanted Egg",
			"Bug Egg",
			"Paradise Egg",
			"Sprout Egg",
			"Gourmet Egg",
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Bee Egg",
			"Rare Summer Egg",
			"Mythical Egg",
			"Uncommon Egg",
			"Legendary Egg",
		},
		Buy = {
			"Enchanted Egg",
			"Sprout Egg",
			"Gourmet Egg",
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Rare Summer Egg",
			"Mythical Egg",
			"Rare Egg",
			"Legendary Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 4, 100, 1, true },
				["Rooster"] = { 4, 100, 1, true }, -- the "true" on the last is auto equip (use for like only need to use for upgrade pet)
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Seal"] = { 8, 100 },
				["Rooster"] = { 8, 100 },
			},
		},
		Favorite_LockedPet = false,
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
			"Cockatrice",
			"Glimmering Sprite",
			"Imp",
			"Griffin",
			"Junkbot",
			"Golden Goose",
			"Golem",
			"French Fry Ferret",
			"Spaghetti Sloth",
			"Corrupted Kitsune",
			"Raiju",
			"Koi",
			"Tanuki",
			"Tanchozuru",
			"Kappa",
			"Kitsune",
			"Dilophosaurus",
			"Moon Cat",
			"Capybara",
			"Spinosaurus",
			"Bear Bee",
			"T-Rex",
			"Brontosaurus",
			"Disco Bee",
			"Butterfly",
			"Queen Bee",
			"Dragonfly",
			"Raccoon",
			"Fennec Fox",
			"Mimic Octopus",
			"Red Fox",
			"Blood Owl",
			["Starfish"] = 5,
		},
		LockPet_Weight = 5, -- if Weight >= 10 they will locked
		Ignore_Pet_Weight = {
		"NAME oF PET THAT U DONT NEED LOCK",
		},
		Instant_Sell = {
			
		}
	},
	Webhook = {
		UrlPet = "",
		UrlSeed = "",
		PcName = "xx",

		Noti = {
			Seeds = {
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk"
			},
			Pets = {
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Queen Bee",
				"Dragonfly",
				"Raccoon",
				"Fennec Fox",
				"Kitsune",
				"Corrupted Kitsune",
                "Kitsune",
			},
			Pet_Weight_Noti = false,
		}
	},
}

License = "Oz1dvloGjrT1VmXiziOkSk3cXlLsMvWP"

loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()

task.spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/extension/webhook.lua"))()
end)
