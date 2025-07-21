repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true

print('this is loadstring for grow a garden')
getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = true,
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

			}
		},
		Place = {
			Mode = "Select", -- Select , Lock
			Select = {
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
		Dino = true,

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
			"Koi",
			"Lightning Rod",
		}
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
			"Level Up Lollipop",
			"Medium Treat",
			"Medium Toy",
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
			"Rare Summer Egg",
			"Mythical Egg",
		},
		Buy = {
			"Bee Egg",
			"Oasis Egg",
			"Paradise Egg",
			"Anti Bee Egg",
			"Night Egg",
			"Legendary Egg",
			"Rare Summer Egg",
			"Bug Egg",
			"Mythical Egg",
		}
	},
	
	Pets = {
		["Upgrade Slot"] = {
			["Pet"] = {

			},
			["Limit Upgrade"] = 4,
			["Equip When Done"] = {
				"Tanchozuru",
				"Seal",
			},
		},
		Locked = {
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
		LockPet_Weight = 6, -- if Weight >= 10 they will locked,
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
