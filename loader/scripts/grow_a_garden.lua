repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true
print('this is loadstring for grow a garden')

getgenv().ConfigsKaitun = {
	["Block Pet Gift"] = false,
	
	["Low Cpu"] = true,
	["Auto Rejoin"] = true,
	
	["Rejoin When Update"] = false,
	["Limit Tree"] = {
		["Limit"] = 250,
		["Destroy Untill"] = 240,

		["Safe Tree"] = {
			"Moon Blossom",
			"Fossilight",
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = {

			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
				"Carrot",
 				"Tomato",
 				"Strawberry",
 				"Corn",
 				"Apple",
 				"Coconut",
 				"Watermelon",
 				"Cactus",
 				"Dragon Fruit",
				"Mango",
				"Mushroom",
				"Grape",
				"Pepper",
				"Cacao",
				"Bamboo",
				"Pumpkin",
				"Daffodil",
				"Orange Tulip",
				"Watermelon",
				"Mushroom",
				"Avocado",
				"Feijoa",
				"Cauliflower",
				"Loquat",
				"Green Apple",
				"Nightshade",
				"Firefly Fern",
				"Soft Sunshine",
				"Zen Rocks",
				"Hinomai",
				"Beanstalk",
				"Sugar Apple",
				"Spiked Mango",
			},
			Lock = {
				"Sunflower",
				"Sugar Apple",
				"Elephant Ears",
				"Dragon Pepper",
				"Burning Bud",
				"Ember Lily",
				"Beanstalk",
				"Feijoa",
				"Cacao",
				"Pepper",
				"Mushroom",
				"Loquat",
				"Fossilight",
				"Maple Apple",
				"Hinomai",
				"Fossilight",
				"Zen Rocks",
				"Giant Pinecone",
				"Grand Volcania",
				"Bone Blossom"
			}
		}
	},

	["Seed Pack"] = {
		Locked = {

		}
	},

	Events = {
		["Zen Event"] = {
			["Restocking"] = { -- Minimumthing to restock
				Max_Restocks_Price = 10_000_000,
				Minimum_Money = 1_000_000,
				Minimum_Chi = 200
			},
			["Doing"] = {
				Minimum_Money = 1_000_000, -- minimum money to start play this event
				First_Upgrade_Tree = 4,
				Maximum_Chi = 50,
			}
		},
		["Traveling Shop"] = {
			"Bee Egg",
			"Night Staff",
			"Star Caller",
		},
		Craft = {
			"Ancient Seed Pack",
			"Anti Bee Egg",
			"Primal Egg",
		},
		Shop = {
			"Zen Egg",
			"Zen Seed Pack",
			"Spiked Mango",
			"Pet Shard Tranquil",
			"Pet Shard Corrupted",
			"Koi",
			"Soft Sunshine",
			"Sakura Bush",
			"Raiju",
		},
		Start_Do_Honey = 2_000_000 -- start trade fruit for honey at money
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
			"Medium Toy",
			"Medium Treat",
			"Levelup Lollipop",
			"Lightning Rod",
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
		},
	},

	Eggs = {
		Place = {
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Legendary Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Mythical Egg",
		},
		Buy = {
			"Zen Egg",
			"Primal Egg",
			"Dinosaur Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Legendary Egg",
			"Bug Egg",
			"Paradise Egg",
			"Bee Egg",
			"Mythical Egg",
		}
	},

	Pets = {
		["Start Delete Pet At"] = 40,
		["Upgrade Slot"] = {
			["Pet"] = {
				["Starfish"] = { 5, 100, 1 },
				["Maneki-neko"] = { 5, 100, 1 },
				["Ostrich"] = { 2, 100, 1 },
				["Nihonzaru"] = { 2, 100, 1 },
				["Tanuki"] = { 2, 100, 1 },
				["Kodama"] = { 2, 100, 1 },
				["Squirrel"] = { 2, 100, 1 },
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Blood Kiwi"] = { 8, 100, 3 },
				["Rooster"] = { 5, 100, 4 },
				["Tanchozuru"] = { 8, 100, 5 },
				["Kodama"] = { 2, 100, 1 },
				["Corrupted Kodama"] = { 2, 100, 2 },
			},
		},
		Locked_Pet_Age = 50, -- pet that age > 60 will lock
		Locked = {
			"Corrupted Kitsune",
			"Raiju",
			"Koi",
			"Tanuki",
			["Tanchozuru"] = 8,
			"Kitsune",
			"Dilophosaurus",
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
			["Corrupted Kodama"] = 2,
			["Kodama"] = 2,
			["Starfish"] = 8,
		},
		LockPet_Weight = 7, -- if Weight >= 10 they will locked,
		Instant_Sell = {		
			"Shiba Inu",
		}
	},

	Webhook = {
		UrlPet = "xxx",
		UrlSeed = "xxx",
		PcName = "xxx",

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
			},
			Pet_Weight_Noti = true,
		}
	},
}

License = "Oz1dvloGjrT1VmXiziOkSk3cXlLsMvWP"
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/98vt13x1h979yxngcvxbkjsq8hsw9rpw.lua"))()

task.spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Achitsak/zapzone/main/loader/scripts/extension/webhook.lua"))()
end)
