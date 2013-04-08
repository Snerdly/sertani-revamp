


	name = "glass"
	desc = "Your standard drinking glass."
	icon_state = "glass_empty"
	amount_per_transfer_from_this = 10
	volume = 50

	on_reagent_change()
		/*if(reagents.reagent_list.len > 1 )
			icon_state = "glass_brown"
			name = "Glass of Hooch"
			desc = "Two or more drinks, mixed together."*/
		/*else if(reagents.reagent_list.len == 1)
			for(var/datum/reagent/R in reagents.reagent_list)
				switch(R.id)*/
		if (reagents.reagent_list.len > 0)
			//mrid = R.get_master_reagent_id()
			switch(reagents.get_master_reagent_id())
				if("beer")
					icon_state = "beerglass"
					name = "Beer glass"
					desc = "A freezing pint of beer"
				if("beer2")
					icon_state = "beerglass"
					name = "Beer glass"
					desc = "A freezing pint of beer"
				if("ale")
					icon_state = "aleglass"
					name = "Ale glass"
					desc = "A freezing pint of delicious Ale"
				if("milk")
					icon_state = "glass_white"
					name = "Glass of milk"
					desc = "White and nutritious goodness!"
				if("cream")
					icon_state  = "glass_white"
					name = "Glass of cream"
					desc = "Ewwww..."
				if("chocolate")
					icon_state  = "chocolateglass"
					name = "Glass of chocolate"
					desc = "Tasty"
				if("lemon")
					icon_state  = "lemonglass"
					name = "Glass of lemon"
					desc = "Sour..."
				if("cola")
					icon_state  = "glass_brown"
					name = "Glass of Space Cola"
					desc = "A glass of refreshing Space Cola"
				if("nuka_cola")
					icon_state = "nuka_colaglass"
					name = "Nuka Cola"
					desc = "Don't cry, Don't raise your eye, It's only nuclear wasteland"
				if("orangejuice")
					icon_state = "glass_orange"
					name = "Glass of Orange juice"
					desc = "Vitamins! Yay!"
				if("tomatojuice")
					icon_state = "glass_red"
					name = "Glass of Tomato juice"
					desc = "Are you sure this is tomato juice?"
				if("blood")
					icon_state = "glass_red"
					name = "Glass of Tomato juice"
					desc = "Are you sure this is tomato juice?"
				if("limejuice")
					icon_state = "glass_green"
					name = "Glass of Lime juice"
					desc = "A glass of sweet-sour lime juice."
				if("whiskey")
					icon_state = "whiskeyglass"
					name = "Glass of whiskey"
					desc = "The silky, smokey whiskey goodness inside the glass makes the drink look very classy."
				if("gin")
					icon_state = "ginvodkaglass"
					name = "Glass of gin"
					desc = "A crystal clear glass of Griffeater gin."
				if("vodka")
					icon_state = "ginvodkaglass"
					name = "Glass of vodka"
					desc = "The glass contain wodka. Xynta."
				if("goldschlager")
					icon_state = "ginvodkaglass"
					name = "Glass of goldschlager"
					desc = "100 proof that teen girls will drink anything with gold in it."
				if("wine")
					icon_state = "wineglass"
					name = "Glass of wine"
					desc = "A very classy looking drink."
				if("cognac")
					icon_state = "cognacglass"
					name = "Glass of cognac"
					desc = "Damn, you feel like some kind of French aristocrat just by holding this."
				if ("kahlua")
					icon_state = "kahluaglass"
					name = "Glass of RR coffee Liquor"
					desc = "DAMN, THIS THING LOOKS ROBUST"
				if("vermouth")
					icon_state = "vermouthglass"
					name = "Glass of Vermouth"
					desc = "You wonder why you're even drinking this straight."
				if("tequilla")
					icon_state = "tequillaglass"
					name = "Glass of Tequilla"
					desc = "Now all that's missing is the weird colored shades!"
				if("patron")
					icon_state = "patronglass"
					name = "Glass of Patron"
					desc = "Drinking patron in the bar, with all the subpar ladies."
				if("rum")
					icon_state = "rumglass"
					name = "Glass of Rum"
					desc = "Now you want to Pray for a pirate suit, don't you?"
				if("gintonic")
					icon_state = "gintonicglass"
					name = "Gin and Tonic"
					desc = "A mild but still great cocktail. Drink up, like a true Englishman."
				if("whiskeycola")
					icon_state = "whiskeycolaglass"
					name = "Whiskey Cola"
					desc = "An innocent-looking mixture of cola and Whiskey. Delicious."
				if("whiterussian")
					icon_state = "whiterussianglass"
					name = "White Russian"
					desc = "A very nice looking drink. But that's just, like, your opinion, man."
				if("screwdrivercocktail")
					icon_state = "screwdriverglass"
					name = "Screwdriver"
					desc = "A simple, yet superb mixture of Vodka and orange juice. Just the thing for the tired engineer."
				if("bloodymary")
					icon_state = "bloodymaryglass"
					name = "Bloody Mary"
					desc = "Tomato juice, mixed with Vodka and a lil' bit of lime. Tastes like liquid murder."
				if("martini")
					icon_state = "martiniglass"
					name = "Classic Martini"
					desc = "Damn, the bartender even stirred it, not shook it."
				if("vodkamartini")
					icon_state = "martiniglass"
					name = "Vodka martini"
					desc ="A bastardisation of the classic martini. Still great."
				if("gargleblaster")
					icon_state = "gargleblasterglass"
					name = "Pan-Galactic Gargle Blaster"
					desc = "Does... does this mean that Arthur and Ford are on the station? Oh joy."
				if("bravebull")
					icon_state = "bravebullglass"
					name = "Brave Bull"
					desc = "Tequilla and Coffee liquor, brought together in a mouthwatering mixture. Drink up."
				if("tequillasunrise")
					icon_state = "tequillasunriseglass"
					name = "Tequilla Sunrise"
					desc = "Oh great, now you feel nostalgic about sunrises back on Terra..."
				if("toxinsspecial")
					icon_state = "toxinsspecialglass"
					name = "Toxins Special"
					desc = "Whoah, this thing is on FIRE"
				if("beepskysmash")
					icon_state = "beepskysmashglass"
					name = "Beepsky Smash"
					desc = "Heavy, hot and strong. Just like the Iron fist of the LAW."
				if("doctorsdelight")
					icon_state = "doctorsdelightglass"
					name = "Doctor's Delight"
					desc = "A healthy mixture of juices, guaranteed to keep you healthy until the next toolboxing takes place."
				if("manlydorf")
					icon_state = "manlydorfglass"
					name = "The Manly Dorf"
					desc = "A manly concotion made from Ale and Beer. Intended for true men only."
				if("irishcream")
					icon_state = "irishcreamglass"
					name = "Irish Cream"
					desc = "It's cream, mixed with whiskey. What else would you expect from the Irish?"
				if("cubalibre")
					icon_state = "cubalibreglass"
					name = "Cuba Libre"
					desc = "A classic mix of rum and cola."
				if("b52")
					icon_state = "b52glass"
					name = "B-52"
					desc = "Kahlua, Irish Cream, and congac. You will get bombed."
				if("atomicbomb")
					icon_state = "atomicbombglass"
					name = "Atomic Bomb"
					desc = "Saris Industries cannot take legal responsibility for your actions after imbibing."
				if("longislandicedtea")
					icon_state = "longislandicedteaglass"
					name = "Long Island Iced Tea"
					desc = "The liquor cabinet, brought together in a delicious mix. Intended for middle-aged alcoholic women only."
				if("threemileisland")
					icon_state = "threemileislandglass"
					name = "Three Mile Island Ice Tea"
					desc = "A glass of this is sure to prevent a meltdown."
				if("margarita")
					icon_state = "margaritaglass"
					name = "Margarita"
					desc = "On the rocks with salt on the rim. Arriba~!"
				if("blackrussian")
					icon_state = "blackrussianglass"
					name = "Black Russian"
					desc = "For the lactose-intolerant. Still as classy as a White Russian."
				if("vodkatonic")
					icon_state = "vodkatonicglass"
					name = "Vodka and Tonic"
					desc = "For when a gin and tonic isn't russian enough."
				if("manhattan")
					icon_state = "manhattanglass"
					name = "Manhattan"
					desc = "The Detective's undercover drink of choice. He never could stomach gin..."
				if("manhattan_proj")
					icon_state = "proj_manhattanglass"
					name = "Manhattan Project"
					desc = "A scienitst drink of choice, for thinking how to blow up the station."
				if("ginfizz")
					icon_state = "ginfizzglass"
					name = "Gin Fizz"
					desc = "Refreshingly lemony, deliciously dry."
				if("irishcoffee")
					icon_state = "irishcoffeeglass"
					name = "Irish Coffee"
					desc = "Coffee and alcohol. More fun than a Mimosa to drink in the morning."
				if("hooch")
					icon_state = "glass_brown2"
					name = "Hooch"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("whiskeysoda")
					icon_state = "whiskeysodaglass2"
					name = "Whiskey Soda"
					desc = "Ultimate refreshment."
				if("tonic")
					icon_state = "glass_clear"
					name = "Glass of Tonic Water"
					desc = "Quinine tastes funny, but at least it'll keep that Space Malaria away."
				if("sodawater")
					icon_state = "glass_clear"
					name = "Glass of Soda Water"
					desc = "Soda water. Why not make a scotch and soda?"
				if("water")
					icon_state = "glass_clear"
					name = "Glass of Water"
					desc = "The father of all refreshments."
				if("spacemountainwind")
					icon_state = "Space_mountain_wind_glass"
					name = "Glass of Space Mountain Wind"
					desc = "Space Mountain Wind. As you know, there are no mountains in space, only wind."
				if("thirteenloko")
					icon_state = "thirteen_loko_glass"
					name = "Glass of Thirteen Loko"
					desc = "This is a glass of Thirteen Loko, it appears to be of the highest quality. The drink, not the glass"
				if("dr_gibb")
					icon_state = "dr_gibb_glass"
					name = "Glass of Dr. Gibb"
					desc = "Dr. Gibb. Not as dangerous as the name might imply."
				if("space_up")
					icon_state = "space-up_glass"
					name = "Glass of Space-up"
					desc = "Space-up. It helps keep your cool."
				if("moonshine")
					icon_state = "glass_clear"
					name = "Moonshine"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("soymilk")
					icon_state = "glass_white"
					name = "Glass of soy milk"
					desc = "White and nutritious soy goodness!"
				if("berryjuice")
					icon_state = "berryjuice"
					name = "Glass of berry juice"
					desc = "Berry juice. Or maybe its jam. Who cares?"
				if("poisonberryjuice")
					icon_state = "poisonberryjuice"
					name = "Glass of poison berry juice"
					desc = "A glass of deadly juice."
				if("carrotjuice")
					icon_state = "carrotjuice"
					name = "Glass of  carrot juice"
					desc = "It is just like a carrot but without crunching."
				if("banana")
					icon_state = "banana"
					name = "Glass of banana juice"
					desc = "The raw essence of a banana. HONK"
				if("bahama_mama")
					icon_state = "bahama_mama"
					name = "Bahama Mama"
					desc = "Tropic cocktail"
				if("singulo")
					icon_state = "singulo"
					name = "Singulo"
					desc = "A blue-space beverage."
				if("alliescocktail")
					icon_state = "alliescocktail"
					name = "Allies cocktail"
					desc = "A drink made from your allies."
				if("antifreeze")
					icon_state = "antifreeze"
					name = "Anti-freeze"
					desc = "The ultimate refreshment."
				if("barefoot")
					icon_state = "b&p"
					name = "Barefoot"
					desc = "Barefoot and pregnant"
				if("demonsblood")
					icon_state = "demonsblood"
					name = "Demons Blood"
					desc = "Just looking at this thing makes the hair at the back of your neck stand up."
				if("booger")
					icon_state = "booger"
					name = "Booger"
					desc = "Ewww..."
				if("snowwhite")
					icon_state = "snowwhite"
					name = "Snow White"
					desc = "A cold refreshment."
				if("aloe")
					icon_state = "aloe"
					name = "Aloe"
					desc = "Very, very, very good."
				if("andalusia")
					icon_state = "andalusia"
					name = "Andalusia"
					desc = "A nice, strange named drink."
				if("sbiten")
					icon_state = "sbitenglass"
					name = "Sbiten"
					desc = "A spicy mix of Vodka and Spice. Very hot."
				if("red_mead")
					icon_state = "red_meadglass"
					name = "Red Mead"
					desc = "A True Vikings Beverage, though its color is strange."
				if("mead")
					icon_state = "meadglass"
					name = "Mead"
					desc = "A Vikings Beverage, though a cheap one."
				if("iced_beer")
					icon_state = "iced_beerglass"
					name = "Iced Beer"
					desc = "A beer so frosty, the air around it freezes."
				if("grog")
					icon_state = "grogglass"
					name = "Grog"
					desc = "A fine and cepa drink for Space."
				if("soy_latte")
					icon_state = "soy_latte"
					name = "Soy Latte"
					desc = "A nice and refrshing beverage while you are reading."
				if("cafe_latte")
					icon_state = "cafe_latte"
					name = "Cafe Latte"
					desc = "A nice, strong and refreshing beverage while you are reading."
				if("acidspit")
					icon_state = "acidspitglass"
					name = "Acid Spit"
					desc = "A drink from Mazra Estates. Made from live aliens."
				if("amasec")
					icon_state = "amasecglass"
					name = "Amasec"
					desc = "Always handy before COMBAT!!!"
				if("neurotoxin")
					icon_state = "neurotoxinglass"
					name = "Neurotoxin"
					desc = "A drink that is guaranteed to knock you silly."
				if("hippiesdelight")
					icon_state = "hippiesdelightglass"
					name = "Hippie's Delight"
					desc = "A drink enjoyed by people during the 1960's."
				if("bananahonk")
					icon_state = "bananahonkglass"
					name = "Banana Honk"
					desc = "A drink from Banana Heaven."
				if("silencer")
					icon_state = "silencerglass"
					name = "Silencer"
					desc = "A drink from mime Heaven."
				if("nothing")
					icon_state = "nothing"
					name = "Nothing"
					desc = "Absolutely nothing."
				if("devilskiss")
					icon_state = "devilskiss"
					name = "Devils Kiss"
					desc = "Creepy time!"
				if("changelingsting")
					icon_state = "changelingsting"
					name = "Changeling Sting"
					desc = "A stingy drink."
				if("irishcarbomb")
					icon_state = "irishcarbomb"
					name = "Irish Car Bomb"
					desc = "An irish car bomb."
				if("syndicatebomb")
					icon_state = "syndicatebomb"
					name = "Syndicate Bomb"
					desc = "A syndicate bomb."
				if("erikasurprise")
					icon_state = "erikasurprise"
					name = "Erika Surprise"
					desc = "The surprise is, it's green!"
				if("driestmartini")
					icon_state = "driestmartiniglass"
					name = "Driest Martini"
					desc = "Only for the experienced. You think you see sand floating in the glass."
				if("ice")
					icon_state = "iceglass"
					name = "Glass of ice"
					desc = "Generally, you're supposed to put something else in there too..."
				if("icecoffee")
					icon_state = "icedcoffeeglass"
					name = "Iced Coffee"
					desc = "A drink to perk you up and refresh you!"
				if("coffee")
					icon_state = "glass_brown"
					name = "Glass of coffee"
					desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."
				if("bilk")
					icon_state = "glass_brown"
					name = "Glass of bilk"
					desc = "A brew of milk and beer. For those alcoholics who fear osteoporosis."
				if("fuel")
					icon_state = "dr_gibb_glass"
					name = "Glass of welder fuel"
					desc = "Unless you are an industrial tool, this is probably not safe for consumption."
				else
					icon_state ="glass_brown"
					name = "Glass of ..what?"
					desc = "You can't really tell what this is."
		else
			icon_state = "glass_empty"
			name = "Drinking glass"
			desc = "Your standard drinking glass"
			return

