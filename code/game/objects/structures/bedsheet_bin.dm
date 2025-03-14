/*
CONTAINS:
BLANKETS - for low comfort beds like Legion/Khans
BEDSHEETS
LINEN BINS
*/

/obj/item/blanket
	name = "blanket"
	desc = "A undyed rough blanket."
	icon = 'icons/obj/bedsheets.dmi'
	icon_state = "blanket1"
	item_state = "bedsheet"
	layer = MOB_LAYER
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = WEIGHT_CLASS_TINY
	resistance_flags = FLAMMABLE

/obj/item/blanket/blanketalt
	icon_state = "blanket2"

/obj/item/bedsheet
	name = "bedsheet"
	desc = "A surprisingly soft linen bedsheet."
	icon = 'icons/obj/bedsheets.dmi'
	icon_state = "sheetwhite"
	item_state = "bedsheet"
	slot_flags = ITEM_SLOT_NECK
	layer = MOB_LAYER
	throwforce = 0
	throw_speed = 1
	throw_range = 2
	w_class = WEIGHT_CLASS_TINY
	resistance_flags = FLAMMABLE
	dying_key = DYE_REGISTRY_BEDSHEET

	dog_fashion = /datum/dog_fashion/head/ghost
	var/list/dream_messages = list("white")

/obj/item/bedsheet/attack(mob/living/M, mob/user)
	if(!attempt_initiate_surgery(src, M, user))
		..()

/obj/item/bedsheet/attack_self(mob/user)
	if(!user.can_reach(src))		//No telekenetic grabbing.
		return
	if(!user.dropItemToGround(src))
		return
	if(layer == initial(layer))
		plane = MOB_PLANE // makes it render on the mob plane to overlay the mobs.
		layer = ABOVE_MOB_LAYER
		to_chat(user, span_notice("You cover yourself with [src]."))
	else
		plane = initial(plane) // sets it back!
		layer = initial(layer)
		to_chat(user, span_notice("You smooth [src] out beneath you."))
	add_fingerprint(user)
	return

/obj/item/bedsheet/attackby(obj/item/I, mob/user, params)
	if(!(flags_1 & HOLOGRAM_1) && (istype(I, /obj/item/wirecutters) || I.get_sharpness()))
		var/obj/item/stack/sheet/cloth/C = new (get_turf(src), 3)
		transfer_fingerprints_to(C)
		C.add_fingerprint(user)
		qdel(src)
		to_chat(user, span_notice("You tear [src] up."))
	else
		return ..()

/obj/item/bedsheet/blue
	icon_state = "sheetblue"
	dream_messages = list("blue")

/obj/item/bedsheet/green
	icon_state = "sheetgreen"
	dream_messages = list("green")

/obj/item/bedsheet/grey
	icon_state = "sheetgrey"
	dream_messages = list("grey")

/obj/item/bedsheet/orange
	icon_state = "sheetorange"
	dream_messages = list("orange")

/obj/item/bedsheet/purple
	icon_state = "sheetpurple"
	dream_messages = list("purple")

/obj/item/bedsheet/patriot
	name = "patriotic bedsheet"
	desc = "You've never felt more free than when sleeping on this."
	icon_state = "sheetUSA"
	dream_messages = list("America", "freedom", "fireworks", "bald eagles")

/obj/item/bedsheet/rainbow
	name = "rainbow bedsheet"
	desc = "A multicolored blanket. It's actually several different sheets cut up and sewn together."
	icon_state = "sheetrainbow"
	dream_messages = list("red", "orange", "yellow", "green", "blue", "purple", "a rainbow")

/obj/item/bedsheet/red
	icon_state = "sheetred"
	dream_messages = list("red")

/obj/item/bedsheet/yellow
	icon_state = "sheetyellow"
	dream_messages = list("yellow")

/obj/item/bedsheet/captain
	name = "hubris comics bedsheet"
	desc = "It has a Hubris Comics logo on it, part of a line of superhero themed bedsheets. This one is in Captain Cosmos colors."
	icon_state = "sheetcaptain"
	dream_messages = list("authority", "a golden ID", "sunglasses", "a green disc", "an antique gun", "the captain")

