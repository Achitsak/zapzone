repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

if not getgenv().ENV then
    getgenv().ENV = {
        ['Key'] = '95268210-53db-4454-b961-3a7d54c4b787',
        ['Pc'] = 'CHANGE-ME',
    }
end

local gameId = game.GameId

if gameId == 7436755782 then -- grow a garden

    getgenv().Hermanos_Settings = {
        ['key'] = tostring(getgenv().ENV.Key),
        ['PC'] = tostring(getgenv().ENV.Pc),
        ['Seeds'] = {"Wispwing","Cyclamen","Poseidon Plant","Romanesco","Gleamroot","Princess Thorn","Hotdon","Amberheart","Pricklefruit","Bitter Melon","Veinpetal","Aetherfruit","Golden Egg","Veinpetal","Grand Tomato","EnTall Asparaguskaku","Sugarglaze","EnkaCrown Melonku","Taco Fern","Twisted Tangle","Elder Strawberry","Dragon Pepper","Maple Apple","Hinomai","Zen Rocks","King Cabbage","Elephant Ears","Wild Carrot","Pear","Cantaloupe","Parasol Flower","Rosy Delight","Elephant Ears","Ember Lily","Honeysuckle","Lumira","Dandelion","Nectarshade","Manuka Flower","Lavender","Sunflower","Beanstalk","Grapes","Mango","Cactus","Cherry Blossom","Moon Blossom","Candy Blossom","Delphinium","Lily of the Valley","Aloe Vera","Guanabana","White Mulberry","Peace Lily","Pitcher Plant","Burning Bud","Rafflesia","Liberty Lily","Firework Flower","Sugar Apple","Moon Mango","Blood Banana","Moon Melon","Traveler's Fruit","Beanstalk","Cherry Blossom","Candy Sunflower","Moonflower","Moon Mango","Bone Blossom","Fossilight","Firefly Fern","Boneboo","Horned Dinoshroom","Paradise Petal","Paradise Petal","Feijoa","Cacao","Pepper","Giant Pinecone","Grand Volcania","Sinisterdrip","Veinpetal","Twisted Tangle","Dezen","Lucky Bamboo","Tranquil Bloom","Enkaku","Sakura Bush"},
        ['Pets'] = {"Cockatrice","Glimmering Sprite","Imp","Luminous Sprite","Griffin","Swan","Gnome","Spriggan","Golden Goose","Goleg Daschund","Bagel Bunny","Bacon Pig","Orange Tabby","Lobster Thermidor","Phoenix","Mochi Mouse","Bagel Bunny","Pancake Mole","Sushi Bear","Spaghetti Sloth","French Fry Ferret","Corrupted Kodama","Kiwi","Raiju","Shiba Inu","Nihonzaru","Tanuki","Sunny-Side Chicken","Kappa","Kitsune","Panda","Capybara","Ostrich","Bunny","Disco Bee","Queen Bee","Crab","Toucan","Deer","Red Giant Ant","Honey Bee","Monkey","Squirrel","Petal Bee","Starfish","Mole","Chicken","Echo Frog","Dragonfly","Raccoon","Seagull","Snail","Flamingo","Blood Kiwi","Owl","Spotted Deer","Golden Lab","Orangutan","Frog","Pack Bee","Cooked Owl","Red Dragon","Cow","Mimic Octopus","Praying Mantis","Caterpillar","Turtle","Dog","Bear Bee","Moth","Night Owl","Golden Bee","Peacock","Firefly","Giant Ant","Blood Hedgehog","Cat","Sea Turtle","Black Bunny","Brown Mouse","Butterfly","Silver Monkey","Tarantula Hawk","Wasp","Bee","Orange Tabby","Moon Cat","Blood Owl","Seal","Chicken Zombie","Red Fox","Grey Mouse","Hedgehog","Sea Otter","Scarlet Macaw","Polar Bear","Pig","Rooster","Meerkat","Axolotl","Hamster","Fennec Fox","Sand Snake","Hyacinth Macaw","Bald Eagle","T-Rex","Brontosaurus","Raptor","Triceratops","Spinosaurus","Ankylosaurus","Dilophosaurus","Pachycephalosaurus","Iguanodon","Pterodactyl","Corrupted Kitsune","Raiju","Kodama","Maneki-neko","Tsuchinoko","Mizuchi","Koi"},
        ['Gears'] = {"Pet Mutation Shard Giantbean","Pet Mutation Shard Silver","Pet Mutation Shard Gold","Pet Mutation Shard Rainbow","Pet Mutation Shard Mega","Silver Lollipop","Gold Lollipop","Mega Lollipop","Mutation Machine Booster","Skyroot Chest","Cleansing Pet Shard","Cleansing Pet Shard","Silver Fertilizer","Silver Fertilizer","Grandmaster Sprinkler","Recall Wrench","Harvest Tool","Advanced Sprinkler","Master Sprinkler","Trowel","Friendship Pot","Lightning Rod","Godly Sprinkler","Watering Can","Basic Sprinkler","Level Up Lollipop"},
        ['Eggs'] = {"Enchanted Egg","Fall Egg","Gourmet Egg","Rare Summer Egg","Zen Egg","Paradise Egg","Epic Egg", "Divine Egg", "Rare Egg", "Uncommon Egg", "Legendary Egg", "Exotic Bug Egg", "Common Egg", "Bug Egg", "Night Egg", "Premium Night Egg", "Mythical Egg", "Bee Egg", "Premium Anti Bee Egg", "Anti Bee Egg", "Oasis Egg", "Dinosaur Egg"}

    }

    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/gag-main.lua'))() end)
