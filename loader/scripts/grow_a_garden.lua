repeat task.wait() until game:IsLoaded()
repeat task.wait() 
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game) 
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game) 
until game:GetService("Players").LocalPlayer:GetAttribute('DataFullyLoaded') == true

print('this is loadstring for grow a garden')
getgenv().ConfigsKaitun = {
	["Stack Plant"] = true,
	["Low Cpu"] = true,
 
	["Rejoin When Update"] = true,
 
	["Limit Tree"] = {
		["Limit"] = 100,
		["Destroy Untill"] = 100,
 
		["Safe Tree"] = {
			"Moon Blossom"
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
				"Strawberry",
				"Paradise Petals",
				"Stonebite",
				"Carrot",
				"Watermelon",
				"Bamboo",
				"Mango",
				"Apple",
				"Coconut",
				"Dragon Fruit",
				"Paradise Petal",
				"Horned Dinoshroom",
				"Boneboo",
				"Firefly Fern",
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
            "Night Staff",
            "Bee Egg",
            "Star Caller"
		},
 
		["Summer Harvest"] = {
			["Do At Money"] = 1000000,
			["Point Limit"] = 15000,
		},
		Craft = {
			"Ancient Seed Pack",
			"Stalk Sprout Sprinkler",
			"Primal Egg",
			"Dinosaur Egg",
			"Lightning Rod",
			"Special Sprays",
			"Bee Egg",
			"Anti Bee Egg",
			"Amber Spine Seed",
			"Horsetail",
		},
		Shop = {
			"Oasis Egg",
			"Paradise Egg",
		}
	},
 
	Gear = {
		Buy = { 
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Tanning Mirror",
			"Magnifying Glass",
			"Lightning Rod",
		},
		Lock = {
			"Master Sprinkler",
			"Godly Sprinkler",
			"Advanced Sprinkler",
			"Tanning Mirror",
			"Magnifying Glass",
			"Lightning Rod",
		},
	},
 
	Eggs = {
		Place = {
			"Dinosaur Egg",
			"Primal Egg",
			"Oasis Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Bug Egg",
			"Mythical Egg",
			"Legendary Egg",
			"Uncommon Egg",
			"Rare Summer Egg",
			"Bee Egg",
			"Rare Egg",
		},
		Buy = {
			"Dinosaur Egg",
			"Primal Egg",
			"Oasis Egg",
			"Bee Egg",
			"Anti Bee Egg",
			"Paradise Egg",
			"Bug Egg",
			"Mythical Egg",
			"Legendary Egg",
			"Uncommon Egg",
			"Rare Summer Egg",
			"Rare Egg",
		}
	},
 
	Pets = {
		["Upgrade Slot"] = {
			["Pet"] = {
			},
			["Limit Upgrade"] = 3,
			["Equip When Done"] = {
				"Ostrich",
				"Seal",
			},
		},
		Locked = {
            "T-Rex",
            "Spinosaurus",
            "Stegosaurus",
            "Brontosaurus",
            "Ankylosaurus",
            "Dilophosaurus",
            "Pachycephalosaurus	",
            "Iguanodon",
            "Pachycephalosaurus	",
            "Dragonfly",
            "Night Owl",
            "Queen Bee",
            "Raccoon",
            "Disco Bee",
            "Fennec Fox",
            "Disco Bee",
            "Butterfly",
            "Mimic Octopus",
            "Queen Bee",
            "Red Fox",
            "Blood Owl",
            ["Blood Kiwi"] = 5,
            ["Rooster"] = 5,
		},
		LockPet_Weight = 10, -- if Weight >= 10 they will locked,
		Instant_Sell = {
			"Dog",
		}
	},
 
	Webhook = {
		UrlPet = "",
		UrlSeed = "",
		PcName = "PC",
 
		Noti = {
			Seeds = {
				"Sunflower",
				"Dragon Pepper",
				"Elephant Ears",
			},
			SeedPack = {
				"Idk",
			},
			Pets = {
				"Dragonfly",
				"Night Owl",
				"Queen Bee",
				"Raccoon",
				"Disco Bee",
				"Fennec Fox",
				"Disco Bee",
				"Butterfly",
				"Mimic Octopus",
				"Red Fox",
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