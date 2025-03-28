
//////////////////////////Poison stuff (Toxins & Acids)///////////////////////

/datum/reagent/toxin
	name = "Toxin"
	description = "A toxic chemical."
	color = "#CF3600" // rgb: 207, 54, 0
	taste_description = "bitterness"
	taste_mult = 1.2
	value = REAGENT_VALUE_COMMON //Encouraging people to mix toxins for reasons beyond harming each other or mixing reagents such as pen acid.
	var/toxpwr = 1.5
	ghoulfriendly = TRUE

// Are you a bad enough dude to poison your own plants?
/datum/reagent/toxin/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	. = ..()
	if(chems.has_reagent(type, 1))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 2))

/datum/reagent/toxin/on_mob_life(mob/living/carbon/M)
	if(toxpwr)
		M.adjustToxLoss(toxpwr*REM, 0)
		. = TRUE
	..()

/datum/reagent/toxin/on_mob_life_synth(mob/living/carbon/M)
	if(toxpwr)
		M.adjustBruteLoss(toxpwr*REM, 0)
		. = TRUE
	..()

/datum/reagent/toxin/amatoxin
	name = "Amatoxin"
	description = "A powerful poison derived from certain species of mushroom."
	color = "#792300" // rgb: 121, 35, 0
	toxpwr = 2.5
	taste_description = "mushroom"
	value = REAGENT_VALUE_UNCOMMON
	pH = 13

/* FEV reagents */
/datum/reagent/toxin/FEV_solution
	name = "master FEV solution"
	description = "You aren't meant to see this..?"
	color = "#00FF00"
	toxpwr = 0
	overdose_threshold = 18 // So, someone drinking 20 units will FOR SURE get overdosed
	taste_description = "horrific agony"
	taste_mult = 0.9
	var/datum/disease/fev_disease = /datum/disease/transformation/mutant

/datum/reagent/toxin/FEV_solution/overdose_process(mob/living/carbon/C)
	if(ispath(fev_disease))
		C.ForceContractDisease(new fev_disease, FALSE, TRUE)

//FEV - I: Unstable
/datum/reagent/toxin/FEV_solution/one
	name = "Unstable FEV solution"
	description = "An incredibly lethal strain of the Forced Evolutionary Virus. Consume at your own risk."
	fev_disease = /datum/disease/transformation/mutant/unstable

/datum/reagent/toxin/FEV_solution/one/reaction_mob(mob/living/carbon/M, method=TOUCH, reac_volume)
	if(!..())
		return
	if(!M.has_dna())
		return  //No robots, AIs, aliens, Ians or other mobs should be affected by this.
	if((method==VAPOR && prob(min(25, reac_volume))) || method==INGEST || method==PATCH || method==INJECT)
		M.easy_randmut(NEGATIVE + MINOR_NEGATIVE, sequence = FALSE)
		M.updateappearance()
		M.domutcheck()
	..()

/datum/reagent/toxin/FEV_solution/one/on_mob_life(mob/living/carbon/C)
	C.apply_effect(40,EFFECT_IRRADIATE,0)
	C.adjustCloneLoss(3,0) // ~15 units will get you near crit condition.
	return ..()

//FEV - II: The super mutie kind
/datum/reagent/toxin/FEV_solution/two
	name = "FEV-II solution"
	description = "A version of FEV that has been modified by radiation. It is suggested that only radiation-free humans use it."
	fev_disease = /datum/disease/transformation/mutant/super

/datum/reagent/toxin/FEV_solution/two/overdose_process(mob/living/carbon/C)
	if(C.radiation < RAD_MOB_SAFE)
		C.reagents.remove_reagent(src.type,10) // Clean up
		return ..() // Infect with disease
	else // You fucked up
		if(prob(5))
			to_chat(C, span_danger("IT BURNS!"))
			C.emote("scream")
			C.adjustFireLoss(10,0)
		C.adjustFireLoss(5,0)
		C.apply_effect(10,EFFECT_IRRADIATE,0) // Now the only thing you are turning into is a ghoul
		C.Jitter(2)
	return

//FEV - Curling 13: The murderous type
/datum/reagent/toxin/FEV_solution/curling
	name = "Curling-13 solution"
	description = "A heavily modified version of FEV, produced with intent to kill all 'mutated' lifeforms."
	fev_disease = /datum/disease/curling_thirteen
	can_synth = FALSE

/datum/reagent/toxin/FEV_solution/curling/on_mob_add(mob/living/L)
	if(ishuman(L))
		var/mob/living/carbon/human/H = L
		overdose_process(H) // Disease
		H.reagents.remove_reagent(src.type,100) // Our job here is done
		return

/datum/reagent/toxin/mutagen
	name = "Unstable mutagen"
	description = "Might cause unpredictable mutations. Keep away from children."
	color = "#00FF00"
	toxpwr = 0
	taste_description = "slime"
	taste_mult = 0.9
	value = REAGENT_VALUE_VERY_COMMON
	pH = 2.3

/datum/reagent/toxin/mutagen/reaction_mob(mob/living/carbon/M, method=TOUCH, reac_volume)
	if(!..())
		return
	if(!M.has_dna())
		return  //No robots, AIs, aliens, Ians or other mobs should be affected by this.
	if((method==VAPOR && prob(min(33, reac_volume))) || method==INGEST || method==PATCH || method==INJECT)
		M.randmuti()
		if(prob(98))
			M.easy_randmut(NEGATIVE+MINOR_NEGATIVE)
		else
			M.easy_randmut(POSITIVE)
		M.updateappearance()
		M.domutcheck()
	..()

/datum/reagent/toxin/mutagen/on_mob_life(mob/living/carbon/C)
	C.apply_effect(5,EFFECT_IRRADIATE,0)
	return ..()

/datum/reagent/toxin/mutagen/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	mytray.mutation_roll(user)
	if(chems.has_reagent(type, 1))
		mytray.adjustToxic(1.5) //It is still toxic, mind you, but not to the same degree.

/datum/reagent/toxin/plasma
	name = "Plasma"
	description = "Plasma in its liquid form."
	taste_description = "bitterness"
	specific_heat = SPECIFIC_HEAT_PLASMA
	taste_mult = 1.5
	color = "#8228A0"
	toxpwr = 3
	pH = 4
	value = REAGENT_VALUE_RARE //sheets are worth more
	material = /datum/material/plasma