elseif gameId == 994732206 then -- blox fruits

    getgenv().Hermanos_Settings = {

        ['key'] = tostring(getgenv().ENV.Key),
        ['PC'] = tostring(getgenv().ENV.Pc),


        ['webhooks'] = {
            ['fullmoon'] = 'https://discord.com/api/webhooks/',
            ['mirage'] = 'https://discord.com/api/webhooks/',
        },
        ['Sword'] = {'Cursed Dual Katana', 'Shark Anchor', 'Tushita', 'Yama', 'Dark Dagger', 'Hallow Scythe', 'Saber'},
        ['Gun'] = {'Soul Guitar', 'Serpent Bow', 'Kabucha', 'Acidum Rifle'},
        ['Accessories'] = {'Dark Coat', 'Leviathan Shield', 'Leviathan Crown', 'Pale Scarf', 'Kitsune Mask', 'Kitsune Ribbon', 'Green Lightning', 'Yellow Lightning', 'Purple Lightning'},
        ['Fruit'] = {
            'Kitsune', 'Leopard', 'Dragon (West)', 'Spirit', 'Control', 'Venom', 'Gas', 'Yeti',
            'Shadow', 'Dough', 'Mammoth', 'T-Rex', 'Lightning', 'Gravity', 'Pain'
        }

    }

    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/main.lua'))() end)
elseif gameId == 1451439645 then -- king legacy

    getgenv().Hermanos_Settings = {

        ['key'] = tostring(getgenv().ENV.Key),
            ['PC'] = tostring(getgenv().ENV.Pc),


        ['Fighting Style'] = {"DarkLeg", "Trickster", "Gale Fist", "JuFstice Fist", "Cyborg", "None", "WaterStyle", "Electro", "DragonClaw"},
        ['Race'] = {"Human", "Mink V1", "Fish V1", "Sky V1", "Mink V2", "Mink V3", "Mink V4", "Fish V2", "Fish V3", "Fish V4", "Fish V5"},
        ['Devil Fruits'] = {
            "AlloAllo", "BarrierBarrier", "BombBomb", "BrachioBrachio", "StringString", "BuddhaBuddha", "GoldGold", "MagnetMagnet", "VenomVenom", "GasGas", "GiraffeGiraffe", "GravityGravity", "GumGum", "HumanHuman", "IceIce", "DarkDark", "OpOp", "MelodyMelody", "DragonDragon", "LeopardLeopard", "MammothMammoth", "PawPaw", "DoughDough", "RumbleRumble", "QuakeQuake", "SandSand", "ShadowShadow", "PhoenixPhoenix", "MagmaMagma", "SpikeSpike", "SpinSpin", "SpinoSpino", "LightLight", "SmokeSmoke", "FlameFlame", "WolfWolf", "SpiritSpirit", "SnowSnow", "GateGate", "ToyToy", "LoveLove",
        },
        ['Swords'] = {"Scepters of Flame","Night Blade","Phoenix Blade", "Kioru V2", "Hunter Blade", "Avalon", "Acrospear", "Muramasa", "Scepters of Flame","Sonata","Dark Blade","Kioru","Metal Trident","Muramasa", "Bloodmoon Twins", "Longaevus", "Acroscyth", "Riptide Slayer", "Saber", "Abyssal Crab Axe", "Dawnbreaker", "Ethereal", "Authentic Triple Katana", "Bone Scythe"},
        ['Accessories'] = {"Dragon Necklace", "Floffy Glasses", "Abyssal Tyrant Armor", "Steel Knight Armor", "Drakenfyr Cape", "Crustacean Armor", "Inferno Cloak", "Dark Beard Hat"},
        ['Fruit Awaked'] = { "AlloAllo", "BarrierBarrier", "BombBomb", "BrachioBrachio", "StringString", "BuddhaBuddha", "GoldGold", "MagnetMagnet", "VenomVenom", "GasGas", "GiraffeGiraffe", "GravityGravity", "GumGum", "HumanHuman", "IceIce", "DarkDark", "OpOp", "MelodyMelody", "DragonDragon", "LeopardLeopard", "MammothMammoth", "PawPaw", "DoughDough", "RumbleRumble", "QuakeQuake", "SandSand", "ShadowShadow", "PhoenixPhoenix", "MagmaMagma", "SpikeSpike", "SpinSpin", "SpinoSpino", "LightLight", "SmokeSmoke", "FlameFlame", "WolfWolf", "SpiritSpirit", "SnowSnow", "GateGate", "ToyToy", "LoveLove",
        },
        ['Fruit Inventory'] = { "AlloFruit", "BarrierFruit", "BombFruit", "BrachioFruit", "BuddhaFruit", "DarkFruit", "DoughFruit", "DragonFruit", "FlameFruit", "GasFruit", "GiraffeFruit", "GravityFruit", "GumFruit", "HumanFruit", "IceFruit", "LeopardFruit", "LightFruit", "LoveFruit", "MagmaFruit", "MammothFruit", "OpFruit", "PawFruit", "PhoenixFruit", "QuakeFruit", "RumbleFruit", "SandFruit", "ShadowFruit", "SmokeFruit", "SnowFruit", "SpikeFruit", "SpinFruit", "SpinoFruit", "SpiritFruit", "StringFruit", "VenomFruit", "WolfFruit", "MagnetFruit", "GoldFruit", "ToyFruit", "GateFruit", "MelodyFruit",
        }

    }

    task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/kl-main.lua'))() end)
        
end