/obj/item/bedsheet/rd
	name = "rich bedsheet"
	desc = "Gold and purple, the colors of old world royalty, this luxurious blanket calls to the times of barons and kings."
	icon_state = "sheetrd"
	dream_messages = list("authority", "a silvery ID", "a bomb", "a mech", "a facehugger", "maniacal laughter", "the research director")

// for Free Golems.
/obj/item/bedsheet/rd/royal_cape
	name = "Royal Cape of the Liberator"
	desc = "Majestic."
	dream_messages = list("mining", "stone", "a golem", "freedom", "doing whatever")

/obj/item/bedsheet/medical
	name = "medical blanket"
	desc = "It's a sterilized* blanket commonly used in hospitals.  *Sterilization is void if sheets have not been changed in the past three days."
	icon_state = "sheetmedical"
	dream_messages = list("healing", "life", "surgery", "a doctor")

/obj/item/bedsheet/cmo
	name = "medical bedsheet"
	desc = "It's a sterilized blanket that has a cross emblem. There's some cat fur on it, but there's no cats here."
	icon_state = "sheetcmo"
	dream_messages = list("authority", "a silvery ID", "healing", "life", "surgery", "a cat", "the chief medical officer")

/obj/item/bedsheet/hos
	name = "authoritarian bedsheet"
	desc = "This red and gold blanket has an aura of authority. While crime doesn't sleep, you do, but you are still THE LAW!"
	icon_state = "sheethos"
	dream_messages = list("authority", "a silvery ID", "handcuffs", "a baton", "a flashbang", "sunglasses", "the head of security")

/obj/item/bedsheet/hop
	name = "clerk's bedsheet"
	desc = "This gold and sky blue blanket has an aura of blissful bureaucracy. These were gifted to Yuma civil servants in a long ago festival."
	icon_state = "sheethop"
	dream_messages = list("authority", "a silvery ID", "obligation", "a computer", "an ID", "a corgi", "the head of personnel")

/obj/item/bedsheet/ce
	name = "engineer's bedsheet"
	desc = "It is decorated with a wrench emblem. It's highly reflective and stain resistant, so you don't need to worry about ruining it with oil."
	icon_state = "sheetce"
	dream_messages = list("authority", "a silvery ID", "the engine", "power tools", "an APC", "a parrot", "the chief engineer")

/obj/item/bedsheet/qm
	name = "caravaneer's bedsheet"
	desc = "It is decorated with a crate emblem in silver lining.  It's rather tough, and just the thing to lie on after a hard day of pushing paper."
	icon_state = "sheetqm"
	dream_messages = list("a grey ID", "a shuttle", "a crate", "a sloth", "the quartermaster")

/obj/item/bedsheet/brown
	icon_state = "sheetbrown"
	dream_messages = list("brown")

/obj/item/bedsheet/black
	icon_state = "sheetblack"
	dream_messages = list("black")

/obj/item/bedsheet/centcom
	name = "\improper rare hubris comics bedsheet"
	desc = "This collector's edition hubris comics bedsheet was sold on secret markets for tens of thousands of dollars, once upon a time."
	icon_state = "sheetcentcom"
	dream_messages = list("a unique ID", "authority", "artillery", "an ending")

/obj/item/bedsheet/syndie
	name = "shi bedsheet"
	desc = "It has a Shi emblem and it has an imperial aura."
	icon_state = "sheetsyndie"
	dream_messages = list("a green disc", "a red crystal", "a glowing blade", "a wire-covered ID")

/obj/item/bedsheet/cult
	name = "cultist's bedsheet"
	desc = "Your dreams are filled with blood. It seems rather tattered and leaves you feeling nauseous."
	icon_state = "sheetcult"
	dream_messages = list("a tome", "a floating red crystal", "a glowing sword", "a bloody symbol", "a massive humanoid figure")

