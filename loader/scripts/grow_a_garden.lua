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
		["Limit"] = 150,
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
				"Raptor",
				"Iguanodon",
				"Rooster",
				"Ostrich",
				"Seal",
			},
		},
		Locked = {
            "T-Rex",
            "Spinosaurus",
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
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Players = game:GetService("Players")
	local HttpService = game:GetService("HttpService")

	local PetUtilities = require(ReplicatedStorage.Modules.PetServices.PetUtilities)
	local ReplicationClass = require(ReplicatedStorage.Modules.ReplicationClass)

	local ActivePetsService = ReplicationClass.new("ActivePetsService_Replicator")

	local webhookUrl = "https://discord.com/api/webhooks/1365055466236940390/lh0KkVfZifrBP4LkG83ln3TdRWR9FrXe7M8n3zDM4qSfr7s08PbJr2tG0O82eW1ew2dd"

	local function sendDiscordEmbed(title, description)
		local embed = {{
			title = title,
			description = description,
			color = 0x1abc9c, -- สีเขียวสวย
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
			footer = {
				text = "Roblox Pet Monitor"
			}
		}}

		local payload = {
			embeds = embed
		}
		local jsonData = HttpService:JSONEncode(payload)

		local response = httprequest({
			Url = webhookUrl,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
				["Content-Length"] = tostring(#jsonData)
			},
			Body = jsonData
		})

		print("Status Code:", response.StatusCode)
		print("Response Body:", response.Body)
	end

	local function checkAndSend()
		local success, dataResult = pcall(function()
			return ActivePetsService:YieldUntilData()
		end)

		if success then
			local dataTable = dataResult.Table
			if dataTable and dataTable.PlayerPetData then
				local playerName = Players.LocalPlayer.Name
				local playerPetData = dataTable.PlayerPetData[playerName]
				if playerPetData then
					local petInventory = playerPetData['PetInventory']
					if petInventory and petInventory['Data'] then
						local petData = petInventory['Data']
						for _, v in pairs(petData) do
							local baseWeight = v.PetData.BaseWeight or 1
							local level = v.PetData.Level or 1
							local weight = PetUtilities:CalculateWeight(baseWeight, level)
							local petType = v.PetType or "Unknown"

							if weight >= 20 then
								sendDiscordEmbed(
									"⚠️ เจอสัตว์น้ำหนักมาก!",
									string.format(
										"ผู้เล่น: %s\nประเภทสัตว์: %s\nน้ำหนัก: %.2f\nอายุ (Level): %d",
										playerName, petType, weight, level
									)
								)
							elseif (weight > 5 and level <= 10) or (weight > 10 and level <= 39) then
								sendDiscordEmbed(
									"🐾 สัตว์เข้าเงื่อนไข",
									string.format(
										"ผู้เล่น: %s\nประเภทสัตว์: %s\nน้ำหนัก: %.2f\nอายุ (Level): %d",
										playerName, petType, weight, level
									)
								)
							end
						end
					end
				end
			end
		end
	end
	while true do
		checkAndSend()
		task.wait(500)
	end
end)