/datum/reagent/toxin/plasma/on_mob_life(mob/living/carbon/C)
	if(holder.has_reagent(/datum/reagent/medicine/epinephrine))
		holder.remove_reagent(/datum/reagent/medicine/epinephrine, 2*REM)
	C.adjustPlasma(20)
	return ..()

/datum/reagent/toxin/plasma/reaction_obj(obj/O, reac_volume)
	if((!O) || (!reac_volume))
		return 0
	var/temp = holder ? holder.chem_temp : T20C
	O.atmos_spawn_air("plasma=[reac_volume];TEMP=[temp]")

/datum/reagent/toxin/plasma/reaction_turf(turf/open/T, reac_volume)
	if(istype(T))
		var/temp = holder ? holder.chem_temp : T20C
		T.atmos_spawn_air("plasma=[reac_volume];TEMP=[temp]")
	return

/datum/reagent/toxin/plasma/reaction_mob(mob/living/M, method=TOUCH, reac_volume)//Splashing people with plasma is stronger than fuel!
	if(method == TOUCH || method == VAPOR)
		M.adjust_fire_stacks(reac_volume / 5)
		return
	..()

/datum/reagent/toxin/lexorin
	name = "Lexorin"
	description = "A powerful poison used to stop respiration."
	color = "#7DC3A0"
	toxpwr = 0
	taste_description = "acid"
	pH = 1.2
	value = REAGENT_VALUE_RARE

/datum/reagent/toxin/lexorin/on_mob_life(mob/living/carbon/C)
	. = TRUE

	if(HAS_TRAIT(C, TRAIT_NOBREATH))
		. = FALSE

	if(.)
		C.adjustOxyLoss(5, 0)
		C.losebreath += 2
		if(prob(20))
			C.emote("gasp")
	..()

/datum/reagent/toxin/slimejelly
	name = "Slime Jelly"
	description = "A gooey semi-liquid produced from one of the deadliest lifeforms in existence. SO REAL."
	color = "#801E28" // rgb: 128, 30, 40
	toxpwr = 0
	taste_description = "slime"
	taste_mult = 1.3
	pH = 10
	value = REAGENT_VALUE_UNCOMMON

/datum/reagent/toxin/slimejelly/on_mob_life(mob/living/carbon/M)
	if(prob(10))
		to_chat(M, span_danger("Your insides are burning!"))
		M.adjustToxLoss(rand(20,60)*REM, 0)
		. = 1
	else if(prob(40))
		M.heal_bodypart_damage(5*REM)
		. = 1
	..()

/datum/reagent/toxin/minttoxin
	name = "Mint Toxin"
	description = "Useful for dealing with undesirable customers."
	color = "#CF3600" // rgb: 207, 54, 0
	toxpwr = 0
	taste_description = "mint"
	pH = 8
	value = REAGENT_VALUE_UNCOMMON

/datum/reagent/toxin/minttoxin/on_mob_life(mob/living/carbon/M)
	if(HAS_TRAIT(M, TRAIT_FAT))
		M.gib()
	return ..()

/datum/reagent/toxin/carpotoxin
	name = "Carpotoxin"
	description = "A deadly neurotoxin produced by the dreaded spess carp."
	color = "#003333" // rgb: 0, 51, 51
	toxpwr = 2
	taste_description = "fish"
	pH = 12
	value = REAGENT_VALUE_RARE

/datum/reagent/toxin/carpotoxin/on_mob_life(mob/living/carbon/M)
	. = ..()
	for(var/i in M.all_scars)
		qdel(i)

/datum/reagent/toxin/zombiepowder
	name = "Zombie Powder"
	description = "A strong neurotoxin that puts the subject into a death-like state."
	reagent_state = SOLID
	color = "#669900" // rgb: 102, 153, 0
	toxpwr = 0.5
	taste_description = "death"
	var/fakedeath_active = FALSE
	pH = 13
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/zombiepowder/on_mob_metabolize(mob/living/L)
	..()
	ADD_TRAIT(L, TRAIT_FAKEDEATH, type)

/datum/reagent/toxin/zombiepowder/on_mob_end_metabolize(mob/living/L)
	L.cure_fakedeath(type)
	..()

/datum/reagent/toxin/zombiepowder/reaction_mob(mob/living/L, method=TOUCH, reac_volume)
	L.adjustOxyLoss(0.5*REM, 0)
	if(method == INGEST)
		fakedeath_active = TRUE
		L.fakedeath(type)

/datum/reagent/toxin/zombiepowder/on_mob_life(mob/living/M)
	..()
	if(fakedeath_active)
		return TRUE
	switch(current_cycle)
		if(1 to 5)
			M.confused += 1
			M.drowsyness += 1
			M.slurring += 3
		if(5 to 8)
			M.adjustStaminaLoss(40, 0)
		if(9 to INFINITY)
			fakedeath_active = TRUE
			M.fakedeath(type)

/datum/reagent/toxin/ghoulpowder
	name = "Ghoul Powder"
	description = "A strong neurotoxin that slows metabolism to a death-like state, while keeping the patient fully active. Causes toxin buildup if used too long."
	reagent_state = SOLID
	color = "#664700" // rgb: 102, 71, 0
	toxpwr = 0.8
	taste_description = "death"
	pH = 14.5
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/ghoulpowder/on_mob_metabolize(mob/living/L)
	..()
	ADD_TRAIT(L, TRAIT_FAKEDEATH, type)

/datum/reagent/toxin/ghoulpowder/on_mob_end_metabolize(mob/living/L)
	REMOVE_TRAIT(L, TRAIT_FAKEDEATH, type)
	..()

/datum/reagent/toxin/ghoulpowder/on_mob_life(mob/living/carbon/M)
	M.adjustOxyLoss(1*REM, 0)
	..()
	. = 1

/datum/reagent/toxin/mindbreaker
	name = "Mindbreaker Toxin"
	description = "A powerful hallucinogen. Not a thing to be messed with. For some mental patients. it counteracts their symptoms and anchors them to reality."
	color = "#B31008" // rgb: 139, 166, 233
	toxpwr = 0
	taste_description = "sourness"
	pH = 11
	value = REAGENT_VALUE_UNCOMMON
	synth_metabolism_use_human = TRUE