/obj/item/bedsheet/wiz
	name = "wizards bedsheet"
	desc = "A special blanket for the waster that dreams of magical adventure, woven with real* wizard spells. It even glows!"
	icon_state = "sheetwiz"
	dream_messages = list("a book", "an explosion", "lightning", "a staff", "a skeleton", "a robe", "magic")

/obj/item/bedsheet/nanotrasen
	name = "navitron bedsheet"
	desc = "It has the Navitron logo on it and has an aura of duty."
	icon_state = "sheetNT"
	dream_messages = list("authority", "an ending")

/obj/item/bedsheet/ian
	icon_state = "sheetian"
	dream_messages = list("a dog", "a corgi", "woof", "bark", "arf")

/obj/item/bedsheet/runtime
	icon_state = "sheetruntime"
	dream_messages = list("a kitty", "a cat", "meow", "purr")

/obj/item/bedsheet/pirate
	name = "bandit's bedsheet"
	desc = "It has a skull emblem on it and has a faint scent of whiskey."
	icon_state = "sheetpirate"
	dream_messages = list("doing whatever oneself wants", "cause a pirate is free", "being a pirate", "stealing", "landlubbers", "gold", "a buried treasure", "yarr", "avast", "a swashbuckler", "sailing the Seven Seas", "a parrot", "a monkey", "an island", "a talking skull")


/obj/item/bedsheet/enclave
	name = "enclave bedsheet"
	desc = "It's a well-used but well kept black bedsheet with the enclave logo sewn into it."
	icon_state = "sheetenclave"
	dream_messages = list("america", "the damn muties", "the star spangled banner", "navarro", "our troops", "that old hero frank horrigan")

/obj/item/bedsheet/sneedclave
	name = "american bedsheet"
	desc = "It's a well-used but well kept black bedsheet with the enclave logo sewn into it. Stars line the inside of it"
	icon_state = "sheetsneedclave"
	dream_messages = list("AMERICA", "FREEDOM", "BALD EAGLES")


/obj/item/bedsheet/gondola
	name = "gondola bedsheet"
	desc = "A precious bedsheet made from the hide of a rare and peculiar critter."
	icon_state = "sheetgondola"
	var/g_mouth
	var/g_eyes

/obj/item/bedsheet/gondola/Initialize()
	. = ..()
	g_mouth = "sheetgondola_mouth[rand(1, 4)]"
	g_eyes = "sheetgondola_eyes[rand(1, 4)]"
	add_overlay(g_mouth)
	add_overlay(g_eyes)

/obj/item/bedsheet/gondola/worn_overlays(isinhands = FALSE, icon_file, used_state, style_flags = NONE)
	. = ..()
	if(!isinhands)
		. += mutable_appearance(icon_file, g_mouth)
		. += mutable_appearance(icon_file, g_eyes)

/obj/item/bedsheet/random
	icon_state = "random_bedsheet"
	name = "random bedsheet"
	desc = "If you're reading this description ingame, something has gone wrong! Honk!"

/obj/item/bedsheet/random/Initialize()
	..()
	var/type = pick(typesof(/obj/item/bedsheet) - list(/obj/item/bedsheet/random, /obj/item/bedsheet/chameleon))
	new type(loc)
	return INITIALIZE_HINT_QDEL

/obj/item/bedsheet/chameleon //donator chameleon bedsheet
	name = "chameleon bedsheet"
	desc = "Bedsheet technology has truly gone too far."
	var/datum/action/item_action/chameleon/change/chameleon_action

/obj/item/bedsheet/chameleon/New()
	..()
	chameleon_action = new(src)
	chameleon_action.chameleon_type = /obj/item/bedsheet
	chameleon_action.chameleon_name = "Bedsheet"
	chameleon_action.chameleon_blacklist = typecacheof(list(/obj/item/bedsheet/chameleon, /obj/item/bedsheet/random), only_root_path = TRUE)
	chameleon_action.initialize_disguises()

