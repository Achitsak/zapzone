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
		["Limit"] = 150,
		["Destroy Untill"] = 140,

		["Safe Tree"] = {
			"Moon Blossom",
			"Fossilight",
		}
	},

	Seed = {
		Buy = {
			Mode = "Auto", -- Custom , Auto
			Custom = {
				"Carrot",
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
				"Ember Lily",
				"Sunflower",
				"Sugar Apple",
				"Burning Bud",
				"Giant Pinecone",
				"Spiked Mango",
			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
 				"Carrot",
 				"Tomato",
 				"Cactus",
				"Pumpkin",
				"Watermelon",
				"Bamboo",
				"Mango",
				"Grape",
				"Pepper",
				"Apple",
				"Coconut",
				"Dragon Fruit",
				"Spiked Mango",
				"Taro Flower",
				"Dragon Sapling",
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
				Max_Restocks_Price = 50_000_000,
				Minimum_Money = 10_000_000,
				Minimum_Chi = 180
			},
			["Doing"] = {
				Minimum_Money = 30_000_000, -- minimum money to start play this event
				First_Upgrade_Tree = 4,
				Maximum_Chi = 250,
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
	},

	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Basic Sprinkler",
			"Lightning Rod",
			"Level Up Lollipop",
			"Medium Treat",
			"Medium Toy",
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
			},
			["Limit Upgrade"] = 5,
			["Equip When Done"] = {
				["Seal"] = { 1, 70, 1 }, -- 1 mean equip only 1 pet , 70 mean equip only level pet lower than 70 the one on the last mean first priority will ues first if possible 
				["Starfish"] = { 1, 70 },
				["Koi"] = { 1, 70 },
				["Tanuki"] = { 1, 70 },
				["Tanchozuru"] = { 1, 70 },
				["Kappa"] = { 1, 70 },
				["Kitsune"] = { 0, 70 },
				["Dilophosaurus"] = { 1, 70 },
				["Moon Cat"] = { 1, 70 },
				["Capybara"] = { 1, 70 },
				["Spinosaurus"] = { 0, 70 },
				["Bear Bee"] = { 1, 70 },
				["T-Rex"] = { 0, 70 },
				["Brontosaurus"] = { 1, 70 },
				["Disco Bee"] = { 0, 70 },
				["Butterfly"] = { 0, 70 },
				["Queen Bee"] = { 0, 70 },
				["Dragonfly"] = { 0, 70 },
				["Raccoon"] = { 0, 70 },
				["Fennec Fox"] = { 0, 70 },
				["Mimic Octopus"] = { 0, 70 },
				["Red Fox"] = { 0, 70 },
				["Blood Owl"] = { 1, 70 },
			},
		},
		Locked_Pet_Age = 60, -- pet that age > 60 will lock
		Locked = {
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