/datum/reagent/toxin/mindbreaker/on_mob_life(mob/living/carbon/M)
	M.hallucination += 5
	return ..()

/datum/reagent/toxin/plantbgone
	name = "Plant-B-Gone"
	description = "A harmful toxic mixture to kill plantlife. Do not ingest!"
	color = "#49002E" // rgb: 73, 0, 46
	toxpwr = 1
	taste_mult = 1
	pH = 2.7
	value = REAGENT_VALUE_NONE

/datum/reagent/toxin/plantbgone/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	. = ..()
	if(chems.has_reagent(type, 1))
		mytray.adjustHealth(-round(chems.get_reagent_amount(type) * 10))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 6))
		mytray.adjustWeeds(-rand(4,8))

/datum/reagent/toxin/plantbgone/reaction_obj(obj/O, reac_volume)
	if(istype(O, /obj/structure/alien/weeds))
		var/obj/structure/alien/weeds/alien_weeds = O
		alien_weeds.take_damage(rand(15,35), BRUTE, 0) // Kills alien weeds pretty fast
	else if(istype(O, /obj/structure/glowshroom)) //even a small amount is enough to kill it
		qdel(O)
	else if(istype(O, /obj/structure/spacevine))
		var/obj/structure/spacevine/SV = O
		SV.on_chem_effect(src)

/datum/reagent/toxin/plantbgone/reaction_mob(mob/living/M, method=TOUCH, reac_volume)
	if(method == VAPOR)
		if(iscarbon(M))
			var/mob/living/carbon/C = M
			if(!C.wear_mask) // If not wearing a mask
				var/damage = min(round(0.4*reac_volume, 0.1),10)
				C.adjustToxLoss(damage)

/datum/reagent/toxin/plantbgone/weedkiller
	name = "Weed Killer"
	description = "A harmful toxic mixture to kill weeds. Do not ingest!"
	color = "#4B004B" // rgb: 75, 0, 75
	pH = 3
	value = REAGENT_VALUE_NONE

//Weed Spray
/datum/reagent/toxin/plantbgone/weedkiller/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	if(!mytray)
		return
	if(chems.has_reagent(type, 1))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 0.5))
		mytray.adjustWeeds(-rand(1,2))

/datum/reagent/toxin/pestkiller
	name = "Pest Killer"
	description = "A harmful toxic mixture to kill pests. Do not ingest!"
	color = "#4B004B" // rgb: 75, 0, 75
	toxpwr = 1
	pH = 3.2
	value = REAGENT_VALUE_NONE

//Pest Spray
/datum/reagent/toxin/pestkiller/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	if(!mytray)
		return
	if(chems.has_reagent(type, 1))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 1))
		mytray.adjustPests(-rand(1,2))

/datum/reagent/toxin/pestkiller/reaction_mob(mob/living/M, method=TOUCH, reac_volume)
	..()
	if(M.mob_biotypes & MOB_BUG)
		var/damage = min(round(0.4*reac_volume, 0.1),10)
		M.adjustToxLoss(damage)

/datum/reagent/toxin/spore
	name = "Spore Toxin"
	description = "A natural toxin produced by blob spores that inhibits vision when ingested."
	color = "#9ACD32"
	toxpwr = 1
	pH = 11
	value = REAGENT_VALUE_RARE

/datum/reagent/toxin/spore/on_mob_life(mob/living/carbon/C)
	C.damageoverlaytemp = 60
	C.update_damage_hud()
	C.blur_eyes(3)
	return ..()

/datum/reagent/toxin/spore_burning
	name = "Burning Spore Toxin"
	description = "A natural toxin produced by blob spores that induces combustion in its victim."
	color = "#9ACD32"
	toxpwr = 0.5
	taste_description = "burning"
	pH = 13
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/spore_burning/on_mob_life(mob/living/carbon/M)
	M.adjust_fire_stacks(2)
	M.IgniteMob()
	return ..()

/datum/reagent/toxin/chloralhydrate
	name = "Chloral Hydrate"
	description = "A powerful sedative that induces confusion and drowsiness before putting its target to sleep."
	reagent_state = SOLID
	color = "#000067" // rgb: 0, 0, 103
	toxpwr = 0
	metabolization_rate = 1.5 * REAGENTS_METABOLISM
	pH = 11

/datum/reagent/toxin/chloralhydrate/on_mob_life(mob/living/carbon/M)
	switch(current_cycle)
		if(1 to 10)
			M.confused += 2
			M.drowsyness += 2
		if(10 to 50)
			M.Sleeping(40, 0)
			. = 1
		if(51 to INFINITY)
			M.Sleeping(40, 0)
			M.adjustToxLoss((current_cycle - 50)*REM, 0)
			. = 1
	..()

/datum/reagent/toxin/fakebeer	//disguised as normal beer for use by emagged brobots
	name = "Beer"
	description = "A specially-engineered sedative disguised as beer. It induces instant sleep in its target."
	color = "#664300" // rgb: 102, 67, 0
	metabolization_rate = 1.5 * REAGENTS_METABOLISM
	taste_description = "piss water"
	glass_icon_state = "beerglass"
	glass_name = "glass of beer"
	glass_desc = "A freezing pint of beer."
	pH = 2
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/fakebeer/on_mob_life(mob/living/carbon/M)
	switch(current_cycle)
		if(1 to 50)
			M.Sleeping(40, 0)
		if(51 to INFINITY)
			M.Sleeping(40, 0)
			M.adjustToxLoss((current_cycle - 50)*REM, 0)
	return ..()

/datum/reagent/toxin/coffeepowder
	name = "Coffee Grounds"
	description = "Finely ground coffee beans, used to make coffee."
	reagent_state = SOLID
	color = "#5B2E0D" // rgb: 91, 46, 13
	toxpwr = 0.5
	pH = 4.2
	value = REAGENT_VALUE_VERY_COMMON

/datum/reagent/toxin/teapowder
	name = "Ground Tea Leaves"
	description = "Finely shredded tea leaves, used for making tea."
	reagent_state = SOLID
	color = "#7F8400" // rgb: 127, 132, 0
	toxpwr = 0.5
	pH = 4.9
	value = REAGENT_VALUE_VERY_COMMON

