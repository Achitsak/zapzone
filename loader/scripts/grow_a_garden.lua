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
		["Limit"] = 400,
		["Destroy Until"] = 350,
		["Safe Tree"] = {
			"Moon Blossom",
			"Fossilight",
			["Sugar Apple"] = 2,
			["Elder Strawberry"] =2,
			["Ember Lily"] = 2,
			["Grand Tomato"] = 2,
			["Beanstalk"] = 2,
            ["Blueberry"] = 5,
            ["Strawberry"] = 5,
            ["Apple"] = 4,
            ["Coconut"] = 4,
            ["Dragon Fruit"] = 4,
            ["Mango"] = 2,
            ["Tomato"] = 5,
            ["Cactus"] = 5,
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
			}
		}
	},
	["Seed Pack"] = {
		Locked = {

		}
	},
	Events = {
		["Bean Event"] = {
			Minimum_Money = 1_000_000, -- minimum money to start play this event
		},
		MaxMoney_Restocks = 1_000_000,
		Shop = { -- un comment to buy
			"Sprout Seed Pack",
			"Sprout Egg",
			-- "Mandrake",
			"Silver Fertilizer",
			-- "Canary Melon",
			-- "Amberheart",
			["Spriggan"] = 8,
			-- Friend Shop
			"Skyroot Chest",
			"Gnome",
			"Pet Shard GiantBean",
		},
		["Traveling Shop"] = {
			"Bee Egg",
		},
		Craft = {
			"Anti Bee Egg",
			"Pet Shard GiantBean",
			"Sprout Egg",
		},
		Start_Do_Honey = 1_000_000 -- start trade fruit for honey at money
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
			"Uncommon Egg",
			"Legendary Egg",
		},
		Buy = {
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
			"Monkey",
			"Pig",
			"Spotted Deer",
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