// for /obj/machinery/vending/sovietsoda
/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/soda
	New()
		..()
		reagents.add_reagent("sodawater", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/drinkingglass/cola
	New()
		..()
		reagents.add_reagent("cola", 50)
		on_reagent_change()

/obj/item/weapon/reagent_containers/food/drinks/shotglass
	name = "shot glass"
	desc = "A small, stained glass shot glass."
	icon_state = "shotglass"
	amount_per_transfer_from_this = 10
	volume = 10

	on_reagent_change()
		/*if(reagents.reagent_list.len > 1 )
			icon_state = "glass_brown"
			name = "Glass of Hooch"
			desc = "Two or more drinks, mixed together."*/
		/*else if(reagents.reagent_list.len == 1)
			for(var/datum/reagent/R in reagents.reagent_list)
				switch(R.id)*/
		if (reagents.reagent_list.len > 0)
			//mrid = R.get_master_reagent_id()
			switch(reagents.get_master_reagent_id())
				if("beer")
					icon_state = "beershot"
					name = "shot of beer"
					desc = "A shot of space beer."
				if("beer2")
					icon_state = "beershot"
					name = "shot of cold space beer"
					desc = "A chilled glass of space beer."
				if("ale")
					icon_state = "aleshot"
					name = "shot of ale"
					desc = "A shot of ale."
				if("milk")
					icon_state = "shotglass_white"
					name = "shot of milk"
					desc = "Why the hell are you even taking shots of this..."
				if("cream")
					icon_state  = "shotglass_white"
					name = "shot of cream"
					desc = "Ewwww..."
				if("chocolate")
					icon_state  = "shotglass_brown"
					name = "shot of chocolate"
					desc = "Tasty shots..."
				if("lemon")
					icon_state  = "lemonshotglass"
					name = "shot of lemon"
					desc = "This one'll be rough..."
				if("cola")
					icon_state  = "shotglass_brown"
					name = "shot of cola"
					desc = "A shot of refreshing Space Cola"
				if("nuka_cola")
					icon_state = "nuka_colashotglass"
					name = "shot of Nuka Cola"
					desc = "For those willing to take a shot in the nuclear apocalypse."
				if("orangejuice")
					icon_state = "shotglass_orange"
					name = "Shot of OJ"
					desc = "Vitamins delivered in small doses. Nice."
				if("tomatojuice")
					icon_state = "shotglass_red"
					name = "shot of tomato juice"
					desc = "Are you sure this is tomato juice?"
				if("blood")
					icon_state = "shotglass_red"
					name = "shot of tomato juice"
					desc = "You really don't give a shit if this is tomato juice."
				if("limejuice")
					icon_state = "shotglass_green"
					name = "shot of Lime juice"
					desc = "A tangy shot of lime juice. Great for tha bitter jolt you're looking for."
				if("whiskey")
					icon_state = "shotglasswhiskey"
					name = "shot of whiskey"
					desc = "The silky, smokey whiskey goodness inside the shotglass makes the drink look very potent."
				if("gin")
					icon_state = "ginvodkashotglass"
					name = "shot of gin"
					desc = "A proof shot of Griffeater gin."
				if("vodka")
					icon_state = "ginvodkagshotlass"
					name = "shot of vodka"
					desc = "The glass contain wodka, in little glass. Xynta."
				if("goldschlager")
					icon_state = "ginvodkashotglass"
					name = "shot of goldschlager"
					desc = "100 proof that teen girls will drink anything with gold in it. Especially if its in shots."
				if("wine")
					icon_state = "wineshotglass"
					name = "shot of wine"
					desc = "A very classy looking drink, poured finely into a shotglass. My, aren't you creative?"
				if("cognac")
					icon_state = "cognacshotglass"
					name = "shot of cognac"
					desc = "Damn, you feel like some kind of French aristocrat just by holding this."
				if ("kahlua")
					icon_state = "kahluashotglass"
					name = "shot of RR coffee Liquor"
					desc = "DAMN, THIS THING LOOKS ROBUST"
				if("vermouth")
					icon_state = "vermouthshotglass"
					name = "shot of Vermouth"
					desc = "One of the few things actually idealistic to be drinking straight."
				if("tequilla")
					icon_state = "tequillashotglass"
					name = "shot of Tequilla"
					desc = "Now all that's missing is the weird colored shades!"
				if("patron")
					icon_state = "patronshotglass"
					name = "Glass of Patron"
					desc = "Drinking patron in the bar, with all the subpar ladies. Because we love patron."
				if("rum")
					icon_state = "rumshotglass"
					name = "shot of Rum"
					desc = "Finally, a shooter that makes sense..."
				if("gintonic")
					icon_state = "gintonicshotglass"
					name = "shot of Gin with Tonic"
					desc = "A mild but still great cocktail, served in a shot glass.. Bottoms up, like a true Englishman."
				if("whiskeycola")
					icon_state = "whiskeycolashotglass"
					name = "shot of Whiskey Cola"
					desc = "An innocent-looking mixture of cola and Whiskey in a tiny shot glass. Delicious."
				if("whiterussian")
					icon_state = "whiterussianshotglass"
					name = "shot of White Russian"
					desc = "Even in Soviet Russia, the white Russians are shot."
				if("screwdrivercocktail")
					icon_state = "screwdrivershotglass"
					name = "shot ofScrewdriver"
					desc = "A simple, yet superb shooter of Vodka and orange juice. Just the thing for the overwhelmed engineer."
				if("bloodymary")
					icon_state = "bloodymaryshotglass"
					name = "shot of Bloody Mary"
					desc = "Tomato juice, mixed with Vodka and a lil' bit of lime. Tastes like liquid murder."
				if("martini")
					icon_state = "martinishotglass"
					name = "shot of martini"
					desc = "Why is there a cherry in this?... Why the fuck are you even shooting this?..."
				if("vodkamartini")
					icon_state = "martinispotglass"
					name = "shot of Vodka martini"
					desc ="A bastardisation of the classic martini. Still great, but really. Why are you shooting this?"
				if("gargleblaster")
					icon_state = "gargleblastershotglass"
					name = "Shot ofPan-Galactic Gargle Blaster"
					desc = "YOU'RE TAKING HITS OF THIS?? Oh SHIT."
				if("bravebull")
					icon_state = "bravebullshotglass"
					name = "shot ofBrave Bull"
					desc = "Tequilla and Coffee liquor, brought together in a mouthwatering mixture. Bottoms up."
				if("tequillasunrise")
					icon_state = "tequillasunriseshotglass"
					name = "shot of Tequilla Sunrise"
					desc = "Oh great, now you feel nostalgic about sunrises back on Terra..."
				if("toxinsspecial")
					icon_state = "toxinsspecialglass"
					name = "Toxins Special"
					desc = "Whoah, this thing is on smoldering... The fumes are pretty bad too..."
				if("beepskysmash")
					icon_state = "beepskysmashshotglass"
					name = "shot of Beepsky Smash"
					desc = "Heavy, hot and strong. Just like the Iron fist of the LAW."
				if("doctorsdelight")
					icon_state = "doctorsdelightshotglass"
					name = "shot of Doctor's Delight"
					desc = "A healthy mixture of juices, delivered in a reasonable dose, guaranteed to keep you at least upright until the next toolboxing takes place."
				if("manlydorf")
					icon_state = "beershot"
					name = "shot of Manly Dorf"
					desc = "A manly concotion made from Ale and Beer. In a shotglass. Intended for true men only."
				if("irishcream")
					icon_state = "irishcreamshotglass"
					name = "shot ofIrish Cream"
					desc = "A shot glass filled with cream, mixed with whiskey."
				if("cubalibre")
					icon_state = "cubalibregshotlass"
					name = "shot of Cuba Libre"
					desc = "A classic mix of rum and cola."
				if("b52")
					icon_state = "b52shotglass"
					name = "shot of B-52"
					desc = "Kahlua, Irish Cream, and congac. You will get bombed."
				if("atomicbomb")
					icon_state = "b52shotglass"
					name = "shot of Atomic Bomb"
					desc = "Saris Industries cannot take legal responsibility for your actions after imbibing."
				if("longislandicedtea")
					icon_state = "longislandicedteashotglass"
					name = "shot of Long Island Iced Tea"
					desc = "The liquor cabinet, brought together in a delicious mix. Intended for middle-aged alcoholic women still thinking they can party only."
				if("threemileisland")
					icon_state = "longislandicedteashotglass"
					name = "shot of Three Mile Island Ice Tea"
					desc = "A glass of this is sure to prevent a nuclear meltdown."
				if("margarita")
					icon_state = "margaritashotglass"
					name = "shot of Margarita"
					desc = "An old classic with salt on the rim. Arriba~!"
				if("blackrussian")
					icon_state = "blackrussianshotglass"
					name = "shot of Black Russian"
					desc = "For the lactose-intolerant. Still as wild as a White Russian."
				if("vodkatonic")
					icon_state = "vodkatonicshotglass"
					name = "shot of Vodka with Tonic"
					desc = "For when a gin and tonic isn't russian enough."
				if("manhattan")
					icon_state = "manhattanshotglass"
					name = "shot of Manhattan"
					desc = "The Detective's undercover drink of choice. He never could stomach gin..."
				if("manhattan_proj")
					icon_state = "manhattanshotglass"
					name = "Manhattan Project"
					desc = "A scienitst drink of choice, for thinking how to blow up the station."
				if("ginfizz")
					icon_state = "ginfizzshotglass"
					name = "shot of Gin with fizz"
					desc = "Refreshingly lemony, deliciously dry."
				if("irishcoffee")
					icon_state = "irishcoffeeglass"
					name = "shot of Irish Coffee"
					desc = "Coffee and alcohol. More fun than a Mimosa to drink in the morning."
				if("hooch")
					icon_state = "shotglass_brown"
					name = "shot of Hooch"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("whiskeysoda")
					icon_state = "whiskeysodashotglass2"
					name = "shot of Whiskey with soda"
					desc = "Ultimate refreshment."
				if("tonic")
					icon_state = "clearshotglass"
					name = "shot of tonic water"
					desc = "Quinine tastes funny, but at least it'll keep that Space Malaria away."
				if("sodawater")
					icon_state = "clearshotglass"
					name = "shot of soda water"
					desc = "Soda water. Why not make a scotch and soda?"
				if("water")
					icon_state = "clearshotglass"
					name = "shot of water"
					desc = "This isn't what you meant when you asked for free drinks..."
				if("spacemountainwind")
					icon_state = "Space_mountain_windshotglass"
					name = "shot of Space Mountain Wind"
					desc = "Space Mountain Wind. As you know, there are no mountains in space, only wind."
				if("thirteenloko")
					icon_state = "thirteen_lokoshotglass"
					name = "shot of Thirteen Loko"
					desc = "This is a shot of Thirteen Loko. One of the more dangerous things to drink, whether in shots or not."
				if("dr_gibb")
					icon_state = "dr_gibbshotglass"
					name = "shot of Dr. Gibb"
					desc = "Dr. Gibb. Not as dangerous as the name might imply, but it'll still burn like hell going down."
				if("space_up")
					icon_state = "space-upshotglass"
					name = "shot of Space-up"
					desc = "Space-up. It helps keep your cool."
				if("moonshine")
					icon_state = "clearshotglass"
					name = "shot of Moonshine"
					desc = "You've really hit rock bottom now... your liver packed its bags and left last night."
				if("soymilk")
					icon_state = "shotglass_white"
					name = "shot of soy milk"
					desc = "White and nutritious soy goodness!"
				if("berryjuice")
					icon_state = "berryjuiceshot"
					name = "shot of berry juice"
					desc = "Berry juice. Or maybe its jam. Who cares? SHOTS!"
				if("poisonberryjuice")
					icon_state = "poisonberryjuiceshot"
					name = "shot of poison berry juice"
					desc = "A shot of deadly juice.The last shot you'll ever take."
				if("carrotjuice")
					icon_state = "carrotjuiceshot"
					name = "shot of  carrot juice"
					desc = "Why are you even drinking carrot juice?"
				if("banana")
					icon_state = "bananashot"
					name = "shot of banana juice"
					desc = "HONK HONK HONK HONK HONK HONK, EVERBODY!"
				if("bahama_mama")
					icon_state = "bahama_mamashotglass"
					name = "shot of Bahama Mama"
					desc = "Tropic cocktail"
				if("singulo")
					icon_state = "shotglasssingulo"
					name = "shot of Singulo"
					desc = "A blue-space beverage."
				if("alliescocktail")
					icon_state = "alliesshotglass"
					name = "Allies shot"
					desc = "A shot made from your allies."
				if("antifreeze")
					icon_state = "antifreezeshotglass"
					name = "Anti-freeze shot"
					desc = "The ultimately refrsher.."
				if("barefoot")
					icon_state = "b&pshotglass"
					name = "Barefoot shot"
					desc = "Barefoot and pregnant"
				if("demonsblood")
					icon_state = "demonsbloodshotglass"
					name = "shot of Demons Blood"
					desc = "The true drink of a sinner."
				if("booger")
					icon_state = "boogershot"
					name = "Booger shot"
					desc = "The hell, man..."
				if("snowwhite")
					icon_state = "snowwhiteshotglass"
					name = "Snow White"
					desc = "A cold refreshment."
				if("aloe")
					icon_state = "aloeshot"
					name = "Aloe shot"
					desc = "Very, very, very good."
				if("andalusia")
					icon_state = "andalusiashotglass"
					name = "Andalusia shot"
					desc = "A nice, strange named drink."
				if("sbiten")
					icon_state = "sbitenshotglass"
					name = "Sbiten shot"
					desc = "A spicy mix of Vodka and Spice. Very hot."
				if("red_mead")
					icon_state = "shotglass_red"
					name = "shot of red mead"
					desc = "A True Vikings Beverage, though its color is strange. And in a shotglass, rather than a mug."
				if("mead")
					icon_state = "beershot"
					name = "shot of mead"
					desc = "A Vikings Beverage, though a cheap one."
				if("iced_beer")
					icon_state = "beershot"
					name = "shot of chilled beer"
					desc = "A beer so frosty, the air around it freezes."
				if("grog")
					icon_state = "beershot"
					name = "shot of grog"
					desc = "A fine and cepa drink for Space."
				if("soy_latte")
					icon_state = "irishcoffeeglass"
					name = "Soy Latte"
					desc = "A nice and refreshing beverage while you are reading."
				if("cafe_latte")
					icon_state = "irishcoffeeglass"
					name = "Cafe Latte"
					desc = "A nice, strong and refreshing beverage while you are reading."
				if("acidspit")
					icon_state = "acidspitshotglass"
					name = "shot of acid spit"
					desc = "A recipe from Mazra Estates. Made from live aliens."
				if("amasec")
					icon_state = "amasecshotglass"
					name = "shot of amasec"
					desc = "Always handy before BAR COMBAT!!!"
				if("neurotoxin")
					icon_state = "neurotoxinshotglass"
					name = "shot of neurotoxin"
					desc = "A drink that is guaranteed to knock you silly, even in as small of doses as this."
				if("hippiesdelight")
					icon_state = "hippiesdelightshotglass"
					name = "shot of hippie's delight"
					desc = "A drink enjoyed by everyone during the 1960's."
				if("bananahonk")
					icon_state = "bananahonkshotglass"
					name = "shot of banana honk"
					desc = "You're going to clown-hell for even considering drinking this."
				if("silencer")
					icon_state = "silencershotglass"
					name = "shot of silencer"
					desc = "Shhhhh..."
				if("nothing")
					icon_state = "shotglass"
					name = "shot of nothing"
					desc = "Absolutely nothing."
				if("devilskiss")
					icon_state = "devilskissshotglass"
					name = "shot of devils kiss"
					desc = "Creepy time!"
				if("changelingsting")
					icon_state = "thirteen_lokoshotglass"
					name = "shot of changeling sting"
					desc = "A tangy shot."
				if("irishcarbomb")
					icon_state = "irishcarbombshotglass"
					name = "shot of irish car bomb"
					desc = "An irish car bomb."
				if("syndicatebomb")
					icon_state = "beershot"
					name = "shot of syndicate bomb"
					desc = "A syndicate bomb."
				if("erikasurprise")
					icon_state = "shotglass_green"
					name = "shot of Erika's surprise"
					desc = "The surprise is, it's green!"
				if("driestmartini")
					icon_state = "martinishotglass"
					name = "shot of driest martini"
					desc = "Only for the experienced. You think you see sand floating in the glass."
				if("ice")
					icon_state = "iceshotglass"
					name = "shot of ice"
					desc = "Generally, you're supposed to put something else in there too..."
				if("icecoffee")
					icon_state = "shotglass_brown"
					name = "shot of iced coffee"
					desc = "A drink to perk you up and refresh you!"
				if("coffee")
					icon_state = "shotglass_brown"
					name = "shot of coffee"
					desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."
				if("bilk")
					icon_state = "shotglass_brown"
					name = "Glass of bilk"
					desc = "A brew of milk and beer. For those alcoholics who fear osteoporosis."
				if("fuel")
					icon_state = "dr_gibbshotglass"
					name = "shotglass of welder fuel"
					desc = "Unless you are an industrial tool, this is probably not safe for consumption."
				else
					icon_state ="shotglass_brown"
					name = "shotglass of ..what?"
					desc = "You can't really tell what this is. Fuck it. Shots."
		else
			icon_state = "shotglass"
			name = "shotglass"
			desc = "A small shooter glass, for taking short hits of a drink."
			return