/datum/reagent/toxin/teapowder/red
	name = "Ground Red Tea Leaves"
	toxpwr = 0.4

/datum/reagent/toxin/teapowder/green
	name = "Ground Green Tea Leaves"
	toxpwr = 0.6

/datum/reagent/toxin/mutetoxin //the new zombie powder.
	name = "Mute Toxin"
	description = "A nonlethal poison that inhibits speech in its victim."
	color = "#F0F8FF" // rgb: 240, 248, 255
	toxpwr = 0
	taste_description = "silence"
	pH = 12.2

/datum/reagent/toxin/mutetoxin/on_mob_life(mob/living/carbon/M)
	M.silent = max(M.silent, 3)
	..()

/datum/reagent/toxin/staminatoxin
	name = "Tirizene"
	description = "A nonlethal poison that causes extreme fatigue and weakness in its victim."
	color = "#6E2828"
	data = 15
	toxpwr = 0
	value = REAGENT_VALUE_UNCOMMON

/datum/reagent/toxin/staminatoxin/on_mob_life(mob/living/carbon/M)
	M.adjustStaminaLoss(REM * data, 0)
	data = max(data - 1, 5)
	..()
	. = 1

/datum/reagent/toxin/polonium
	name = "Polonium"
	description = "An extremely radioactive material in liquid form. Ingestion results in fatal irradiation."
	reagent_state = LIQUID
	color = "#787878"
	metabolization_rate = 0.125 * REAGENTS_METABOLISM
	toxpwr = 0
	value = REAGENT_VALUE_VERY_RARE
	synth_metabolism_use_human = TRUE

/datum/reagent/toxin/polonium/on_mob_life(mob/living/carbon/M)
	M.radiation += 4
	..()

/datum/reagent/toxin/histamine
	name = "Histamine"
	description = "Histamine's effects become more dangerous depending on the dosage amount. They range from mildly annoying to incredibly lethal."
	reagent_state = LIQUID
	color = "#FA6464"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	overdose_threshold = 30
	toxpwr = 0
	value = REAGENT_VALUE_UNCOMMON

/datum/reagent/toxin/histamine/on_mob_life(mob/living/carbon/M)
	if(prob(50))
		switch(pick(1, 2, 3, 4))
			if(1)
				to_chat(M, span_danger("You can barely see!"))
				M.blur_eyes(3)
			if(2)
				M.emote("cough")
			if(3)
				M.emote("sneeze")
			if(4)
				if(prob(75))
					to_chat(M, "You scratch at an itch.")
					M.adjustBruteLoss(2*REM, 0)
					. = 1
	..()

/datum/reagent/toxin/histamine/overdose_process(mob/living/M)
	M.adjustOxyLoss(2*REM, 0)
	M.adjustBruteLoss(2*REM, 0)
	M.adjustToxLoss(2*REM, 0)
	..()
	. = 1

/datum/reagent/toxin/formaldehyde
	name = "Formaldehyde"
	description = "Formaldehyde, on its own, is a fairly weak toxin. It contains trace amounts of Histamine, very rarely making it decay into Histamine."
	reagent_state = LIQUID
	color = "#B4004B"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	toxpwr = 1

/datum/reagent/toxin/formaldehyde/on_mob_life(mob/living/carbon/M)
	if(prob(5))
		holder.add_reagent(/datum/reagent/toxin/histamine, pick(5,15))
		holder.remove_reagent(type, 1.2)
	else
		return ..()

/datum/reagent/toxin/venom
	name = "Venom"
	description = "An exotic poison extracted from highly toxic fauna. Causes scaling amounts of toxin damage and bruising depending and dosage. Often decays into Histamine."
	reagent_state = LIQUID
	color = "#F0FFF0"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	toxpwr = 0
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/venom/on_mob_life(mob/living/carbon/M)
	toxpwr = 0.2*volume
	M.adjustBruteLoss((0.3*volume)*REM, 0)
	. = 1
	if(prob(15))
		M.reagents.add_reagent(/datum/reagent/toxin/histamine, pick(5,10))
		M.reagents.remove_reagent(type, 1.1)
	else
		..()

/datum/reagent/toxin/venom/on_mob_life_synth(mob/living/carbon/M)
	toxpwr = 0.2*volume
	M.adjustBruteLoss((0.3*volume)*REM, 0)
	. = 1
	..()

/datum/reagent/toxin/fentanyl
	name = "Fentanyl"
	description = "Fentanyl will inhibit brain function and cause toxin damage before eventually knocking out its victim."
	reagent_state = LIQUID
	color = "#64916E"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	toxpwr = 0

/datum/reagent/toxin/fentanyl/on_mob_life(mob/living/carbon/M)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN, 3*REM, 150)
	if(M.toxloss <= 60)
		M.adjustToxLoss(1*REM, 0)
	if(current_cycle >= 18)
		M.Sleeping(40, 0)
	..()
	return TRUE

/datum/reagent/toxin/cyanide
	name = "Cyanide"
	description = "An infamous poison known for its use in assassination. Causes small amounts of toxin damage with a small chance of oxygen damage or a stun."
	reagent_state = LIQUID
	color = "#00B4FF"
	metabolization_rate = 0.125 * REAGENTS_METABOLISM
	toxpwr = 1.25
	value = REAGENT_VALUE_UNCOMMON

/datum/reagent/toxin/cyanide/on_mob_life(mob/living/carbon/M)
	if(prob(5))
		M.losebreath += 1
	if(prob(8))
		to_chat(M, "You feel horrendously weak!")
		M.Stun(40, 0)
		M.adjustToxLoss(2*REM, 0)
	return ..()

/datum/reagent/toxin/bad_food
	name = "Bad Food"
	description = "The result of some abomination of cookery, food so bad it's toxic."
	reagent_state = LIQUID
	color = "#d6d6d8"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	toxpwr = 0.5
	taste_description = "bad cooking"
	value = REAGENT_VALUE_NONE

/datum/reagent/toxin/itching_powder
	name = "Itching Powder"
	description = "A powder that induces itching upon contact with the skin. Causes the victim to scratch at their itches and has a very low chance to decay into Histamine."
	reagent_state = LIQUID
	color = "#C8C8C8"
	metabolization_rate = 0.4 * REAGENTS_METABOLISM
	toxpwr = 0
	synth_metabolism_use_human = TRUE