//bedsheet bin
/obj/structure/bedsheetbin
	name = "linen bin"
	desc = "It looks rather cozy."
	icon = 'icons/obj/structures.dmi'
	icon_state = "linenbin-full"
	anchored = TRUE
	resistance_flags = FLAMMABLE
	max_integrity = 70
	var/amount = 10
	var/list/sheet_types = list(/obj/item/bedsheet)
	var/static/allowed_sheets = list(/obj/item/bedsheet, /obj/item/reagent_containers/rag/towel)
	var/list/sheets = list()
	var/obj/item/hidden = null

/obj/structure/bedsheetbin/empty
	amount = 0
	icon_state = "linenbin-empty"
	anchored = FALSE

/obj/structure/bedsheetbin/examine(mob/user)
	. = ..()
	if(amount < 1)
		. += "There are no sheets in the bin."
	else if(amount == 1)
		. += "There is one sheet in the bin."
	else
		. += "There are [amount] sheets in the bin."


/obj/structure/bedsheetbin/update_icon_state()
	switch(amount)
		if(0)
			icon_state = "linenbin-empty"
		if(1 to 5)
			icon_state = "linenbin-half"
		else
			icon_state = "linenbin-full"

/obj/structure/bedsheetbin/fire_act(exposed_temperature, exposed_volume)
	if(amount)
		amount = 0
		update_icon()
	..()

/obj/structure/bedsheetbin/attackby(obj/item/I, mob/user, params)
	if(is_type_in_list(I, allowed_sheets))
		if(!user.transferItemToLoc(I, src))
			to_chat(user, span_warning("\The [I] is stuck to your hand, you cannot place it into the bin!"))
			return
		sheets.Add(I)
		amount++
		to_chat(user, span_notice("You put [I] in [src]."))
		update_icon()
	else if(amount && !hidden && I.w_class < WEIGHT_CLASS_BULKY)	//make sure there's sheets to hide it among, make sure nothing else is hidden in there.
		if(!user.transferItemToLoc(I, src))
			to_chat(user, span_warning("\The [I] is stuck to your hand, you cannot hide it among the sheets!"))
			return
		hidden = I
		to_chat(user, span_notice("You hide [I] among the sheets."))


/obj/structure/bedsheetbin/attack_paw(mob/user)
	return attack_hand(user)

/obj/structure/bedsheetbin/on_attack_hand(mob/user, act_intent = user.a_intent, unarmed_attack_flags)
	if(user.incapacitated())
		return
	if(amount >= 1)
		amount--

		var/obj/item/B
		if(sheets.len > 0)
			B = sheets[sheets.len]
			sheets.Remove(B)

		else
			var/chosen = pick(sheet_types)
			B = new chosen

		B.forceMove(drop_location())
		user.put_in_hands(B)
		to_chat(user, span_notice("You take [B] out of [src]."))
		update_icon()

		if(hidden)
			hidden.forceMove(drop_location())
			to_chat(user, span_notice("[hidden] falls out of [B]!"))
			hidden = null

	add_fingerprint(user)

/obj/structure/bedsheetbin/attack_tk(mob/user)
	if(amount >= 1)
		amount--

		var/obj/item/B
		if(sheets.len > 0)
			B = sheets[sheets.len]
			sheets.Remove(B)

		else
			var/chosen = pick(sheet_types)
			B = new chosen

		B.forceMove(drop_location())
		to_chat(user, span_notice("You telekinetically remove [B] from [src]."))
		update_icon()

		if(hidden)
			hidden.forceMove(drop_location())
			hidden = null

/obj/structure/bedsheetbin/towel
	desc = "It looks rather cozy. This one is designed to hold towels."
	sheet_types = list(/obj/item/reagent_containers/rag/towel)

/obj/structure/bedsheetbin/color
	sheet_types = list(/obj/item/bedsheet, /obj/item/bedsheet/blue, /obj/item/bedsheet/green, /obj/item/bedsheet/orange, \
						/obj/item/bedsheet/purple, /obj/item/bedsheet/red, /obj/item/bedsheet/yellow, /obj/item/bedsheet/brown, \
						/obj/item/bedsheet/black)
