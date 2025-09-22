repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true
getgenv().ConfigsKaitun = {
	Beta_Fix_Data_Sync = true,

	NoDeletePlayer = false,

	["Block Pet Gift"] = false,

	Collect_Cooldown = 60, -- cooldown to collect fruit

	["Low Cpu"] = true,
	["Auto Rejoin"] = true,

	["Rejoin When Update"] = true,

	["Auto Trade Pet"] = { -- not done yet bro dont use
		["Enabled"] = false, 
		["Target"] =  { -- multi users
			"username1",
			"username2",
		},
		["Pet To Send"] = {
			
		}
	},

	Ascend = {
		Enabled = true,
		Max_Rebirth_Money = 1_000_000_000_000,
		Shop = {
			"Egg Capacity"
		}
	},

	["Limit Tree"] = {
		["Limit"] = 400,
		["Destroy Until"] = 400,

		["Safe Tree"] = {
			"Moon Blossom",
			"Bone Blossom",
			"Moon Melon",
			"Maple Apple",
			"Moon Mango",
			"Dragon Pepper",
			"Elephant Ears",
			"Fossilight",
			"Princess Thorn",
			-- for the event
			Bamboo = 4,
			Coconut = 15,
			Mushroom = 4,
			Glowthorn = 4,
			Tomato = 15,
			Pumpkin = 4,
			Pepper = 4,
			Cacao = 15,
			Apple = 15,
			Romanesco = 4,
			["Elder Strawberry"] = 4,
			["Burning Bud"] = 4,
			["Giant Pinecone"] = 4,
			Corn = 4,
			["Sugar Apple"] = 4,
			["Ember Lily"] = 4,
			["Dragon Fruit"] = 15,
			Sunbulb = 8,
			["Orange Tulip"] = 4,
			Blueberry = 15,
			Watermelon = 4,
			Mango = 15,
			Cactus = 4,
			Strawberry = 15,
			Beanstalk = 4,
			Lightshoot = 4,
			Grape = 4,
			Daffodil = 4,
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
		["Fall Event"] = {
			Minimum_Money = 10_000_000, -- minimum money to start play this event
		},
		MaxMoney_Restocks = 10_000_000,
		
		Shop = { -- un comment to buy
			"Fall Egg",
			"Red Panda",

			"Enchanted Chest",
			"Pet Shard Glimmering",
			"Enchanted Egg",
			"Enchanted Seed Pack",
			-- "Drake",
			"Pixie Faern",
			"Untold Bell",
			"Luminous Sprite",
			"Mutation Spray Luminous",
			"Luminous Wand",

			"Sprout Seed Pack",
			"Sprout Egg",
			-- "Mandrake",
			"Silver Fertilizer",
			-- "Canary Melon",
			-- "Amberheart",
			["Spriggan"] = 8,
			-- Friend Shop
			"Skyroot Chest",
			"Pet Shard GiantBean",
		},
		["Traveling Shop"] = {
			"Bee Egg",
			"Paradise Egg", 
			"Rare Summer Egg", 
			"Common Summer Egg"
		},
		Craft = {
			"Enchanted Chest",
			"Fairy Net",
			"Enchanted Egg",
			"Enchanted Seed Pack",
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
			"Fall Egg",
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
			"Common Egg",
		},
		Buy = {
			"Bee Egg",
			"Oasis Egg",
			"Paradise Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Rare Summer Egg",
			"Bug Egg",
			"Mythical Egg",
			"Uncommon Egg",
			"Common Egg",
		}
	},

	Pets = {
		["Auto Feed"] = true,

		MutationPet = {
			["PET NAME"] = { "Glimmering","... any other" }
		},
		
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Golem"] = { 4, 100, 1, true },
				["Bunny"] = { 4, 100, 1, true },
				["Golden Lab"] = { 4, 100, 1, true },
				["Dog"] = { 4, 100, 1, true },
				["Mandrake"] = { 4, 100, 1, true },
				["Spriggan"] = { 4, 100, 1, true },
				["Dog"] = { 4, 100, 1, true },
				["Ladybug"] = { 4, 100, 1, true },
				["Imp"] = { 4, 100, 1, true },
				["Rooster"] = { 4, 100, 1, true }, -- the "true" on the last is auto equip (use for like only need to use for upgrade pet)
			},
			["Limit Upgrade"] = 5, -- max is 5 (more than or lower than 1 will do nothing)
			["Equip When Done"] = {
				["Glimmering Sprite"] = {8, 100, 1},
				["Tanchozuru"] = { 5, 100, 2 }, -- 5 on the first mean equip only 5 | pet , 100 mean equip only level pet lower than 100 | the one on the last is priority it will ues first if possible 
				["Ostrich"] = { 3, 100, 2 },
				["Blood Kiwi"] = { 8, 100 },
				["Seal"] = { 8, 100 },
				["Rooster"] = { 8, 100 },
				["Starfish"] = { 5, 75 },
			},
		},
		Favorite_LockedPet = false,
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
			"Swan",
			"Phoenix",
			"Cockatrice",
			"Griffin",
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
			["Starfish"] = 10,
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