/datum/reagent/toxin/itching_powder/reaction_mob(mob/living/M, method=TOUCH, reac_volume)
	if((method == TOUCH || method == VAPOR) && M.reagents)
		M.reagents.add_reagent(/datum/reagent/toxin/itching_powder, reac_volume)

/datum/reagent/toxin/itching_powder/on_mob_life(mob/living/carbon/M)
	if(prob(15))
		to_chat(M, "You scratch at your head.")
		M.adjustBruteLoss(0.2*REM, 0)
		. = 1
	if(prob(15))
		to_chat(M, "You scratch at your leg.")
		M.adjustBruteLoss(0.2*REM, 0)
		. = 1
	if(prob(15))
		to_chat(M, "You scratch at your arm.")
		M.adjustBruteLoss(0.2*REM, 0)
		. = 1
	if(prob(3))
		M.reagents.add_reagent(/datum/reagent/toxin/histamine,rand(1,3))
		M.reagents.remove_reagent(type,1.2)
		return
	..()

/datum/reagent/toxin/initropidril
	name = "Initropidril"
	description = "A powerful poison with insidious effects. It can cause stuns, lethal breathing failure, and cardiac arrest."
	reagent_state = LIQUID
	color = "#7F10C0"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	toxpwr = 2.5
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/initropidril/on_mob_life(mob/living/carbon/C)
	if(prob(25))
		var/picked_option = rand(1,3)
		switch(picked_option)
			if(1)
				C.DefaultCombatKnockdown(60, 0)
				. = TRUE
			if(2)
				C.losebreath += 10
				C.adjustOxyLoss(rand(5,25), 0)
				. = TRUE
			if(3)
				if(!C.undergoing_cardiac_arrest() && C.can_heartattack())
					C.set_heartattack(TRUE)
					if(C.stat == CONSCIOUS)
						C.visible_message(span_userdanger("[C] clutches at [C.p_their()] chest as if [C.p_their()] heart stopped!"))
				else
					C.losebreath += 10
					C.adjustOxyLoss(rand(5,25), 0)
					. = TRUE
	return ..() || .

/datum/reagent/toxin/pancuronium
	name = "Pancuronium"
	description = "An undetectable toxin that swiftly incapacitates its victim. May also cause breathing failure."
	reagent_state = LIQUID
	color = "#195096"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	toxpwr = 0
	taste_mult = 0 // undetectable, I guess?
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/pancuronium/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 10)
		M.Stun(40, 0)
		. = TRUE
	if(prob(20))
		M.losebreath += 4
	..()

/datum/reagent/toxin/sodium_thiopental
	name = "Sodium Thiopental"
	description = "Sodium Thiopental induces heavy weakness in its target as well as unconsciousness."
	reagent_state = LIQUID
	color = "#6496FA"
	metabolization_rate = 0.75 * REAGENTS_METABOLISM
	toxpwr = 0
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/sodium_thiopental/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 10)
		M.Sleeping(40, 0)
	M.adjustStaminaLoss(10*REM, 0)
	..()
	return TRUE

/datum/reagent/toxin/sulfonal
	name = "Sulfonal"
	description = "A stealthy poison that deals minor toxin damage and eventually puts the target to sleep."
	reagent_state = LIQUID
	color = "#7DC3A0"
	metabolization_rate = 0.125 * REAGENTS_METABOLISM
	toxpwr = 0.5

/datum/reagent/toxin/sulfonal/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 22)
		M.Sleeping(40, 0)
	return ..()

/datum/reagent/toxin/amanitin
	name = "Amanitin"
	description = "A very powerful delayed toxin. Upon full metabolization, a massive amount of toxin damage will be dealt depending on how long it has been in the victim's bloodstream."
	reagent_state = LIQUID
	color = "#FFFFFF"
	toxpwr = 0
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	value = REAGENT_VALUE_RARE

/datum/reagent/toxin/amanitin/on_mob_end_metabolize(mob/living/M)
	var/toxdamage = current_cycle*3*REM
	M.log_message("has taken [toxdamage] toxin damage from amanitin toxin", LOG_ATTACK)
	M.adjustToxLoss(toxdamage)
	..()

/datum/reagent/toxin/lipolicide
	name = "Lipolicide"
	description = "A powerful toxin that will destroy fat cells, massively reducing body weight in a short time. Deadly to those without nutriment in their body."
	taste_description = "mothballs"
	reagent_state = LIQUID
	color = "#F0FFF0"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	toxpwr = 0

/datum/reagent/toxin/lipolicide/on_mob_life(mob/living/carbon/M)
	if(M.nutrition <= NUTRITION_LEVEL_STARVING)
		M.adjustToxLoss(1*REM, 0)
	M.adjust_nutrition(-3) // making the chef more valuable, one meme trap at a time
	M.overeatduration = 0
	return ..()

/datum/reagent/toxin/coniine
	name = "Coniine"
	description = "Coniine metabolizes extremely slowly, but deals high amounts of toxin damage and stops breathing."
	reagent_state = LIQUID
	color = "#7DC3A0"
	metabolization_rate = 0.06 * REAGENTS_METABOLISM
	toxpwr = 1.75
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/coniine/on_mob_life(mob/living/carbon/M)
	M.losebreath += 5
	return ..()

/datum/reagent/toxin/spewium
	name = "Spewium"
	description = "A powerful emetic, causes uncontrollable vomiting.  May result in vomiting organs at high doses."
	reagent_state = LIQUID
	color = "#2f6617" //A sickly green color
	metabolization_rate = REAGENTS_METABOLISM
	overdose_threshold = 29
	toxpwr = 0
	taste_description = "vomit"
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/spewium/on_mob_life(mob/living/carbon/C)
	.=..()
	if(current_cycle >=11 && prob(min(50,current_cycle)))
		C.vomit(10, prob(10), prob(50), rand(0,4), TRUE, prob(30))
		for(var/datum/reagent/toxin/R in C.reagents.reagent_list)
			if(R != src)
				C.reagents.remove_reagent(R.type,1)

