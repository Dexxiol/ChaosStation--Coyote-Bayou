/*	Pens!
 *	Contains:
 *		Pens
 *		Sleepy Pens
 *		Parapens
 *		Edaggers
 */


/*
 * Pens
 */
/obj/item/pen
	desc = "It's a normal black ink pen."
	name = "pen"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "pen"
	item_state = "pen"
	// inhand_icon_state = "pen"
	// worn_icon_state = "pen"
	slot_flags = ITEM_SLOT_BELT | ITEM_SLOT_EARS
	throwforce = 0
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 3
	throw_range = 7
	custom_materials = list(/datum/material/iron=10)
	pressure_resistance = 2
	grind_results = list(/datum/reagent/iron = 2, /datum/reagent/iodine = 1)
	var/colour = "black"	//what colour the ink is!
	var/degrees = 0
	var/font = PEN_FONT
	embedding = list()
	sharpness = SHARP_POINTY
	var/naming = FALSE

/obj/item/pen/suicide_act(mob/user)
	user.visible_message(span_suicide("[user] is scribbling numbers all over [user.p_them()]self with [src]! It looks like [user.p_theyre()] trying to commit sudoku..."))
	return(BRUTELOSS)

/obj/item/pen/blue
	desc = "It's a normal blue ink pen."
	icon_state = "pen_blue"
	colour = "blue"

/obj/item/pen/red
	desc = "It's a normal red ink pen."
	icon_state = "pen_red"
	colour = "red"
	throw_speed = 4 // red ones go faster (in this case, fast enough to embed!)

/obj/item/pen/invisible
	desc = "It's an invisible pen marker."
	icon_state = "pen"
	colour = "white"

/obj/item/pen/fourcolor
	desc = "It's a fancy four-color ink pen, set to black."
	name = "four-color pen"
	colour = "black"

/obj/item/pen/fourcolor/attack_self(mob/living/carbon/user)
	switch(colour)
		if("black")
			colour = "red"
			throw_speed++
		if("red")
			colour = "green"
			throw_speed = initial(throw_speed)
		if("green")
			colour = "blue"
		else
			colour = "black"
	to_chat(user, span_notice("\The [src] will now write in [colour]."))
	desc = "It's a fancy four-color ink pen, set to [colour]."

/obj/item/pen/fountain
	name = "fountain pen"
	desc = "It's a common fountain pen, with a faux wood body."
	icon_state = "pen-fountain"
	font = FOUNTAIN_PEN_FONT

/obj/item/pen/charcoal
	name = "charcoal stylus"
	desc = "It's just a wooden stick with some compressed ash on the end. At least it can write."
	icon_state = "pen-charcoal"
	colour = "dimgray"
	font = CHARCOAL_FONT
	custom_materials = null
	grind_results = list(/datum/reagent/ash = 5, /datum/reagent/cellulose = 10)

/datum/crafting_recipe/charcoal_stylus
	name = "Charcoal Stylus"
	result = /obj/item/pen/charcoal
	reqs = list(/obj/item/stack/sheet/mineral/wood = 1, /datum/reagent/ash = 30)
	time = 30
	category = CAT_PRIMAL

/obj/item/pen/fountain/captain
	name = "captain's fountain pen"
	desc = "It's an expensive Oak fountain pen. The nib is quite sharp."
	icon_state = "pen-fountain-o"
	force = 5
	throwforce = 5
	throw_speed = 4
	colour = "crimson"
	custom_materials = list(/datum/material/gold = 750)
	sharpness = SHARP_EDGED
	resistance_flags = FIRE_PROOF
	reskinnable_component = /datum/component/reskinnable/captain_pen
	embedding = list("embed_chance" = 75)

/obj/item/pen/fountain/captain/Initialize()
	. = ..()
	AddComponent(/datum/component/butchering, 200, 115) //the pen is mightier than the sword

/obj/item/pen/attack_self(mob/living/carbon/user)
	var/deg = input(user, "What angle would you like to rotate the pen head to? (1-360)", "Rotate Pen Head") as null|num
	if(deg && (deg > 0 && deg <= 360))
		degrees = deg
		to_chat(user, span_notice("You rotate the top of the pen to [degrees] degrees."))
		SEND_SIGNAL(src, COMSIG_PEN_ROTATED, deg, user)

/obj/item/pen/attack(mob/living/M, mob/user,stealth)
	if(!istype(M))
		return

	if(!force)
		if(M.can_inject(user, 1))
			to_chat(user, span_warning("You stab [M] with the pen."))
			if(!stealth)
				to_chat(M, span_danger("You feel a tiny prick!"))
			. = 1

		log_combat(user, M, "stabbed", src)

	else
		. = ..()

/obj/item/pen/AltClick(mob/user)
	if(!naming)
		naming = TRUE
		w_class = WEIGHT_CLASS_GIGANTIC
		sharpness = SHARP_NONE
		to_chat(usr, "<span class='notice'>You firmly grip the pen in preparation to rename something.</span>")
		playsound(src, 'sound/machines/button2.ogg', 100, 1)
		return
	if(naming)
		naming = FALSE
		w_class = WEIGHT_CLASS_TINY
		sharpness = SHARP_POINTY
		to_chat(usr, "<span class='notice'>You reset the grip on the pen</span>")
		playsound(src, 'sound/machines/button2.ogg', 100, 1)
		return


