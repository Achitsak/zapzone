repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

if not getgenv().ENV then
    getgenv().ENV = {
        ['Key'] = '95268210-53db-4454-b961-3a7d54c4b787',
        ['Pc'] = 'CHANGE-ME',
    }
end

local CreatorId = game.CreatorId

     getgenv().Hermanos_Settings = {

         ['key'] = tostring(getgenv().ENV.Key),
         ['PC'] = tostring(getgenv().ENV.Pc),

         ['Seeds'] = {"Pricklefruit","Bitter Melon","Veinpetal","Veinpetal","Veinpetal","Veinpetal","Grand Tomato","EnTall Asparaguskaku","Sugarglaze","EnkaCrown Melonku","Taco Fern","Twisted Tangle","Elder Strawberry","Dragon Pepper","Maple Apple","Hinomai","Zen Rocks","Taro Flower","Elephant Ears","Wild Carrot","Pear","Cantaloupe","Parasol Flower","Rosy Delight","Elephant Ears","Ember Lily","Honeysuckle","Lumira","Dandelion","Nectarshade","Manuka Flower","Lavender","Sunflower","Beanstalk","Grapes","Mango","Cactus","Cherry Blossom","Moon Blossom","Candy Blossom","Delphinium","Lily of the Valley","Aloe Vera","Guanabana","White Mulberry","Peace Lily","Pitcher Plant","Burning Bud","Rafflesia","Liberty Lily","Firework Flower","Sugar Apple","Moon Mango","Blood Banana","Moon Melon","Traveler's Fruit","Beanstalk","Cherry Blossom","Candy Sunflower","Moonflower","Moon Mango","Bone Blossom","Fossilight","Firefly Fern","Boneboo","Horned Dinoshroom","Paradise Petal","Paradise Petal","Feijoa","Cacao","Pepper","Giant Pinecone","Grand Volcania","Sinisterdrip","Veinpetal","Twisted Tangle","Dezen","Lucky Bamboo","Tranquil Bloom","Enkaku","Sakura Bush"},
         ['Pets'] = {"Hotdog Daschund","Bagel Bunny","Bacon Pig","Gorilla Chef","Lobster Thermidor","Junkbot","Mochi Mouse","Bagel Bunny","Pancake Mole","Sushi Bear","Spaghetti Sloth","French Fry Ferret","Corrupted Kodama","Kiwi","Raiju","Shiba Inu","Nihonzaru","Tanuki","Sunny-Side Chicken","Kappa","Kitsune","Panda","Capybara","Ostrich","Bunny","Disco Bee","Queen Bee","Crab","Toucan","Deer","Red Giant Ant","Honey Bee","Monkey","Squirrel","Petal Bee","Starfish","Mole","Chicken","Echo Frog","Dragonfly","Raccoon","Seagull","Snail","Flamingo","Blood Kiwi","Owl","Spotted Deer","Golden Lab","Orangutan","Frog","Pack Bee","Cooked Owl","Red Dragon","Cow","Mimic Octopus","Praying Mantis","Caterpillar","Turtle","Dog","Bear Bee","Moth","Night Owl","Golden Bee","Peacock","Firefly","Giant Ant","Blood Hedgehog","Cat","Sea Turtle","Black Bunny","Brown Mouse","Butterfly","Silver Monkey","Tarantula Hawk","Wasp","Bee","Orange Tabby","Moon Cat","Blood Owl","Seal","Chicken Zombie","Red Fox","Grey Mouse","Hedgehog","Sea Otter","Scarlet Macaw","Polar Bear","Pig","Rooster","Meerkat","Axolotl","Hamster","Fennec Fox","Sand Snake","Hyacinth Macaw","Bald Eagle","T-Rex","Brontosaurus","Raptor","Triceratops","Spinosaurus","Ankylosaurus","Dilophosaurus","Pachycephalosaurus","Iguanodon","Pterodactyl","Corrupted Kitsune","Raiju","Kodama","Maneki-neko","Tsuchinoko","Mizuchi","Koi"},
         ['Gears'] = {"Grandmaster Sprinkler","Recall Wrench","Harvest Tool","Advanced Sprinkler","Master Sprinkler","Trowel","Friendship Pot","Lightning Rod","Godly Sprinkler","Watering Can","Basic Sprinkler","Level Up Lollipop"},
        ['Eggs'] = {"Gourmet Egg","Rare Summer Egg","Zen Egg","Paradise Egg","Epic Egg", "Divine Egg", "Rare Egg", "Uncommon Egg", "Legendary Egg", "Exotic Bug Egg", "Common Egg", "Bug Egg", "Night Egg", "Premium Night Egg", "Mythical Egg", "Bee Egg", "Premium Anti Bee Egg", "Anti Bee Egg", "Oasis Egg", "Dinosaur Egg"}

    }

      task.spawn(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/gag-main.lua'))() end)