/datum/reagent/toxin/spewium/overdose_process(mob/living/carbon/C)
	. = ..()
	if(current_cycle >=33 && prob(15))
		C.spew_organ()
		C.vomit(0, TRUE, TRUE, 4)
		to_chat(C, span_userdanger("You feel something lumpy come up as you vomit."))

/datum/reagent/toxin/curare
	name = "Curare"
	description = "Causes slight toxin damage followed by chain-stunning and oxygen damage."
	reagent_state = LIQUID
	color = "#191919"
	metabolization_rate = 0.125 * REAGENTS_METABOLISM
	toxpwr = 1
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/curare/on_mob_life(mob/living/carbon/M)
	if(current_cycle >= 11)
		M.DefaultCombatKnockdown(60, 0)
	M.adjustOxyLoss(1*REM, 0)
	. = 1
	..()

/datum/reagent/toxin/heparin //Based on a real-life anticoagulant. I'm not a doctor, so this won't be realistic.
	name = "Heparin"
	description = "A powerful anticoagulant. All open cut wounds on the victim will open up and bleed much faster"
	reagent_state = LIQUID
	color = "#C8C8C8" //RGB: 200, 200, 200
	metabolization_rate = 0.2 * REAGENTS_METABOLISM
	toxpwr = 0
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/rotatium //Rotatium. Fucks up your rotation and is hilarious
	name = "Rotatium"
	description = "A constantly swirling, oddly colourful fluid. Causes the consumer's sense of direction and hand-eye coordination to become wild."
	reagent_state = LIQUID
	color = "#AC88CA" //RGB: 172, 136, 202
	metabolization_rate = 0.6 * REAGENTS_METABOLISM
	toxpwr = 0.5
	taste_description = "spinning"
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/rotatium/on_mob_life(mob/living/carbon/M)
	if(M.hud_used)
		if(current_cycle >= 20 && current_cycle%20 == 0)
			var/list/screens = list(M.hud_used.plane_masters["[FLOOR_PLANE]"], M.hud_used.plane_masters["[GAME_PLANE]"], M.hud_used.plane_masters["[OBJITEM_PLANE]"],
									M.hud_used.plane_masters["[LIGHTING_PLANE]"], M.hud_used.plane_masters["[WALL_PLANE]"],
									M.hud_used.plane_masters["[ABOVE_WALL_PLANE]"])
			var/rotation = min(round(current_cycle/20), 89) // By this point the player is probably puking and quitting anyway
			for(var/whole_screen in screens)
				animate(whole_screen, transform = matrix(rotation, MATRIX_ROTATE), time = 5, easing = QUAD_EASING, loop = -1)
				animate(transform = matrix(-rotation, MATRIX_ROTATE), time = 5, easing = QUAD_EASING)
	return ..()

/datum/reagent/toxin/rotatium/on_mob_end_metabolize(mob/living/M)
	if(M && M.hud_used)
		var/list/screens = list(M.hud_used.plane_masters["[FLOOR_PLANE]"], M.hud_used.plane_masters["[GAME_PLANE]"], M.hud_used.plane_masters["[OBJITEM_PLANE]"], M.hud_used.plane_masters["[LIGHTING_PLANE]"])
		for(var/whole_screen in screens)
			animate(whole_screen, transform = matrix(), time = 5, easing = QUAD_EASING)
	..()

/datum/reagent/toxin/skewium
	name = "Skewium"
	description = "A strange, dull coloured liquid that appears to warp back and forth inside its container. Causes any consumer to experience a visual phenomena similar to said warping."
	reagent_state = LIQUID
	color = "#ADBDCD"
	metabolization_rate = 0.8 * REAGENTS_METABOLISM
	toxpwr = 0.25
	taste_description = "skewing"
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/skewium/on_mob_life(mob/living/carbon/M)
	/*
	if(M.hud_used)
		if(current_cycle >= 5 && current_cycle % 3 == 0)
			var/list/screens = list(M.hud_used.plane_masters["[FLOOR_PLANE]"], M.hud_used.plane_masters["[GAME_PLANE]"],
									M.hud_used.plane_masters["[LIGHTING_PLANE]"], M.hud_used.plane_masters["[WALL_PLANE]"],
									M.hud_used.plane_masters["[ABOVE_WALL_PLANE]"])			var/matrix/skew = matrix()
			var/intensity = 8
			skew.set_skew(rand(-intensity,intensity), rand(-intensity,intensity))
			var/matrix/newmatrix = skew

			if(prob(33)) // 1/3rd of the time, let's make it stack with the previous matrix! Mwhahahaha!
				for(var/whole_screen in screens)
					var/obj/screen/plane_master/PM = whole_screen
					newmatrix = skew * PM.transform

			for(var/whole_screen in screens)
				animate(whole_screen, transform = newmatrix, time = 5, easing = QUAD_EASING, loop = -1)
				animate(transform = -newmatrix, time = 5, easing = QUAD_EASING)
	*/
	return ..()

/datum/reagent/toxin/skewium/on_mob_end_metabolize(mob/living/M)
	if(M && M.hud_used)
		var/list/screens = list(M.hud_used.plane_masters["[FLOOR_PLANE]"], M.hud_used.plane_masters["[GAME_PLANE]"], M.hud_used.plane_masters["[OBJITEM_PLANE]"], M.hud_used.plane_masters["[LIGHTING_PLANE]"])
		for(var/whole_screen in screens)
			animate(whole_screen, transform = matrix(), time = 5, easing = QUAD_EASING)
	..()


/datum/reagent/toxin/anacea
	name = "Anacea"
	description = "A toxin that quickly purges medicines and metabolizes very slowly."
	reagent_state = LIQUID
	color = "#3C5133"
	metabolization_rate = 0.08 * REAGENTS_METABOLISM
	toxpwr = 0.15
	value = REAGENT_VALUE_VERY_RARE

/datum/reagent/toxin/anacea/on_mob_life(mob/living/carbon/M)
	var/remove_amt = 5
	if(holder.has_reagent(/datum/reagent/medicine/calomel) || holder.has_reagent(/datum/reagent/medicine/pen_acid) || holder.has_reagent(/datum/reagent/medicine/pen_acid/pen_jelly))
		remove_amt = 0.5
	for(var/datum/reagent/medicine/R in M.reagents.reagent_list)
		M.reagents.remove_reagent(R.type,remove_amt)
	return ..()