/obj/item/pen/afterattack(obj/O, mob/living/user, proximity, params)
	. = ..()
	if (naming)
		//Changing Name/Description of items. Only works if they have the 'unique_rename' flag set
		if(isobj(O) && proximity)
			var/penchoice = input(user, "What would you like to edit?", "Rename or change description?") as null|anything in list("Rename","Change description")
			if(QDELETED(O) || !user.canUseTopic(O, BE_CLOSE))
				return
			if(penchoice == "Rename")
				var/input = stripped_input(user,"What do you want to name \the [O.name]?", ,"", MAX_NAME_LEN)
				var/oldname = O.name
				if(QDELETED(O) || !user.canUseTopic(O, BE_CLOSE))
					return
				if(oldname == input)
					to_chat(user, "<span class='notice'>You changed \the [O.name] to... well... \the [O.name].</span>")
				else
					O.name = input
					to_chat(user, "<span class='notice'>\The [oldname] has been successfully been renamed to \the [input].</span>")
					O.renamedByPlayer = TRUE

			if(penchoice == "Change description")
				var/input = stripped_input(user,"Describe \the [O.name] here", ,"", 100)
				if(QDELETED(O) || !user.canUseTopic(O, BE_CLOSE))
					return
				O.desc = input
				to_chat(user, "<span class='notice'>You have successfully changed \the [O.name]'s description.</span>")
	else
		return
/*
 * Sleepypens
 */

/obj/item/pen/sleepy/attack(mob/living/M, mob/user)
	if(!istype(M))
		return

	if(..())
		if(reagents.total_volume)
			if(M.reagents)
				reagents.reaction(M, INJECT)
				reagents.trans_to(M, reagents.total_volume)


/obj/item/pen/sleepy/Initialize()
	. = ..()
	create_reagents(45, OPENCONTAINER)
	reagents.add_reagent(/datum/reagent/toxin/chloralhydrate, 20)
	reagents.add_reagent(/datum/reagent/toxin/mutetoxin, 15)
	reagents.add_reagent(/datum/reagent/toxin/staminatoxin, 10)

/*
 * (Alan) Edaggers
 */
/obj/item/pen/edagger
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut") //these wont show up if the pen is off
	// attack_verb_continuous = list("slashes", "stabs", "slices", "tears", "lacerates", "rips", "dices", "cuts") //these won't show up if the pen is off
	// attack_verb_simple = list("slash", "stab", "slice", "tear", "lacerate", "rip", "dice", "cut")
	sharpness = SHARP_EDGED
	var/on = FALSE

/obj/item/pen/edagger/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/butchering, 60, 100, 0, 'sound/weapons/blade1.ogg')
	AddElement(/datum/element/update_icon_updates_onmob)

/obj/item/pen/edagger/get_sharpness()
	return on * sharpness

/obj/item/pen/edagger/suicide_act(mob/user)
	. = BRUTELOSS
	if(on)
		user.visible_message(span_suicide("[user] forcefully rams the pen into their mouth!"))
	else
		user.visible_message(span_suicide("[user] is holding a pen up to their mouth! It looks like [user.p_theyre()] trying to commit suicide!"))
		attack_self(user)

/obj/item/pen/edagger/attack_self(mob/living/user)
	if(on)
		on = FALSE
		force = initial(force)
		throw_speed = initial(throw_speed)
		w_class = initial(w_class)
		name = initial(name)
		hitsound = initial(hitsound)
		embedding = list(embed_chance = EMBED_CHANCE)
		throwforce = initial(throwforce)
		playsound(user, 'sound/weapons/saberoff.ogg', 5, TRUE)
		to_chat(user, span_warning("[src] can now be concealed."))
	else
		on = TRUE
		force = 30
		throw_speed = 4
		w_class = WEIGHT_CLASS_NORMAL
		name = "energy dagger"
		hitsound = 'sound/weapons/blade1.ogg'
		embedding = list(embed_chance = 100) //rule of cool
		throwforce = 45
		playsound(user, 'sound/weapons/saberon.ogg', 5, TRUE)
		to_chat(user, span_warning("[src] is now active."))
	updateEmbedding()
	update_icon()

/obj/item/pen/edagger/update_icon_state()
	if(on)
		icon_state = item_state = "edagger"
		lefthand_file = 'icons/mob/inhands/weapons/swords_lefthand.dmi'
		righthand_file = 'icons/mob/inhands/weapons/swords_righthand.dmi'
	else
		icon_state = initial(icon_state) //looks like a normal pen when off.
		item_state = initial(item_state)
		lefthand_file = initial(lefthand_file)
		righthand_file = initial(righthand_file)

/obj/item/pen/survival
	name = "survival pen"
	desc = "The latest in portable survival technology, this pen was designed as a miniature diamond pickaxe. Watchers find them very desirable for their diamond exterior."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "digging_pen"
	item_state = "pen"
	// inhand_icon_state = "pen"
	// worn_icon_state = "pen"
	force = 3
	w_class = WEIGHT_CLASS_TINY
	custom_materials = list(/datum/material/iron=10, /datum/material/diamond=100, /datum/material/titanium = 10)
	pressure_resistance = 2
	grind_results = list(/datum/reagent/iron = 2, /datum/reagent/iodine = 1)
	tool_behaviour = TOOL_MINING //For the classic "digging out of prison with a spoon but you're in space so this analogy doesn't work" situation.
	toolspeed = 10 //You will never willingly choose to use one of these over a shovel.
