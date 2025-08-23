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
	["Auto Rejoin"] = true,

	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 300,
		["Destroy Until"] = 250,

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
            ["Blueberry"] = 15,
            ["Strawberry"] = 15,
            ["Apple"] = 15,
            ["Coconut"] = 15,
            ["Dragon Fruit"] = 15,
            ["Mango"] = 15,
            ["Tomato"] = 20,
            ["Cactus"] = 15,
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
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
				"Moon Melon",
				"Moon Mango",
				"Fossilight",
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
				"Taco Fern",
				"Sugarglaze",
				"Romanesco",
				"Poseidon Plant",
				"Gleamroot",
				"Princess Thorn",
				"Amberheart",
			},
			Lock = {
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
				"Moon Melon",
				"Moon Mango",
				"Fossilight",
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
				"Taco Fern",
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
			"Watering Can",
			"Trowel",
			"Recall Wrench",
			"Magnifying Glass",
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
			"Watering Can",
			"Trowel",
			"Recall Wrench",
			"Magnifying Glass",
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
			"Dinosaur Egg",
			"Gourmet Egg",
			"Zen Egg",
			"Primal Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Rare Summer Egg",
			"Common Egg",
			"Mythical Egg",
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

		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 8, 100, 1, true  },
				["Golden Lab"] = { 8, 100, 1, true  },
				["Bee"] = { 8, 100, 1, true  },
				["Bunny"] = { 8, 100, 1, true  },
				["Golden Lab"] = { 8, 100, 1, true  },
				["Pancake Mole"] = { 8, 100, 1, true  },
				["Bagel Bunny"] = { 8, 100, 1, true  },
				["Tanuki"] = { 8, 100, 1, true  },
				["Kodama"] = { 8, 100, 1, true  },
				["Raiju"] = { 8, 100, 1, true  },
				["Maneki-neko"] = { 8, 100, 1, true  },
				["Seagull"] = { 8, 100, 1, true  },
				["Shiba Inu"] = { 8, 100, 1, true  },
				["Nihonzaru"] = { 8, 100, 1, true  },
				["Stegosaurus"] = { 8, 100, 1, true  },
				["Peacock"] = { 8, 100, 1, true  },
				["Triceratops"] = { 8, 100, 1, true  },
				["Pterodactyl"] = { 8, 100, 1, true  },
				["Toucan"] = { 8, 100, 1, true  },
				["Bunny"] = { 8, 100, 1, true  },
			},
			["Limit Upgrade"] = 5, -- max is 5 (more than or lower than 1 will do nothing)
			["Equip When Done"] = {
				["Tanchozuru"] = { 5, 100, 1 }, -- 5 on the first mean equip only 5 | pet , 100 mean equip only level pet lower than 100 | the one on the last is priority it will ues first if possible 
				["Ostrich"] = { 3, 100, 2 },
				["Blood Kiwi"] = { 8, 100 },
				["Seal"] = { 8, 100 },
				["Rooster"] = { 8, 100 },
				["Starfish"] = { 5, 75 },
			},
		},
		Unfavorite_AllPet = true,
		Favorite_LockedPet = false,
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
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
		LockPet_Weight = 7, -- if Weight >= 10 they will locked
		Ignore_Pet_Weight = {
			"NAME oF PET THAT U DONT NEED LOCK",
		},
		Instant_Sell = {
			"NAME oF SOMETHING",
		}
	},

	Webhook = {
		UrlPet = "xxx",
		UrlSeed = "xxx",
		PcName = "xxx",

		Mention = "", -- discord id

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
				"Golden Goose",
				"French Fry Ferret",
				"Corrupted Kitsune",
				"Kitsune",
				"Spinosaurus",
				"T-Rex",
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Queen Bee",
				"Fennec Fox",
				"Dragonfly",
				"Raccoon",
				"Red Fox",
			},
			Pet_Weight_Noti = true,
		}
	},
}

License = "Oz1dvloGjrT1VmXiziOkSk3cXlLsMvWP"

loadstring(game:HttpGet('https://raw.githubusercontent.com/Real-Aya/Loader/main/Init.lua'))()

task.spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/extension/webhook.lua"))()
end)