//ACID


/datum/reagent/toxin/acid
	name = "Sulphuric acid"
	description = "A strong mineral acid with the molecular formula H2SO4."
	color = "#00FF32"
	toxpwr = 1
	var/acidpwr = 10 //the amount of protection removed from the armour
	taste_description = "acid"
	self_consuming = TRUE
	pH = 2.75
	value = REAGENT_VALUE_NONE

// Sure, go ahead and pour acid on your precious plants. What's the worst that could happen?
/datum/reagent/toxin/acid/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	. = ..()
	if(chems.has_reagent(type, 1))
		mytray.adjustHealth(-round(chems.get_reagent_amount(type) * 1))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 1.5))
		mytray.adjustWeeds(-rand(1,2))

/datum/reagent/toxin/acid/reaction_mob(mob/living/carbon/C, method=TOUCH, reac_volume)
	if(!istype(C))
		return
	reac_volume = round(reac_volume,0.1)
	if(method == INGEST)
		C.adjustBruteLoss(min(6*toxpwr, reac_volume * toxpwr))
		return
	if(method == INJECT)
		C.adjustBruteLoss(1.5 * min(6*toxpwr, reac_volume * toxpwr))
		return
	C.acid_act(acidpwr, reac_volume)

/datum/reagent/toxin/acid/reaction_synth(mob/living/carbon/C, method=TOUCH, reac_volume)
	if(!istype(C))
		return
	reac_volume = round(reac_volume,0.1)
	if(method == INGEST)
		C.adjustBruteLoss(min(8*toxpwr, reac_volume * toxpwr))
		return
	if(method == INJECT)
		C.adjustBruteLoss(1.5 * min(8*toxpwr, reac_volume * toxpwr))
		return
	C.acid_act(acidpwr, reac_volume)

/datum/reagent/toxin/acid/reaction_obj(obj/O, reac_volume)
	if(ismob(O.loc)) //handled in human acid_act()
		return
	reac_volume = round(reac_volume,0.1)
	O.acid_act(acidpwr, reac_volume)

/datum/reagent/toxin/acid/reaction_turf(turf/T, reac_volume)
	if (!istype(T))
		return
	reac_volume = round(reac_volume,0.1)
	T.acid_act(acidpwr, reac_volume)

/datum/reagent/toxin/acid/fluacid
	name = "Fluorosulfuric acid"
	description = "Fluorosulfuric acid is an extremely corrosive chemical substance."
	color = "#5050FF"
	toxpwr = 2
	acidpwr = 42.0
	value = REAGENT_VALUE_COMMON

/datum/reagent/toxin/acid/fantiacid
	name = "Fluoroantimonic acid"
	description = "Over 1 billion times more powerful than sulfuric acid it ranks as one of the most caustic substances on Earth."
	color = "#11FF00"
	toxpwr = 2
	acidpwr = 150.0
	value = REAGENT_VALUE_COMMON

// ACID II: UNHEEDED WARNINGS
/datum/reagent/toxin/acid/fluacid/on_hydroponics_apply(obj/item/seeds/myseed, datum/reagents/chems, obj/machinery/hydroponics/mytray, mob/user)
	. = ..()
	if(chems.has_reagent(type, 1))
		mytray.adjustHealth(-round(chems.get_reagent_amount(type) * 2))
		mytray.adjustToxic(round(chems.get_reagent_amount(type) * 3))
		mytray.adjustWeeds(-rand(1,4))

/datum/reagent/toxin/acid/fluacid/on_mob_life(mob/living/carbon/M)
	M.adjustFireLoss(current_cycle/10, 0)
	. = 1
	..()

/datum/reagent/toxin/acid/fantiacid/on_mob_life(mob/living/carbon/M)
	M.adjustFireLoss(current_cycle/10, 0)
	. = 8
	..()

/datum/reagent/toxin/acid/fluacid/on_mob_life_synth(mob/living/carbon/M)
	M.adjustBruteLoss(current_cycle*0.1, 0)
	M.adjustFireLoss(current_cycle*0.1, 0)
	. = 1
	..()

/datum/reagent/toxin/acid/fantiacid/on_mob_life_synth(mob/living/carbon/M)
	M.adjustBruteLoss(current_cycle*0.1, 0)
	M.adjustFireLoss(current_cycle*0.1, 0)
	. = 8
	..()

/datum/reagent/toxin/delayed
	name = "Toxin Microcapsules"
	description = "Causes heavy toxin damage after a brief time of inactivity."
	reagent_state = LIQUID
	metabolization_rate = 0 //stays in the system until active.
	var/actual_metaboliztion_rate = REAGENTS_METABOLISM
	toxpwr = 0
	value = REAGENT_VALUE_VERY_RARE
	var/actual_toxpwr = 5
	var/delay = 30

/datum/reagent/toxin/delayed/on_mob_life(mob/living/carbon/M)
	if(current_cycle > delay)
		holder.remove_reagent(type, actual_metaboliztion_rate * M.metabolism_efficiency)
		M.adjustToxLoss(actual_toxpwr*REM, 0)
		if(prob(10))
			M.DefaultCombatKnockdown(20, 0)
		. = 1
	..()

/datum/reagent/toxin/bonehurtingjuice //oof ouch
	name = "Bone Hurting Juice"
	description = "A strange substance that looks a lot like water. Drinking it is oddly tempting. Oof ouch."
	color = "#AAAAAA" //RGBA: 170, 170, 170
	alpha = 77
	toxpwr = 0
	taste_description = "bone hurting"
	overdose_threshold = 20
	value = REAGENT_VALUE_VERY_RARE //because it's very funny.
	synth_metabolism_use_human = TRUE

/datum/reagent/toxin/bonehurtingjuice/on_mob_add(mob/living/carbon/M)
	M.say("oof ouch my bones", forced = /datum/reagent/toxin/bonehurtingjuice)

/datum/reagent/toxin/bonehurtingjuice/on_mob_life(mob/living/carbon/M)
	M.adjustStaminaLoss(7.5, 0)
	if(HAS_TRAIT(M, TRAIT_CALCIUM_HEALER))
		M.adjustBruteLoss(3.5, 0)
	if(prob(12))
		switch(rand(1, 3))
			if(1)
				var/list/possible_says = list("oof.", "ouch!", "my bones.", "oof ouch.", "oof ouch my bones.")
				M.say(pick(possible_says), forced = /datum/reagent/toxin/bonehurtingjuice)
			if(2)
				var/list/possible_mes = list("oofs softly.", "looks like their bones hurt.", "grimaces, as though their bones hurt.")
				M.say("*custom " + pick(possible_mes), forced = /datum/reagent/toxin/bonehurtingjuice)
			if(3)
				to_chat(M, span_warning("Your bones hurt!"))
	return ..()

/datum/reagent/toxin/bonehurtingjuice/overdose_process(mob/living/carbon/M)
	if(prob(6) && iscarbon(M)) //big oof
		var/selected_part
		switch(rand(1, 4)) //God help you if the same limb gets picked twice quickly.
			if(1)
				selected_part = BODY_ZONE_L_ARM
			if(2)
				selected_part = BODY_ZONE_R_ARM
			if(3)
				selected_part = BODY_ZONE_L_LEG
			if(4)
				selected_part = BODY_ZONE_R_LEG
		var/obj/item/bodypart/bp = M.get_bodypart(selected_part)
		if(M.dna.species.type != /datum/species/skeleton || M.dna.species.type != /datum/species/plasmaman || M.dna.species.type != /datum/species/golem/bone) //We're so sorry skeletons, you're so misunderstood
			if(bp)
				bp.receive_damage(0, 0, 200)
				playsound(M, get_sfx("desceration"), 50, TRUE, -1)
				M.visible_message(span_warning("[M]'s bones hurt too much!!"), span_danger("Your bones hurt too much!!"))
				M.say("OOF!!", forced = /datum/reagent/toxin/bonehurtingjuice)
			else //SUCH A LUST FOR REVENGE!!!
				to_chat(M, span_warning("A phantom limb hurts!"))
				M.say("Why are we still here, just to suffer?", forced = /datum/reagent/toxin/bonehurtingjuice)
		else //you just want to socialize
			if(bp)
				playsound(M, get_sfx("desceration"), 50, TRUE, -1)
				M.visible_message(span_warning("[M] rattles loudly and flails around!!"), span_danger("Your bones hurt so much that your missing muscles spasm!!"))
				M.say("OOF!!", forced=/datum/reagent/toxin/bonehurtingjuice)
				bp.receive_damage(200, 0, 0) //But I don't think we should
			else
				to_chat(M, span_warning("Your missing arm aches from wherever you left it."))
				M.emote("sigh")
	return ..()

/datum/reagent/toxin/brainhurtingjuice //oof ouch
	name = "Brain Hurting Juice"
	color = "#AAAAAA" //RGBA: 170, 170, 170
	alpha = 77
	toxpwr = 0
	taste_description = "brain hurting"
	metabolization_rate = 5
	value = REAGENT_VALUE_EXCEPTIONAL

/datum/reagent/toxin/brainhurtingjuice/on_mob_life(mob/living/carbon/M)
	if(prob(50))
		M.gain_trauma_type(BRAIN_TRAUMA_MILD)
	else if(prob(50))
		M.gain_trauma_type(BRAIN_TRAUMA_SEVERE)
	else
		M.gain_trauma_type(BRAIN_TRAUMA_SPECIAL)
	..()

/datum/reagent/toxin/bungotoxin
	name = "Bungotoxin"
	description = "A horrible cardiotoxin that protects the humble bungo pit."
	//silent_toxin = TRUE //I guess we don't really have the entire tox system ported.
	color = "#EBFF8E"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	toxpwr = 0
	taste_description = "tannin"
	value = REAGENT_VALUE_RARE

/datum/reagent/toxin/bungotoxin/on_mob_life(mob/living/carbon/M)
	M.adjustOrganLoss(ORGAN_SLOT_HEART, 3)
	M.confused = M.dizziness //add a tertiary effect here if this is isn't an effective poison.
	if(current_cycle >= 12 && prob(8))
		var/tox_message = pick("You feel your heart spasm in your chest.", "You feel faint.","You feel you need to catch your breath.","You feel a prickle of pain in your chest.")
		to_chat(M, span_notice("[tox_message]"))
	. = 1
	..()

/datum/reagent/toxin/leadacetate
	name = "Lead Acetate"
	description = "Used hundreds of years ago as a sweetener, before it was realized that it's incredibly poisonous."
	reagent_state = SOLID
	color = "#2b2b2b" // rgb: 127, 132, 0
	toxpwr = 0.5
	taste_mult = 1.3
	taste_description = "sugary sweetness"

/datum/reagent/toxin/leadacetate/on_mob_life(mob/living/carbon/M)
	M.adjustOrganLoss(ORGAN_SLOT_EARS,1)
	M.adjustOrganLoss(ORGAN_SLOT_BRAIN,1)
	if(prob(1))
		to_chat(M, span_notice("Ah, what was that? You thought you heard something..."))
		M.confused += 5
	return ..()

/datum/reagent/toxin/metabtoxin
	name = "metabolism-inhibiting toxin"
	description = "A mix of hepatoxic and nephrotoxic chemicals that cause the liver and kidneys to process medicine less effectively."
	reagent_state = SOLID
	color = "#30ff21" // rgb: 0 132 0
	toxpwr = 0.1
	metabolization_rate = 0.07 * REAGENTS_METABOLISM
	taste_mult = 1.3
	taste_description = "bitter sludge"
	var/metab_inibition = 0.75

/datum/reagent/toxin/metabtoxin/on_mob_metabolize(mob/living/L)
	..()
	var/obj/item/organ/liver/liber = L.getorganslot(ORGAN_SLOT_LIVER)
	if(liber)
		liber.applyOrganDamage(5)
		liber.filterToxins = FALSE
	L.metabolism_efficiency -= metab_inibition

/datum/reagent/toxin/metabtoxin/on_mob_end_metabolize(mob/living/L)
	..()
	var/obj/item/organ/liver/liber = L.getorganslot(ORGAN_SLOT_LIVER)
	if(liber)
		liber.applyOrganDamage(5)
		if(initial(liber.filterToxins))
			liber.filterToxins = TRUE
	L.metabolism_efficiency += metab_inibition


