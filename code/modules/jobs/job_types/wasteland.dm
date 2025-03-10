/datum/job/wasteland
	department_flag = WASTELAND

/*
Raider
*/

/datum/job/wasteland/f13raider
	title = "Outlaw"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 16
	spawn_positions = 16
	description = "You are an Outlaw - the choice of why is up to you. You are responsible for making the wasteland unsafe and today is another day to antagonize it. You may be varied in your approaches, but you must have motives that are realistic for your job."
	supervisors = "your conscious if you have one"
	selection_color = "#df80af"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13raider

	access = list()
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/outlaw = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/bounty_hunter = list(
			/datum/job/wasteland/f13raider,
		),
	)
	loadout_options = list(
//	/datum/outfit/loadout/raider_sheriff,
	/datum/outfit/loadout/raider_sadist,
//	/datum/outfit/loadout/raider_mobster,
	/datum/outfit/loadout/raider_tribal,
	/datum/outfit/loadout/raider_supafly,
	/datum/outfit/loadout/raider_yankee,
	/datum/outfit/loadout/raider_blast,
	/datum/outfit/loadout/raider_painspike,
	/datum/outfit/loadout/raider_badlands,
	// /datum/outfit/loadout/raider_smith,
	/datum/outfit/loadout/raider_vault,
	/datum/outfit/loadout/raider_ncr,
	// /datum/outfit/loadout/raider_legion,
	/datum/outfit/loadout/raider_bos,
	/datum/outfit/loadout/quack_doctor
	)


/datum/outfit/job/wasteland/f13raider
	name = "Outlaw"
	jobtype = /datum/job/wasteland/f13raider
	id = null
	ears = null
	belt = /obj/item/kit_spawner/raider
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	r_pocket = /obj/item/flashlight/flare
	box = /obj/item/storage/survivalkit/outlaw
	box_two = /obj/item/storage/survivalkit/medical
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/melee/onehanded/club = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
	//	/obj/item/storage/bag/money/small/raider = 1,
		/obj/item/radio = 1,
		)

/datum/outfit/job/wasteland/f13raider/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni)
	suit = pick(
		/obj/item/clothing/suit/armor/light/raider/supafly,\
		/obj/item/clothing/suit/armor/medium/raider/yankee, \
		/obj/item/clothing/suit/armor/light/raider/sadist, \
		/obj/item/clothing/suit/armor/medium/raider/blastmaster, \
		/obj/item/clothing/suit/armor/medium/raider/badlands, \
		/obj/item/clothing/suit/armor/light/raider/painspike)
	if(prob(10))
		mask = pick(
			/obj/item/clothing/mask/bandana/red,\
			/obj/item/clothing/mask/bandana/blue,\
			/obj/item/clothing/mask/bandana/green,\
			/obj/item/clothing/mask/bandana/gold,\
			/obj/item/clothing/mask/bandana/black,\
			/obj/item/clothing/mask/bandana/skull)
	if(prob(50))
		neck = pick(
			/obj/item/clothing/neck/mantle/peltfur,\
			/obj/item/clothing/neck/mantle/peltmountain,\
			/obj/item/clothing/neck/mantle/poncho,\
			/obj/item/clothing/neck/mantle/ragged,\
			/obj/item/clothing/neck/mantle/brown,\
			/obj/item/clothing/neck/mantle/gecko,\
			/obj/item/clothing/neck/garlic_necklace)
	head = pick(
		/obj/item/clothing/head/sombrero,\
		/obj/item/clothing/head/helmet/f13/raider,\
		/obj/item/clothing/head/helmet/f13/raider/eyebot,\
		/obj/item/clothing/head/helmet/f13/raider/arclight,\
		/obj/item/clothing/head/helmet/f13/raider/blastmaster,\
		/obj/item/clothing/head/helmet/f13/raider/yankee,\
		/obj/item/clothing/head/helmet/f13/raider/psychotic,\
		/obj/item/clothing/head/helmet/f13/fiend,\
		/obj/item/clothing/head/helmet/f13/hoodedmask,\
			/obj/item/clothing/head/helmet/f13/motorcycle,\
			/obj/item/clothing/head/helmet/f13/wastewarhat,\
			/obj/item/clothing/head/helmet/f13/fiend,\
			/obj/item/clothing/head/f13/bandit,\
			/obj/item/clothing/head/f13/ranger_hat/banded,\
			/obj/item/clothing/head/helmet/rus_ushanka,\
			/obj/item/clothing/head/helmet/skull,\
			/obj/item/clothing/head/collectable/petehat/gang,\
			/obj/item/clothing/head/hunter,\
			/obj/item/clothing/head/rice_hat,\
			/obj/item/clothing/head/papersack/smiley,\
			/obj/item/clothing/head/f13/pot,\
			/obj/item/clothing/head/cone,\
			/obj/item/clothing/head/kabuto,\
			/obj/item/clothing/head/cowboyhat/sec,\
			/obj/item/clothing/head/bomb_hood,\
			/obj/item/clothing/head/cardborg,\
			/obj/item/clothing/head/assu_helmet,\
			/obj/item/clothing/head/chefhat,\
			/obj/item/clothing/head/beret/headband,\
			/obj/item/clothing/head/fedora,\
			/obj/item/clothing/head/bowler,\
		)
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads)

//	suit_store = pick(
//		/obj/item/gun/ballistic/revolver/detective,
//		/obj/item/gun/ballistic/automatic/pistol/ninemil,
//		/obj/item/gun/ballistic/automatic/pistol/m1911,
//		/obj/item/gun/ballistic/automatic/pistol/type17,
//		)

/*
/datum/outfit/job/wasteland/f13raider/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LONGPORKLOVER, src)
*/

	H.social_faction = FACTION_RAIDERS
	add_verb(H, /mob/living/proc/creategang)

/datum/outfit/loadout/raider_sadist
	name = "Sadist"
	suit = /obj/item/clothing/suit/armor/light/raider/sadist
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola=5,
		/obj/item/clothing/mask/gas/explorer/folded=1,
		/obj/item/storage/belt = 1,
		/obj/item/restraints/legcuffs/beartrap = 2,
		/obj/item/reverse_bear_trap = 1,
		/obj/item/melee/unarmed/lacerator = 1,
		)

/datum/outfit/loadout/raider_supafly
	name = "Supa-fly"
	suit = /obj/item/clothing/suit/armor/light/raider/supafly
	head = /obj/item/clothing/head/helmet/f13/raider/supafly
	backpack_contents = list(
		///obj/item/gun/ballistic/automatic/varmint = 1,
		///obj/item/ammo_box/magazine/m556/rifle/assault = 1,
		/obj/item/gun/ballistic/revolver/hobo/knucklegun = 1,
		/obj/item/ammo_box/c45rev = 2,
		/obj/item/gun_upgrade/scope/watchman = 1,
		/obj/item/reagent_containers/food/drinks/bottle/f13nukacola/radioactive = 1,
		/obj/item/grenade/smokebomb = 2,
		)

/datum/outfit/loadout/raider_yankee
	name = "Yankee"
	suit = /obj/item/clothing/suit/armor/medium/raider/yankee
	head = /obj/item/clothing/head/helmet/f13/raider/yankee
	backpack_contents = list(
		/obj/item/shishkebabpack = 1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis=1,
		/obj/item/megaphone=1,
		/obj/item/storage/pill_bottle/chem_tin/buffout = 1)

/datum/outfit/loadout/raider_blast
	name = "Blastmaster"
	suit = /obj/item/clothing/suit/armor/medium/raider/blastmaster
	head = /obj/item/clothing/head/helmet/f13/raider/blastmaster
	backpack_contents = list(
		/obj/item/kitchen/knife/butcher = 1,
		/obj/item/grenade/homemade/firebomb = 4,
		/obj/item/bottlecap_mine = 1,
		/obj/item/grenade/homemade/coffeepotbomb = 4,
		/obj/item/book/granter/crafting_recipe/blueprint/trapper = 1,
		/obj/item/book/granter/trait/explosives = 1
		)

/datum/outfit/loadout/raider_badlands
	name = "Fiend"
	suit = /obj/item/clothing/suit/armor/medium/raider/badlands
	head = /obj/item/clothing/head/helmet/f13/fiend
	backpack_contents = list(
		///obj/item/gun/energy/laser/wattzs = 1,
		///obj/item/gun/energy/laser/wattz = 1,
		///obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/reagent_containers/hypospray/medipen/psycho = 3,
		/obj/item/reagent_containers/pill/patch/turbo = 2,
		/obj/item/reagent_containers/hypospray/medipen/medx = 1,
		)

/datum/outfit/loadout/raider_painspike
	name = "Painspike"
	suit = /obj/item/clothing/suit/armor/light/raider/painspike
	head = /obj/item/clothing/head/helmet/f13/raider/psychotic
	backpack_contents = list(
		///obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1,
		///obj/item/ammo_box/shotgun/buck = 1,
		///obj/item/ammo_box/shotgun/bean = 1,
		/obj/item/melee/onehanded/club/fryingpan = 1,
		/obj/item/grenade/chem_grenade/cleaner = 1,
		)

/datum/outfit/loadout/quack_doctor
	name = "Quack Doctor"
	suit = /obj/item/clothing/suit/toggle/labcoat
	l_hand = /obj/item/storage/backpack/duffelbag/med/surgery
	r_hand = /obj/item/book/granter/trait/midsurgery
	//suit_store = /obj/item/gun/energy/laser/wattzs
	backpack_contents = list(
		///obj/item/stock_parts/cell/ammo/ec = 1,
		/obj/item/reagent_containers/pill/patch/jet = 3,
		/obj/item/storage/firstaid/ancient = 1,
		/obj/item/storage/pill_bottle/aranesp = 1,
		/obj/item/storage/pill_bottle/happy = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/stack/sheet/mineral/silver=2,
		/obj/item/clothing/accessory/pocketprotector/full = 1,
		)

/datum/outfit/loadout/raider_ncr
	name = "Outlaw Ranger"
	suit = /obj/item/clothing/suit/armor/medium/raider/combatduster
	uniform = /obj/item/clothing/under/f13/raider_leather
	id = /obj/item/card/id/rusted
	backpack_contents = list(
		///obj/item/gun/ballistic/automatic/m1carbine = 1,
		///obj/item/ammo_box/magazine/m10mm/adv/simple=2,
		/obj/item/melee/onehanded/knife/bayonet = 1,
		/obj/item/storage/box/ration/ranger_breakfast = 1,
		/obj/item/book/granter/crafting_recipe/blueprint/service = 1)

/*
/datum/outfit/loadout/raider_legion
	name = "Disgraced Legionnaire"
	suit = /obj/item/clothing/suit/armor/exile/legexile
	uniform = /obj/item/clothing/under/f13/exile/legion
	id = /obj/item/card/id/rusted/rustedmedallion
	backpack_contents = list(
		/obj/item/melee/onehanded/machete/gladius = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/gun/ballistic/automatic/smg/greasegun = 1,
		/obj/item/ammo_box/magazine/greasegun = 1,
		/obj/item/book/granter/trait/trekking = 1
		)
*/

/datum/outfit/loadout/raider_bos
	name = "Brotherhood Exile"
	suit = /obj/item/clothing/suit/armor/medium/combat/brotherhood/exile
	id = /obj/item/card/id/rusted/brokenholodog
	backpack_contents = list(
		///obj/item/gun/energy/laser/wattzs = 1,
		///obj/item/stock_parts/cell/ammo/ec = 1,
		/obj/item/book/granter/crafting_recipe/blueprint/aep7 = 1,
		/obj/item/grenade/f13/frag = 2,
		)


/*
/datum/outfit/loadout/raider_smith
	name = "Raider Smith"
	suit = /obj/item/clothing/suit/armor/heavy/metal/raider
	uniform = /obj/item/clothing/under/f13/raider_leather
	head = /obj/item/clothing/head/helmet/f13/raider/arclight
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	backpack_contents = list(
		/obj/item/gun/ballistic/automatic/pistol/m1911/custom = 1,
		/obj/item/ammo_box/magazine/m45 = 1,
		/obj/item/twohanded/steelsaw = 1,
		/obj/item/melee/smith/hammer = 1,
		/obj/item/stack/sheet/mineral/sandstone = 50,
		/obj/item/book/granter/trait/techno = 1,
		/obj/item/book/granter/crafting_recipe/scav_one = 1,
		)
*/

/datum/outfit/loadout/raider_vault
	name = "Vault Renegade"
	suit = /obj/item/clothing/suit/armor/medium/vest/bulletproof/big
	uniform = /obj/item/clothing/under/f13/exile/vault
	id = /obj/item/card/id/selfassign
	gloves = /obj/item/pda
	backpack_contents = list(
		///obj/item/gun/ballistic/revolver/thatgun = 1,
		/obj/item/pda=1,
		)

/datum/outfit/loadout/raider_tribal
	name = "Tribal Outcast"
	uniform = /obj/item/clothing/under/f13/exile/tribal
	suit = /obj/item/clothing/suit/hooded/outcast/tribal
	//suit_store = /obj/item/twohanded/spear/bonespear
	shoes = /obj/item/clothing/shoes/sandal
	belt = /obj/item/storage/backpack/spearquiver
	back = /obj/item/storage/backpack/satchel/explorer
	box = /obj/item/storage/survivalkit/tribal
	box_two = /obj/item/storage/survivalkit/medical/tribal
	backpack_contents = list(
		/obj/item/book/granter/trait/tribaltraditions =1,
		/obj/item/clothing/mask/cigarette/pipe = 1,
		/obj/item/melee/onehanded/knife/bone = 1,
		)

/datum/job/wasteland/f13raider/watcher
	title = "Redwater Watcher"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 10
	spawn_positions = 10
	description = "You are an Redwater Watcher - the choice of why is up to you. You have taken up the responsibility to protect and supervise the town of Redwater to ensure that the slaves do not escape and are productive, as well as to protect the towns assets and make sure it has what it needs to thrive. You are only to leave town briefly to gather resources in order to expand and improve upon the current design. Assist the outbound outlaws who venture out for big gains, and protect them if they come home followed by angry victims. Beware, life is cheap in Redwater."
	supervisors = "The Overboss runs the town, and you are responsible for making sure the town maintains a relative peace and order so that more nasty business can occur. Try to work with other outlaws rather than against them unless there is good reason not to"
	selection_color = "#df80af"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13raider/watcher

	access = list()
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/outlaw = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/bounty_hunter = list(
			/datum/job/wasteland/f13raider,
		),
	)
	loadout_options = list(
	/datum/outfit/loadout/raider_sheriff,
	/datum/outfit/loadout/raider_mobster,
	/datum/outfit/loadout/raider_slavekeeper,
	/datum/outfit/loadout/raider_sawbones,
	/datum/outfit/loadout/unethical_practitioner,
	/datum/outfit/loadout/redwater_maintainer,
	/datum/outfit/loadout/nefarious_conman,
	/datum/outfit/loadout/demonness
	)

/datum/outfit/job/wasteland/f13raider/watcher
	name = "Redwater Watcher"
	jobtype = /datum/job/wasteland/f13raider/watcher
	id = null
	ears = null
	belt = /obj/item/kit_spawner/raider/doctor
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/restraints/handcuffs = 2,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
	//	/obj/item/storage/bag/money/small/raider = 1,
		/obj/item/radio/redwater = 1,
		)

/datum/outfit/job/wasteland/f13raider/watcher/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/bennys,\
		/obj/item/clothing/under/f13/villain,\
		/obj/item/clothing/under/f13/shiny,\
		/obj/item/clothing/under/f13/raiderrags,\
		/obj/item/clothing/under/f13/worn,\
		/obj/item/clothing/under/jabroni,\
		/obj/item/clothing/under/f13/raiderharness,\
		/obj/item/clothing/under/pants/jeanripped,\
		/obj/item/clothing/under/f13/rag,\
		/obj/item/clothing/under/costume/pirate,\
		/obj/item/clothing/under/costume/mummy,\
		/obj/item/clothing/under/costume/scarecrow,\
		/obj/item/clothing/under/f13/sleazeball)
	suit = pick(
		/obj/item/clothing/suit/armor/light/raider/supafly,\
		/obj/item/clothing/suit/armor/medium/raider/yankee, \
		/obj/item/clothing/suit/armor/light/raider/sadist, \
		/obj/item/clothing/suit/armor/medium/raider/blastmaster, \
		/obj/item/clothing/suit/armor/medium/raider/badlands, \
		/obj/item/clothing/suit/armor/light/raider/painspike)
	if(prob(10))
		mask = pick(
			/obj/item/clothing/mask/bandana/red,\
			/obj/item/clothing/mask/bandana/blue,\
			/obj/item/clothing/mask/bandana/green,\
			/obj/item/clothing/mask/bandana/gold,\
			/obj/item/clothing/mask/bandana/black,\
			/obj/item/clothing/mask/bandana/skull)
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/rag,\
			/obj/item/clothing/shoes/sandal,\
			/obj/item/clothing/shoes/f13/raidertreads)
	//suit_store = pick(
	//	/obj/item/gun/ballistic/revolver/detective,
	//	/obj/item/gun/ballistic/automatic/pistol/ninemil,
	//	/obj/item/gun/ballistic/automatic/pistol/m1911,
	//	/obj/item/gun/ballistic/automatic/pistol/type17,
	//	)
	if(prob(75))
		head = pick(/obj/item/clothing/head/helmet/f13/hoodedmask,\
			/obj/item/clothing/head/helmet/f13/motorcycle,\
			/obj/item/clothing/head/helmet/f13/wastewarhat,\
			/obj/item/clothing/head/helmet/f13/fiend,\
			/obj/item/clothing/head/f13/bandit,\
			/obj/item/clothing/head/f13/ranger_hat/banded,\
			/obj/item/clothing/head/helmet/rus_ushanka,\
			/obj/item/clothing/head/helmet/skull,\
			/obj/item/clothing/head/collectable/petehat/gang,\
			/obj/item/clothing/head/hunter,\
			/obj/item/clothing/head/rice_hat,\
			/obj/item/clothing/head/papersack/smiley,\
			/obj/item/clothing/head/f13/pot,\
			/obj/item/clothing/head/cone,\
			/obj/item/clothing/head/kabuto,\
			/obj/item/clothing/head/cowboyhat/sec,\
			/obj/item/clothing/head/bomb_hood,\
			/obj/item/clothing/head/cardborg,\
			/obj/item/clothing/head/assu_helmet,\
			/obj/item/clothing/head/chefhat,\
			/obj/item/clothing/head/beret/headband,\
			/obj/item/clothing/head/fedora,\
			/obj/item/clothing/head/bowler,\
			/obj/item/clothing/head/sombrero,\
			/obj/item/clothing/head/helmet/f13/raider,\
			/obj/item/clothing/head/helmet/f13/raider/eyebot,\
			/obj/item/clothing/head/helmet/f13/raider/arclight,\
			/obj/item/clothing/head/helmet/f13/raider/blastmaster,\
			/obj/item/clothing/head/helmet/f13/raider/yankee,\
			/obj/item/clothing/head/helmet/f13/raider/psychotic,\
			/obj/item/clothing/head/helmet/f13/fiend)
	if(prob(50))
		neck = pick(
			/obj/item/clothing/neck/mantle/peltfur,\
			/obj/item/clothing/neck/mantle/peltmountain,\
			/obj/item/clothing/neck/mantle/poncho,\
			/obj/item/clothing/neck/mantle/ragged,\
			/obj/item/clothing/neck/mantle/brown,\
			/obj/item/clothing/neck/mantle/gecko,\
			/obj/item/clothing/neck/garlic_necklace)

/*
/datum/outfit/job/wasteland/f13raider/watcher/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LONGPORKLOVER, src)
*/

	H.social_faction = FACTION_RAIDERS
	add_verb(H, /mob/living/proc/creategang)


/datum/outfit/loadout/raider_sheriff
	name = "Peacekeeper"
	suit = /obj/item/clothing/suit/armor/light/duster/desperado
	uniform = /obj/item/clothing/under/syndicate/tacticool
	head = /obj/item/clothing/head/f13/town/big
	shoes = /obj/item/clothing/shoes/laceup
	backpack_contents = list(
		///obj/item/gun/ballistic/rifle/hunting/remington = 1,
		///obj/item/ammo_box/a308 = 1,
		///obj/item/ammo_box/a308box = 1,
		/obj/item/gun_upgrade/scope/watchman = 1,
	//	/obj/item/gun/ballistic/revolver/revolver44=2,
		/obj/item/storage/belt/shoulderholster=1,
	//	/obj/item/ammo_box/m44=4,
	//	/obj/item/book/granter/trait/gunslinger = 1,
		/obj/item/card/id/dogtag/sheriff = 1)

/datum/outfit/loadout/raider_mobster
	name = "Strongarm"
	belt = /obj/item/storage/belt/army/assault
	shoes = /obj/item/clothing/shoes/laceup
	uniform = /obj/item/clothing/under/f13/densuit
	suit = /obj/item/clothing/suit/armor/medium/vest
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/fedora
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
	//	/obj/item/gun/ballistic/automatic/smg/greasegun = 1,
		/obj/item/storage/belt/shoulderholster,
		/obj/item/melee/onehanded/knife/switchblade = 1,
	//	/obj/item/ammo_box/magazine/greasegun = 2
		)

/datum/outfit/loadout/raider_slavekeeper
	name = "Slavekeeper"
	belt = /obj/item/storage/belt/bandolier
	shoes = /obj/item/clothing/shoes/jackboots
	uniform = /obj/item/clothing/under/costume/pirate
	suit = /obj/item/clothing/suit/armor/light/duster/rustedcowboy
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/helmet/f13/rustedcowboyhat
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/restraints/legcuffs/bola/tactical = 1,
		/obj/item/restraints/legcuffs/bola = 2,
		/obj/item/melee/onehanded/slavewhip = 1,
		///obj/item/gun/ballistic/shotgun/police = 1,
		///obj/item/ammo_box/shotgun/bean = 2,
		/obj/item/restraints/legcuffs/beartrap = 1,
		/obj/item/restraints/legcuffs = 1,
		/obj/item/storage/belt/shoulderholster = 1,
		)

/datum/outfit/loadout/raider_sawbones
	name = "Sawbones"
	belt = /obj/item/storage/belt/military/alt
	shoes = /obj/item/clothing/shoes/sneakers/noslip
	uniform = /obj/item/clothing/under/f13/lumberjack
	suit = /obj/item/clothing/suit/armor/medium/combat/rusted
	gloves =  /obj/item/clothing/gloves/f13/leather
	head = /obj/item/clothing/head/helmet/f13/motorcycle
	backpack_contents = list(
		/obj/item/twohanded/chainsaw = 1,
		/obj/item/restraints/legcuffs/bola = 2,
		/obj/item/grenade/f13/stinger = 1,
		/obj/item/storage/belt/legholster,
		/obj/item/grenade/smokebomb = 3,
		)

/datum/outfit/loadout/unethical_practitioner
	name = "Unethical Practitioner"
	suit = /obj/item/clothing/suit/hooded/surgical
	uniform = /obj/item/clothing/under/misc/pj/blue
	l_hand = /obj/item/storage/backpack/duffelbag/med/surgery
	r_hand = /obj/item/book/granter/trait/midsurgery
	//suit_store = /obj/item/gun/energy/laser/wattzs
	backpack_contents = list(
	//	/obj/item/stock_parts/cell/ammo/ec = 1,
		/obj/item/reagent_containers/pill/patch/jet = 3,
		/obj/item/storage/firstaid/ancient = 1,
		/obj/item/storage/pill_bottle/aranesp = 1,
		/obj/item/storage/pill_bottle/happy = 1,
		/obj/item/book/granter/trait/chemistry = 1,
		/obj/item/stack/sheet/mineral/silver=2,
		/obj/item/clothing/accessory/pocketprotector/full = 1,
		)

/datum/outfit/loadout/redwater_maintainer
	name = "Maintainer"
	suit = /obj/item/clothing/suit/armor/medium/vest/kevlar
	head = /obj/item/clothing/head/welding/weldingfire
	uniform = /obj/item/clothing/under/syndicate/coldres
	belt = /obj/item/storage/belt/utility/full/engi
	shoes = /obj/item/clothing/shoes/plate
	backpack_contents = list(
		/obj/item/stack/sheet/metal/fifty = 1,
		/obj/item/stack/sheet/glass/fifty = 1,
		/obj/item/stack/sheet/mineral/titanium = 15,
		/obj/item/stack/ore/blackpowder/twenty = 1,
	//	/obj/item/gun/ballistic/shotgun/automatic/combat/shotgunlever = 1,
	//	/obj/item/ammo_box/shotgun/slug = 2
		)

/datum/outfit/loadout/nefarious_conman
	name = "Nefarious Conman"
	suit = /obj/item/clothing/suit/armor/medium/duster/trenchcoat
	head = /obj/item/clothing/head/collectable/tophat
	uniform = /obj/item/clothing/under/suit/charcoal
	//belt = /obj/item/gun/energy/laser/plasma/pistol/worn
	shoes = /obj/item/clothing/shoes/f13/fancy
	backpack_contents = list(
		/obj/item/storage/belt/legholster,
		/obj/item/lighter/fusion = 1,
		/obj/item/toy/cards/deck = 1,
		/obj/item/ingot/gold = 10,
		/obj/item/storage/fancy/cigarettes/cigars/havana = 1,
		/obj/item/storage/box/dice = 1,
		/obj/item/storage/fancy/ringbox/silver = 1,
		/obj/item/stack/tile/carpet/royalblack/fifty = 1,
		/obj/item/stack/tile/carpet/black/fifty = 1,
		/obj/item/stack/f13Cash/caps/onezerozero = 1,
		)

/datum/outfit/loadout/demonness
	name = "Demonness"
	suit = /obj/item/clothing/suit/armor/light/leather/rig
	uniform = /obj/item/clothing/under/shorts/blackbshorts
	gloves = /obj/item/clothing/gloves/plate
	neck = /obj/item/storage/belt/shoulderholster
	belt = /obj/item/storage/belt/bandolier
	shoes = /obj/item/clothing/shoes/f13/military/plated
	backpack_contents = list(
		/obj/item/throwing_star = 2,
		///obj/item/gun/ballistic/automatic/marksman/policerifle = 1,
		/obj/item/melee/classic_baton/militarypolice = 1,
		///obj/item/ammo_box/magazine/m556/rifle  = 2,
		/obj/item/seeds/cannabis = 1,
		/obj/item/storage/fancy/rollingpapers = 1,
		)

/datum/job/wasteland/f13raider/resident
	title = "Redwater Resident"
	flag = F13RAIDER
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 10
	spawn_positions = 10
	description = "You are a Redwater Resident - the choice of why is up to you. You are a squatter who has taken it upon themselves to call Redwater home and be a part of their ecosystem without responsibility. You are not a slave as you have built a good reputation for yourself, however you are not immune from consequences."
	supervisors = "The Overboss and the Watchers"
	selection_color = "#df80af"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13raider/resident

	access = list()
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/outlaw = list(
			/datum/job/wasteland/f13raider,
		),
		/datum/matchmaking_pref/bounty_hunter = list(
			/datum/job/wasteland/f13raider,
		),
	)
	loadout_options = list(
		/datum/outfit/loadout/tribal_drifter,
		/datum/outfit/loadout/fish_wrangler,
		/datum/outfit/loadout/tapster,
		/datum/outfit/loadout/hospitalier,
		/datum/outfit/loadout/shepherd,
		/datum/outfit/loadout/fieldhand,
		/datum/outfit/loadout/mole,
		/datum/outfit/loadout/seductress,
		/datum/outfit/loadout/pilferer,
		/datum/outfit/loadout/trafficker
	)

/datum/outfit/job/wasteland/f13raider/resident
	name = "Redwater Resident"
	jobtype = /datum/job/wasteland/f13raider/resident

	id = null
	ears = null
	belt = /obj/item/kit_spawner/raider/civvy
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/handwraps
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
	//	/obj/item/storage/bag/money/small/raider = 1,
		/obj/item/radio/redwater = 1,
		)

/datum/outfit/job/wasteland/f13raider/resident/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
			/obj/item/clothing/under/f13/bennys,\
			/obj/item/clothing/under/f13/villain,\
			/obj/item/clothing/under/f13/shiny,\
			/obj/item/clothing/under/rank/prisoner,\
			/obj/item/clothing/under/f13/raiderrags,\
			/obj/item/clothing/under/f13/worn,\
			/obj/item/clothing/under/jabroni,\
			/obj/item/clothing/under/f13/raiderharness,\
			/obj/item/clothing/under/pants/jeanripped,\
			/obj/item/clothing/under/f13/rag,\
			/obj/item/clothing/under/costume/mummy,\
			/obj/item/clothing/under/costume/scarecrow,\
			/obj/item/clothing/under/misc/gear_harness,\
			/obj/item/clothing/under/f13/sleazeball,\
			/obj/item/clothing/under/costume/pirate)
	if(prob(75))
		head = pick(/obj/item/clothing/head/helmet/f13/hoodedmask,\
			/obj/item/clothing/head/helmet/f13/motorcycle,\
			/obj/item/clothing/head/helmet/f13/wastewarhat,\
			/obj/item/clothing/head/helmet/f13/fiend,\
			/obj/item/clothing/head/f13/bandit,\
			/obj/item/clothing/head/f13/ranger_hat/banded,\
			/obj/item/clothing/head/helmet/rus_ushanka,\
			/obj/item/clothing/head/helmet/skull,\
			/obj/item/clothing/head/collectable/petehat/gang,\
			/obj/item/clothing/head/hunter,\
			/obj/item/clothing/head/rice_hat,\
			/obj/item/clothing/head/papersack/smiley,\
			/obj/item/clothing/head/f13/pot,\
			/obj/item/clothing/head/cone,\
			/obj/item/clothing/head/kabuto,\
			/obj/item/clothing/head/cowboyhat/sec,\
			/obj/item/clothing/head/bomb_hood,\
			/obj/item/clothing/head/cardborg,\
			/obj/item/clothing/head/assu_helmet,\
			/obj/item/clothing/head/chefhat,\
			/obj/item/clothing/head/beret/headband,\
			/obj/item/clothing/head/fedora,\
			/obj/item/clothing/head/bowler)
	shoes = pick(
			/obj/item/clothing/shoes/sneakers/brown,\
			/obj/item/clothing/shoes/f13/rag,\
			/obj/item/clothing/shoes/sandal,\
			/obj/item/clothing/shoes/f13/raidertreads)
	if(prob(50))
		neck = pick(
			/obj/item/clothing/neck/mantle/peltfur,\
			/obj/item/clothing/neck/mantle/peltmountain,\
			/obj/item/clothing/neck/mantle/poncho,\
			/obj/item/clothing/neck/mantle/ragged,\
			/obj/item/clothing/neck/mantle/brown,\
			/obj/item/clothing/neck/mantle/gecko,\
			/obj/item/clothing/neck/garlic_necklace)
	suit = pick(
			/obj/item/clothing/suit/armor/light/kit/punk, \
			/obj/item/clothing/suit/armor/light/kit/shoulder, \
			/obj/item/clothing/suit/armor/light/kit)

/*
/datum/outfit/job/wasteland/f13raider/resident/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_LONGPORKLOVER, src)
*/

	H.social_faction = FACTION_RAIDERS
	add_verb(H, /mob/living/proc/creategang)


/datum/outfit/loadout/tribal_drifter
	name = "Tribal Drifter"
	uniform = /obj/item/clothing/under/pants/f13/ghoul
	head = /obj/item/clothing/head/f13/headscarf
	shoes = /obj/item/clothing/shoes/f13/rag
	//belt = /obj/item/melee/onehanded/machete/forgedmachete
	gloves = /obj/item/clothing/gloves/bracer
	//l_hand = /obj/item/twohanded/spear/bonespear
	neck = /obj/item/clothing/neck/mantle/ragged
	backpack_contents = list(
	/obj/item/shovel/serrated = 1,)

/datum/outfit/loadout/fish_wrangler
	name = "Fish Wrangler"
	backpack_contents = list(
		/obj/item/binoculars = 1,
		/obj/item/fishingrod = 1,
		/obj/item/crowbar/smithedunitool = 1,
		///obj/item/gun/ballistic/revolver/winchesterrebored = 1,
		///obj/item/ammo_box/a762/doublestacked = 2,
		/obj/item/clothing/under/f13/worn = 1,
		/obj/item/clothing/head/f13/gambler = 1,
		/obj/item/clothing/shoes/galoshes  = 1,
		/obj/item/clothing/gloves/f13/leather = 1,)

/datum/outfit/loadout/tapster
	name = "Tapster"
	backpack_contents = list(
		/obj/item/choice_beacon/ingredients = 1,
		/obj/item/reagent_containers/food/drinks/shaker = 1,
		/obj/item/book/granter/action/drink_fling = 1,
		/obj/item/reagent_containers/spray/cleaner = 1,
		/obj/item/storage/belt/legholster/police = 1,
		/obj/item/clothing/under/f13/sleazeball = 1,
		/obj/item/clothing/head/bowler = 1,
		/obj/item/clothing/shoes/laceup = 1,
		/obj/item/clothing/gloves/rifleman = 1,
		/obj/item/lighter/gold = 1,
		)

/datum/outfit/loadout/hospitalier
	name = "Hospitalier"
	backpack_contents = list(
		/obj/item/book/granter/trait/medical = 1,
		/obj/item/storage/medical/ancientfirstaid = 1,
		/obj/item/storage/briefcase/medical  = 1,
		/obj/item/storage/belt/shoulderholster/full = 1,
		/obj/item/clothing/under/pants/tan = 1,
		/obj/item/clothing/head/fedora/curator = 1,
		/obj/item/clothing/shoes/cowboyboots/black = 1,
		/obj/item/clothing/gloves/f13/crudemedical = 1,
		)

/datum/outfit/loadout/shepherd
	name = "Shepherd"
	backpack_contents = list(
		/obj/item/storage/fancy/candle_box = 1,
		/obj/item/reagent_containers/food/drinks/bottle/holywater = 1,
		///obj/item/storage/bag/tribe_quiver = 1,
		///obj/item/gun/ballistic/bow/crossbow = 1,
		/obj/item/clothing/suit/bio_suit/plaguedoctorsuit = 1,
		/obj/item/clothing/head/fluff/bandit = 1,
		/obj/item/clothing/shoes/f13/fancy = 1,
		/obj/item/clothing/gloves/evening/black = 1,
		)

/datum/outfit/loadout/fieldhand
	name = "Fieldhand"
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/nutrient/l4z = 1,
		/obj/item/seeds/cannabis = 1,
		/obj/item/shovel/trench = 1,
		/obj/item/cultivator/rake = 1,
		///obj/item/gun/ballistic/revolver/single_shotgun = 1,
		///obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/clothing/under/f13/jamrock = 1,
		/obj/item/clothing/head/scarecrow_hat = 1,
		/obj/item/clothing/shoes/winterboots  = 1,
		/obj/item/clothing/gloves/botanic_leather = 1,
		)

/datum/outfit/loadout/mole
	name = "Mole"
	backpack_contents = list(
		/obj/item/book/granter/crafting_recipe/scav_one = 1,
		/obj/item/pickaxe/mini = 1,
		/obj/item/weldingtool/largetank = 1,
		/obj/item/storage/belt/utility = 1,
		///obj/item/gun/ballistic/automatic/pistol/type17 = 1,
		///obj/item/ammo_box/magazine/m10mm/adv/simple = 2,
		/obj/item/clothing/under/rank/civilian/curator/treasure_hunter = 1,
		/obj/item/clothing/head/radiation = 1,
		/obj/item/clothing/glasses/welding = 1,
		/obj/item/clothing/shoes/workboots/mining = 1,
		/obj/item/clothing/gloves/legion/forgemaster = 1,
		)

/datum/outfit/loadout/seductress
	name = "Seductress"
	backpack_contents = list(
		/obj/item/grenade/homemade/firebomb = 1,
		/obj/item/bong/coconut = 1,
		/obj/item/reagent_containers/glass/bottle/chloralhydrate = 1,
		/obj/item/melee/classic_baton/telescopic = 1,
		/obj/item/clothing/under/shorts/jeanbshorts = 1,
		/obj/item/clothing/head/f13/trilby = 1,
		/obj/item/clothing/shoes/f13/diesel/alt = 1,
		/obj/item/clothing/gloves/combat = 1,
		)

/datum/outfit/loadout/pilferer
	name = "Pilferer"
	backpack_contents = list(
		/obj/item/grenade/smokebomb = 2,
		/obj/item/melee/onehanded/knife/throwing = 2,
		/obj/item/storage/backpack/satchel/flat = 1,
		/obj/item/melee/onehanded/knife/trench = 1,
		/obj/item/clothing/under/syndicate/tacticool = 1,
		/obj/item/clothing/mask/balaclava = 1,
		/obj/item/clothing/shoes/f13/diesel = 1,
		/obj/item/clothing/gloves/thief = 1,
		/obj/item/stealthboy = 1,
		)

/datum/outfit/loadout/trafficker // https://youtu.be/9jROV2H9Sw0
	name = "Trafficker"
	backpack_contents = list(
		/obj/item/reagent_containers/pill/patch/jet = 1,
		/obj/item/reagent_containers/hypospray/medipen/medx = 1,
		/obj/item/reagent_containers/hypospray/medipen/psycho = 1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis = 2,
	//	/obj/item/storage/belt/shoulderholster/ranger357 = 1,
		/obj/item/clothing/under/pants/f13/warboy = 1,
		/obj/item/clothing/suit/hooded/parka/grey = 1,
		/obj/item/clothing/shoes/f13/peltboots = 1,
		/obj/item/melee/unarmed/sappers = 1,
		)



/datum/job/wasteland/f13wastelander
	title = "Wastelander"
	flag = F13WASTELANDER
	faction = FACTION_WASTELAND
	total_positions = -1
	spawn_positions = -1
	description = "The most broad and open role, you have arrived in the region for purposes known only to you. If you're new, the settlement of Nash to the Midwest may prove a valuable first stop. Try to make a living for yourself - or simply survive - and craft your own unique story."
	supervisors = "fate"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13wastelander

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
		),
	)
	/*
	loadout_options = list(
	/datum/outfit/loadout/vault_refugee,
	/datum/outfit/loadout/salvager,
	/datum/outfit/loadout/medic,
	/datum/outfit/loadout/merchant,
	/datum/outfit/loadout/scavenger,
	/datum/outfit/loadout/settler,
	/datum/outfit/loadout/warrior,
	/datum/outfit/loadout/gambler,
	/datum/outfit/loadout/vaquero,
	/datum/outfit/loadout/hobo,
	/datum/outfit/loadout/hombre,
	/datum/outfit/loadout/exmil,
	/datum/outfit/loadout/strandedbos,
	/datum/outfit/loadout/eidolon,
	/datum/outfit/loadout/aviator,
	/datum/outfit/loadout/trapper,
	/datum/outfit/loadout/trouper,
	/datum/outfit/loadout/monk)
//	/datum/outfit/loadout/ncrcitizen,
//	/datum/outfit/loadout/legioncivilian,
//	/datum/outfit/loadout/wastelander_desert_ranger)
*/
/datum/outfit/job/wasteland/f13wastelander
	name = "Wastelander"
	jobtype = /datum/job/wasteland/f13wastelander

	id = null
	ears = null
	belt = /obj/item/kit_spawner/waster
	//suit_store = /obj/item/kit_spawner/tools //suit_store not workin
	l_pocket = /obj/item/storage/wallet/stash/low
	r_pocket = /obj/item/flashlight/flare
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	box = /obj/item/storage/survivalkit
	box_two = /obj/item/storage/survivalkit/medical
	backpack_contents = list(
		///obj/item/reagent_containers/hypospray/medipen/stimpak, //we don't need this big advantage to being a wastelander instead of citizen
		///obj/item/reagent_containers/hypospray/medipen/stimpak,
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/kit_spawner/tools,
		)

/datum/outfit/job/wasteland/f13wastelander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(
		/obj/item/clothing/under/f13/settler, \
		/obj/item/clothing/under/f13/brahminm, \
		/obj/item/clothing/under/f13/lumberjack, \
		/obj/item/clothing/under/f13/roving)
		/* people generally bring their own jackets
	suit = pick(
		/obj/item/clothing/suit/armor/light/kit, \
		/obj/item/clothing/suit/armor/outfit/jacket/merc, \
		/obj/item/clothing/suit/toggle/labcoat/wanderer)
*/
/*
/datum/outfit/loadout/salvager
	name = "Salvager"
	uniform = /obj/item/clothing/under/f13/machinist
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/blacksmith
	head = /obj/item/clothing/glasses/welding
	r_hand = /obj/item/weldingtool/largetank
	//backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/m1911=1, /obj/item/ammo_box/magazine/m45 = 2,)

/datum/outfit/loadout/scavenger
	name = "Scavenger"
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/storage/backpack/duffelbag/scavengers
	l_hand = /obj/item/pickaxe/drill
	belt = /obj/item/storage/belt/fannypack
	backpack_contents = list(/obj/item/mining_scanner=1,
							/obj/item/metaldetector=1,
							/obj/item/shovel=1,
							///obj/item/gun/ballistic/automatic/pistol/m1911=1, /obj/item/ammo_box/magazine/m45 = 2,
							)

/datum/outfit/loadout/settler
	name = "Settler"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/explorer
	r_hand = /obj/item/pitchfork
	l_hand = /obj/item/melee/onehanded/machete
	belt = /obj/item/storage/belt/fannypack
	backpack_contents = list(
		/obj/item/stack/sheet/metal = 50,
		/obj/item/stack/sheet/glass = 50,
		/obj/item/pickaxe/mini = 1,
		/obj/item/toy/crayon/spraycan = 1,
		/obj/item/cultivator = 1,
		/obj/item/seeds/corn=1,
		/obj/item/seeds/tomato=1,
		/obj/item/seeds/wheat=1,
		/obj/item/reagent_containers/glass/bucket = 1,
		/obj/item/storage/bag/plants/portaseeder = 1,
		)

/datum/outfit/loadout/medic
	name = "Wasteland Doctor"
	uniform = /obj/item/clothing/under/f13/follower
	suit = /obj/item/clothing/suit/toggle/labcoat/followers
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/color/latex
	neck = /obj/item/clothing/neck/stethoscope
	belt = /obj/item/storage/belt/medical
	backpack_contents =  list(/obj/item/reagent_containers/medspray/synthflesh=2,
							/obj/item/healthanalyzer=1,
							///obj/item/gun/ballistic/automatic/pistol/m1911=1,
							/obj/item/reagent_containers/glass/bottle/epinephrine=2,
							/obj/item/paper_bin=1,
							/obj/item/folder=1,
							/obj/item/pen/fountain=1,
							/obj/item/storage/firstaid/ancient=1,
							/obj/item/book/granter/trait/midsurgery
		)

/datum/outfit/loadout/merchant
	name = "Roving Trader"
	uniform = /obj/item/clothing/under/f13/merchant
	neck = /obj/item/clothing/neck/mantle/brown
	shoes = /obj/item/clothing/shoes/f13/brownie
	head = /obj/item/clothing/head/f13/stormchaser
	gloves = /obj/item/clothing/gloves/color/brown
	glasses = /obj/item/clothing/glasses/f13/biker
	//l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents =  list(/obj/item/storage/box/vendingmachine=1,
							///obj/item/ammo_box/shotgun/buck = 2,
							)

/datum/outfit/loadout/gambler
	name = "Gambler"
	uniform = /obj/item/clothing/under/f13/bennys
	shoes = /obj/item/clothing/shoes/f13/fancy
	head = /obj/item/clothing/head/fedora
	//l_hand = /obj/item/gun/ballistic/revolver/m29/snub
	backpack_contents = list(
		/obj/item/storage/fancy/cigarettes/cigars/cohiba=1,
		/obj/item/coin/gold=1,
		/obj/item/lighter/gold=1,
		/obj/item/toy/cards/deck=1,
		/obj/item/storage/box/dice=1,
		/obj/item/stack/tile/carpet/blackred/fifty=1,
		///obj/item/ammo_box/m44=2
		)

//end new

/datum/outfit/loadout/vault_refugee
	name = "Vaultie"
	uniform = /obj/item/clothing/under/f13/vault
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/card/id/selfassign
	suit = /obj/item/clothing/suit/suspenders
	backpack_contents = list(
		///obj/item/gun/ballistic/automatic/pistol/n99=1,
		///obj/item/ammo_box/magazine/m10mm/adv/simple=2,
		/obj/item/pda=1,)

/datum/outfit/loadout/warrior
	name = "Wasteland Warrior"
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/f13/raidertreads
	suit = /obj/item/clothing/suit/armor/medium/raider/wastewar
	head = /obj/item/clothing/head/helmet/f13/wastewarhat
	glasses = /obj/item/clothing/glasses/legiongoggles
	l_hand = /obj/item/shield/riot/buckler/stop
	//backpack_contents = list(
	//	/obj/item/melee/onehanded/machete/scrapsabre = 1,
	//	)

	//ported wasteland loadouts from DR

/datum/outfit/loadout/gambler
	name = "Gambler"
	uniform = /obj/item/clothing/under/f13/bennys
	shoes = /obj/item/clothing/shoes/f13/fancy
	head = /obj/item/clothing/head/fedora
	//l_hand = /obj/item/gun/ballistic/revolver/m29/snub
	backpack_contents = list(
		/obj/item/storage/fancy/cigarettes/cigars/cohiba=1,
		/obj/item/coin/gold=1,
		/obj/item/lighter/gold=1,
		/obj/item/toy/cards/deck=1,
		/obj/item/storage/box/dice=1,
		/obj/item/stack/tile/carpet/blackred/fifty=1,
		///obj/item/ammo_box/m44=2
		)

/datum/outfit/loadout/vaquero
	name = "Vaquero"
	uniform = /obj/item/clothing/under/f13/petrochico
	shoes = /obj/item/clothing/shoes/f13/fancy
	gloves = /obj/item/clothing/gloves/f13/leather/fingerless
	head = /obj/item/clothing/head/helmet/f13/vaquerohat
	//l_hand = /obj/item/ammo_box/a357
	backpack_contents = list(
	//	/obj/item/gun/ballistic/revolver/colt357=2,
		/obj/item/melee/onehanded/club/tireiron=1,
		/obj/item/reagent_containers/food/snacks/grown/cannabis=1,
		/obj/item/clothing/mask/cigarette/pipe/cobpipe=1)

/datum/outfit/loadout/hobo
	name = "Hobo"
	neck = /obj/item/clothing/neck/mantle/poncho
	uniform = /obj/item/clothing/under/pants/f13/ghoul
	shoes = /obj/item/clothing/shoes/sandal
	mask = /obj/item/clothing/mask/facewrap
	head = /obj/item/clothing/head/rice_hat
	gloves = /obj/item/clothing/gloves/f13/handwraps
	l_hand = /obj/item/melee/onehanded/club/fryingpan
	backpack_contents = list(
		/obj/item/storage/bag/trash=1,
		/obj/item/picket_sign=1,)
	//	/obj/item/gun/ballistic/revolver/hobo/piperifle =1,
	//	/obj/item/ammo_box/a556=1,)

/datum/outfit/loadout/hombre
	name = "Hombre"
	suit = /obj/item/clothing/suit/armor/outfit/vest/cowboy
	uniform = /obj/item/clothing/under/f13/cowboyb
	head = /obj/item/clothing/head/cowboyhat
	gloves = /obj/item/clothing/gloves/f13/leather
	//l_hand = /obj/item/gun/ballistic/revolver/colt357
	backpack_contents = list(
		/obj/item/storage/fancy/rollingpapers=1,
	//	/obj/item/ammo_box/a357=2,
		/obj/item/binoculars=1,
		/obj/item/radio=1,)

/datum/outfit/loadout/exmil
	name = "Ex-Military"
	suit = /obj/item/clothing/suit/armor/outfit/vest/flakjack
	uniform = /obj/item/clothing/under/f13/bdu
	shoes = /obj/item/clothing/shoes/f13/military
	head = /obj/item/clothing/head/flakhelm
	glasses = /obj/item/clothing/glasses/sunglasses/big
	gloves = /obj/item/clothing/gloves/f13/military
	//l_hand = /obj/item/gun/ballistic/automatic/pistol/ninemil
	backpack_contents = list(
	//	/obj/item/ammo_box/magazine/m9mm/doublestack=2,
		/obj/item/storage/fancy/cigarettes/dromedaryco=1,)

/datum/outfit/loadout/strandedbos
	name = "Stranded BoS Member"
	suit = /obj/item/clothing/suit/armor/light/duster/bos
	uniform = /obj/item/clothing/under/f13/bos/fatigues
	shoes = /obj/item/clothing/shoes/f13/military
	head = /obj/item/clothing/head/beret/black
	gloves = /obj/item/clothing/gloves/f13/military
	//l_hand = /obj/item/gun/energy/laser/wattzs
	backpack_contents = list(
	//	/obj/item/stock_parts/cell/ammo/ec = 2,
		/obj/item/card/id/rusted/brokenholodog = 1,)

/datum/outfit/loadout/eidolon
	name = "Eidolon"
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/beret/black
	gloves = /obj/item/clothing/gloves/f13/military
	glasses = /obj/item/clothing/glasses/orange
	mask = /obj/item/clothing/mask/balaclava
	//l_hand = /obj/item/gun/ballistic/revolver/caravan_shotgun
	backpack_contents = list(
	//	/obj/item/ammo_box/shotgun/slug=2,
		/obj/item/reagent_containers/food/drinks/flask/russian=1,
		/obj/item/reagent_containers/food/drinks/bottle/vodka/badminka=1,)

/datum/outfit/loadout/aviator
	name = "Aviator"
	suit = /obj/item/clothing/suit/bomber
	uniform = /obj/item/clothing/under/color/grey/glorf
	shoes = /obj/item/clothing/shoes/f13/tan
	glasses = /obj/item/clothing/glasses/legiongoggles
	neck = /obj/item/storage/belt/shoulderholster
	gloves = /obj/item/clothing/gloves/rifleman
	backpack_contents = list(
		/obj/item/lighter/fusion=1,
		/obj/item/storage/fancy/cigarettes/cigpack_carp =1,)

/datum/outfit/loadout/trapper
	name = "Trapper"
	suit = /obj/item/clothing/suit/armor/light/duster/brahmin
	uniform = /obj/item/clothing/under/f13/worn
	shoes = /obj/item/clothing/shoes/f13/military/leather
	head = /obj/item/clothing/head/helmet/f13/brahmincowboyhat
	gloves = /obj/item/clothing/gloves/f13/leather/fingerless
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/shovel/trench
	backpack_contents = list(
		///obj/item/storage/backpack/spearquiver = 1,
		/obj/item/storage/box/mousetraps=3,)

/datum/outfit/loadout/trouper
	name = "Trouper"
	suit = /obj/item/clothing/neck/mantle/poncho
	uniform = /obj/item/clothing/under/redeveninggown
	shoes = /obj/item/clothing/shoes/f13/fancy
	head = /obj/item/clothing/head/widered
	//l_hand = /obj/item/gun/ballistic/automatic/pistol/pistol22
	backpack_contents = list(
	//	/obj/item/ammo_box/magazine/m22=2,
		/obj/item/reagent_containers/food/drinks/shaker=1,
		/obj/item/restraints/handcuffs/fake/kinky=1,
		/obj/item/melee/onehanded/slavewhip=1,
		/obj/item/storage/fancy/cigarettes/cigpack_cannabis=1,
		/obj/item/reagent_containers/food/drinks/bottle/trappist=1,
		/obj/item/reagent_containers/food/drinks/bottle/applejack=1,
		/obj/item/reagent_containers/food/drinks/bottle/goldschlager=1,)

/datum/outfit/loadout/monk
	name = "Monk"
	suit = /obj/item/clothing/suit/armor/light/kit/punk
	shoes = /obj/item/clothing/shoes/wraps
	head = /obj/item/clothing/head/helmet/f13/khan/bandana
	//gloves = /obj/item/clothing/gloves/fingerless/pugilist/rapid

// end dr wasteland loadout port
/*
/datum/outfit/loadout/legioncivilian
	name = "Legion Civilian"
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/f13/fancy
	suit = /obj/item/clothing/suit/curator
	head = /obj/item/clothing/head/scarecrow_hat
	gloves = /obj/item/clothing/gloves/color/black
	glasses = /obj/item/clothing/glasses/welding
	id = /obj/item/card/id/dogtag/town/legion
	l_hand = /obj/item/shield/riot/buckler
	backpack_contents = list(
		/obj/item/melee/onehanded/machete = 1,
		)


/datum/outfit/loadout/ncrcitizen
	name = "NCR Citizen"
	uniform = /obj/item/clothing/under/f13/ncrcaravan
	shoes = /obj/item/clothing/shoes/f13/tan
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	id = /obj/item/card/id/dogtag/town/ncr
	l_hand = /obj/item/gun/ballistic/automatic/varmint
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle=2)
*/
/*
/datum/outfit/loadout/wastelander_desert_ranger
	name = "Desert Ranger Scout"
	uniform = /obj/item/clothing/under/f13/desert_ranger_scout
	shoes = /obj/item/clothing/shoes/f13/cowboy
	head = /obj/item/clothing/head/f13/cowboy
	gloves = /obj/item/clothing/gloves/color/brown
	l_hand = /obj/item/gun/ballistic/revolver/colt357
	backpack_contents = list(
		/obj/item/ammo_box/a357=2,
		/obj/item/binoculars=1,
		/obj/item/radio=1)*/
*/

/datum/job/wasteland/f13wastelander/ashdown
	title = "Ashdown Citizen"
	total_positions = 25
	spawn_positions = 25

/*/datum/job/wasteland/f13enforcer
	title = "Den Mob Enforcer"
	flag = F13ENFORCER
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 0
	spawn_positions = 0
	description = "The mob rules in Yuma. A hitman for the Den's Boss, you are a highly loyal enforcer charged with keeping order among the outlaw groups inhabiting the Den."
	supervisors = "The Boss."
	selection_color = "#ff4747"
	exp_requirements = 300
	exp_type = EXP_TYPE_WASTELAND

	outfit = /datum/outfit/job/wasteland/f13enforcer

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

	loadout_options = list(
		/datum/outfit/loadout/hitman,
		/datum/outfit/loadout/bodyguard,
		)
*/

/datum/job/wasteland/machine
	title = "Sentient Machine"
	flag = F13CYBORG
	department_flag = CYBORG
	faction = FACTION_WASTELAND
	total_positions = 0 //Leave this to zero until it gets fixed
	spawn_positions = 1
	selection_color = "#3a3a3a"


/datum/job/cyborg/equip(mob/living/carbon/human/H, visualsOnly = FALSE, announce = TRUE, latejoin = TRUE, datum/outfit/outfit_override = null, client/preference_source)
	return H.Robotize(FALSE, latejoin)

/datum/job/cyborg/after_spawn(mob/living/silicon/robot/R, mob/M)
	. = ..()
	ADD_TRAIT(R, TRAIT_TECHNOPHREAK, TRAIT_GENERIC)
	R.apply_pref_name("cyborg", M.client)
	R.gender = NEUTER


//Wasteland Preacher
/datum/job/wasteland/f13preacher
	title = "Preacher"
	flag = F13PREACHER
	faction = FACTION_WASTELAND
	total_positions = 3
	spawn_positions = 1
	supervisors = "your faith"
	description = "You are the last bastion of your faith in this forsaken Wasteland - whatever that faith may be. Spread your word and preach to the faithless in whatever manner you see fit, but remember that the divine cannot always protect you from harsh realities."
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/wasteland/f13preacher

	loadout_options = list(
	/datum/outfit/loadout/crusader, 	//This is kinda a given. You bet.
	/datum/outfit/loadout/samaritan, 	//Water and food to share with the wastes.
	/datum/outfit/loadout/cleanser		//Just some bombs.
	)

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
		),
	)



/datum/outfit/loadout/crusader
	name = "Crusader"
	backpack_contents = list(
		/obj/item/clothing/suit/armor/light/knight = 1,
		/obj/item/clothing/head/helmet/f13/knighthelmet = 1,
		///obj/item/melee/onehanded/machete = 1,
	)

/datum/outfit/loadout/samaritan
	name = "Samaritan"
	backpack_contents = list(
		/obj/item/reagent_containers/food/snacks/store/bread/plain = 5,
		/obj/item/reagent_containers/food/snacks/fishmeat/salmon = 2,
		/obj/item/reagent_containers/glass/beaker/waterbottle = 2,
		/obj/item/reagent_containers/glass/beaker/waterbottle/wataur = 1
	)	//Matthew 14:17 RSVCE and KJV - Kitsunemitsu
				//Nerd shit, wataur time. ~TK

/datum/outfit/loadout/cleanser
	name = "Cleanser"
	backpack_contents = list(
		/obj/item/grenade/homemade/coffeepotbomb = 2,	//This is funny. I swear guys.
		///obj/item/gun/ballistic/revolver/m29 = 1,		//Moved here for more *variety*
		///obj/item/ammo_box/m44 = 2
	)


/datum/job/wasteland/f13preacher/after_spawn(mob/living/H, mob/M)
	. = ..()
	if(H.mind)
		H.mind.isholy = TRUE

	var/obj/item/storage/book/bible/booze/B = new

	if(GLOB.religion)
		B.deity_name = GLOB.deity
		B.name = GLOB.bible_name
		B.icon_state = GLOB.bible_icon_state
		B.item_state = GLOB.bible_item_state
		to_chat(H, "There is already an established religion onboard the station. You are an acolyte of [GLOB.deity]. Defer to the Chaplain.")
		H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)
		var/nrt = GLOB.holy_weapon_type || /obj/item/nullrod
		var/obj/item/nullrod/N = new nrt(H)
		H.put_in_hands(N)
		return

	var/new_religion = DEFAULT_RELIGION
	if(M.client && M.client.prefs.custom_names["religion"])
		new_religion = M.client.prefs.custom_names["religion"]

	var/new_deity = DEFAULT_DEITY
	if(M.client && M.client.prefs.custom_names["deity"])
		new_deity = M.client.prefs.custom_names["deity"]

	B.deity_name = new_deity


	switch(lowertext(new_religion))
		if("christianity") // DEFAULT_RELIGION
			B.name = pick("The Holy Bible","The Dead Sea Scrolls")
		if("buddhism")
			B.name = "The Sutras"
		if("clownism","honkmother","honk","honkism","comedy")
			B.name = pick("The Holy Joke Book", "Just a Prank", "Hymns to the Honkmother")
		if("chaos")
			B.name = "The Book of Lorgar"
		if("cthulhu")
			B.name = "The Necronomicon"
		if("hinduism")
			B.name = "The Vedas"
		if("homosexuality")
			B.name = pick("Guys Gone Wild","Coming Out of The Closet")
		if("imperium")
			B.name = "Uplifting Primer"
		if("islam")
			B.name = "Quran"
		if("judaism")
			B.name = "The Torah"
		if("lampism")
			B.name = "Fluorescent Incandescence"
		if("lol", "wtf", "gay", "penis", "ass", "poo", "badmin", "shitmin", "deadmin", "cock", "cocks", "meme", "memes")
			B.name = pick("Woodys Got Wood: The Aftermath", "War of the Cocks", "Sweet Bro and Hella Jef: Expanded Edition", "F.A.T.A.L. Rulebook")
			H.adjustOrganLoss(ORGAN_SLOT_BRAIN, 100) // starts off dumb as fuck
		if("monkeyism","apism","gorillism","primatism")
			B.name = pick("Going Bananas", "Bananas Out For Harambe")
		if("mormonism")
			B.name = "The Book of Mormon"
		if("pastafarianism")
			B.name = "The Gospel of the Flying Spaghetti Monster"
		if("rastafarianism","rasta")
			B.name = "The Holy Piby"
		if("satanism")
			B.name = "The Unholy Bible"
		if("science")
			B.name = pick("Principle of Relativity", "Quantum Enigma: Physics Encounters Consciousness", "Programming the Universe", "Quantum Physics and Theology", "String Theory for Dummies", "How To: Build Your Own Warp Drive", "The Mysteries of Bluespace", "Playing God: Collector's Edition")
		if("scientology")
			B.name = pick("The Biography of L. Ron Hubbard","Dianetics")
		if("servicianism", "partying")
			B.name = "The Tenets of Servicia"
			B.deity_name = pick("Servicia", "Space Bacchus", "Space Dionysus")
			B.desc = "Happy, Full, Clean. Live it and give it."
		if("subgenius")
			B.name = "Book of the SubGenius"
		if("toolboxia","greytide")
			B.name = pick("Toolbox Manifesto","iGlove Assistants")
		if("weeaboo","kawaii")
			B.name = pick("Fanfiction Compendium","Japanese for Dummies","The Manganomicon","Establishing Your O.T.P")
		else
			B.name = "The Holy Book of [new_religion]"

	GLOB.religion = new_religion
	GLOB.bible_name = B.name
	GLOB.deity = B.deity_name

	H.equip_to_slot_or_del(B, SLOT_IN_BACKPACK)

	SSblackbox.record_feedback("text", "religion_name", 1, "[new_religion]", 1)
	SSblackbox.record_feedback("text", "religion_deity", 1, "[new_deity]", 1)


/datum/outfit/job/wasteland/f13preacher
	name = "Preacher"
	jobtype = /datum/job/wasteland/f13preacher

	id = /obj/item/card/id/dogtag/town
	belt = /obj/item/kit_spawner/preacher
	uniform = 		/obj/item/clothing/under/f13/chaplain
	gloves =		/obj/item/clothing/gloves/fingerless
	shoes = 		/obj/item/clothing/shoes/jackboots
	r_pocket = 		/obj/item/flashlight/flare

	backpack =		/obj/item/storage/backpack/cultpack
	satchel = 		/obj/item/storage/backpack/cultpack
	backpack_contents = list(
		/obj/item/camera/spooky = 1,
		/obj/item/reagent_containers/food/drinks/flask=1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2,
		/obj/item/storage/fancy/candle_box,
		/obj/item/storage/wallet/stash/mid,
		/obj/item/nullrod = 1,)
//end preacher

/*/datum/outfit/job/wasteland/f13enforcer
	name = "Den Mob Enforcer"
	jobtype = /datum/job/wasteland/f13enforcer

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/army/assault
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/headset_den
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	backpack =	/obj/item/storage/backpack/satchel
	satchel =  /obj/item/storage/backpack/satchel
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/beret/durathread
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/storage/bag/money/small/wastelander)

/datum/outfit/job/wasteland/f13enforcer/pre_equip(mob/living/carbon/human/H)
	..()
	r_hand = /obj/item/book/granter/trait/selection

/datum/outfit/job/wasteland/f13enforcer/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/denmob/DM = GLOB.denmob
		GLOB.all_gangs |= DM
		DM.add_member(H)
		H.gang = DM

	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)

/datum/outfit/loadout/hitman
	name = "Hitman"
	r_hand = /obj/item/gun/ballistic/automatic/smg/mini_uzi
	suit = /obj/item/clothing/suit/armor/medium/vest
	backpack_contents = list(
						/obj/item/ammo_box/magazine/uzim9mm=3, \
						/obj/item/suppressor=1
						)

/datum/outfit/loadout/bodyguard
	name = "Bodyguard"
	r_hand = /obj/item/gun/ballistic/shotgun/police
	suit = /obj/item/clothing/suit/armor/medium/vest
	backpack_contents = list(
		/obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/melee/onehanded/knife/hunting = 1,
		)




/datum/job/wasteland/f13mobboss
	title = "Den Mob Boss"
	flag = F13MOBBOSS
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 0
	spawn_positions = 0
	description = "The mob rules in Yuma, and you're on top. Keeping the loose association of Khans, outlaws, and other no-goods together you maintain order in The Den by force. Ensure that all inhabitants of the Den obey their rules, and spread your influence over the wasteland. Be careful though - even your own men can't be trusted."
	supervisors = "Whatever god you pray to. Sky's the limit!"
	selection_color = "#ff4747"
	exp_requirements = 500
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13mobboss

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)
	matchmaking_allowed = list(
		/datum/matchmaking_pref/rival = list(
			/datum/job/oasis/f13mayor,
			/datum/job/oasis/f13sheriff,
			/datum/job/oasis/f13detective,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
	)


/datum/outfit/job/wasteland/f13mobboss
	name = "Den Mob Boss"
	jobtype = /datum/job/wasteland/f13mobboss

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/army/assault
	ears = /obj/item/radio/headset/headset_den
	shoes = /obj/item/clothing/shoes/laceup
	l_pocket = /obj/item/melee/onehanded/knife/switchblade
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	suit = /obj/item/clothing/suit/armor/medium/combat/mk2/raider
	backpack =	/obj/item/storage/backpack/satchel
	satchel = 	/obj/item/storage/backpack/satchel
	gloves = /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/caphat/beret/white
	mask = /obj/item/clothing/mask/bandana/durathread
	suit_store = /obj/item/gun/ballistic/automatic/smg/p90
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=1, \
		/obj/item/restraints/handcuffs=1, \
		/obj/item/ammo_box/magazine/m10mm_p90=2, \
		/obj/item/storage/bag/money/small/raider/mobboss, \
		/obj/item/book/granter/crafting_recipe/manual/denvr)

/datum/outfit/job/wasteland/f13mobboss/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_LIFEGIVER, src)


/datum/outfit/job/wasteland/f13mobboss/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/denmob/DM = GLOB.denmob
		GLOB.all_gangs |= DM
		DM.add_member(H)
		H.gang = DM

datum/job/wasteland/f13dendoctor
	title = "Den Doctor"
	flag = F13DENDOCTOR
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 0
	spawn_positions = 0
	description = "While you prioritize providing medical treatment in emergency situations, you are still trained in combat and have the additional role as a loyal combanteer to the Den."
	supervisors = "The Boss."
	selection_color = "#ff4747"
	exp_requirements = 500
	exp_type = EXP_TYPE_OUTLAW

	outfit = /datum/outfit/job/wasteland/f13dendoctor

	access = list(ACCESS_DEN)
	minimal_access = list(ACCESS_DEN)

	loadout_options = list(
		/datum/outfit/loadout/dencombatmedic,
		/datum/outfit/loadout/denchemist,
		)

/datum/outfit/job/wasteland/f13dendoctor
	name = "Den Doctor"
	jobtype = /datum/job/wasteland/f13dendoctor

	id = /obj/item/card/id/denid
	belt = /obj/item/storage/belt/medical
	shoes = /obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/headset_den
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/densuit
	backpack =	/obj/item/storage/backpack/medic
	gloves =  /obj/item/clothing/gloves/color/white
	head = /obj/item/clothing/head/beret/durathread
	mask =  /obj/item/clothing/mask/bandana/durathread
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=2, \
		/obj/item/healthanalyzer=1, \
		/obj/item/storage/bag/money/small/wastelander)

/datum/outfit/job/wasteland/f13dendoctor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_TECHNOPHREAK, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_MID, src)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/jet)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/turbo)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/psycho)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/medx)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/buffout)
	H.mind.teach_crafting_recipe(/datum/crafting_recipe/set_vrboard/den)


/datum/outfit/job/wasteland/f13dendoctor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return

	if(!H.gang)
		var/datum/gang/denmob/DM = GLOB.denmob
		GLOB.all_gangs |= DM
		DM.add_member(H)
		H.gang = DM

/datum/outfit/loadout/dencombatmedic
	name = "Combat medic"
	r_hand = /obj/item/gun/ballistic/automatic/smg/american180
	suit = /obj/item/clothing/suit/toggle/labcoat/chemist
	backpack_contents = list(
							/obj/item/clothing/glasses/hud/health/f13=1, \
							/obj/item/ammo_box/magazine/m22smg=1, \
							)

/datum/outfit/loadout/denchemist
	name = "Chemist"
	r_hand = /obj/item/gun/ballistic/automatic/pistol/type17
	suit = /obj/item/clothing/suit/toggle/labcoat/chemist
	backpack_contents = list(
						/obj/item/ammo_box/magazine/m10mm/adv/simple=1, \
						/obj/item/grenade/chem_grenade=1, \
						/obj/item/clothing/mask/gas=1, \
						/obj/item/reagent_containers/glass/beaker/large=2 \
						)
*/


//vigilante


/datum/job/wasteland/f13vigilante
	title = "Vigilante"
	flag = F13VIGILANTE
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = "You have come a long way to reach this heaven forsaken place... it is now your job to protect its inhabitants from all sorts of injustice. Your moral codex requires you to help anyone in need and to never harm an innocent. Always try to capture and reeducate criminals instead of killing. Do not get involved in the conflicts between the major factions, that is not your fight."
	supervisors = "your moral code"
	selection_color = "#76885f"
	exp_requirements = 0
	exp_type = EXP_TYPE_FALLOUT

	outfit = /datum/outfit/job/wasteland/f13vigilante

	loadout_options = list(
							/datum/outfit/loadout/desert_ranger,
							/datum/outfit/loadout/bounty_hunter,
							/datum/outfit/loadout/retired_ranger)


/datum/outfit/job/wasteland/f13vigilante
	name = "Vigilante"
	jobtype = /datum/job/wasteland/f13vigilante

	id = /obj/item/card/id/dogtag/vigilante
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/f13/explorer
	l_pocket = /obj/item/melee/onehanded/knife/hunting
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/merca
	backpack = /obj/item/storage/backpack/satchel/trekker
	gloves = /obj/item/clothing/gloves/f13/military
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak=4,
		/obj/item/reagent_containers/pill/radx=1,
		/obj/item/restraints/handcuffs=2,
		/obj/item/kit_spawner/waster = 1,
)

/*
/datum/outfit/job/wasteland/f13vigilante/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIGHT_STEP, src)
*/

/datum/outfit/loadout/desert_ranger
	name = "Desert Ranger"
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	suit = /obj/item/clothing/suit/armor/medium/combat/desert_ranger
	r_hand = /obj/item/gun/ballistic/revolver/revolver44/desert_ranger
	backpack_contents = list(
							)

/datum/outfit/loadout/bounty_hunter
	name = "Bounty Hunter"
	head = /obj/item/clothing/suit/armor/medium/combat/mk2/dark
	suit = /obj/item/clothing/head/helmet/f13/combat/mk2/dark
	r_hand = /obj/item/gun/ballistic/automatic/g11
	backpack_contents = list(
							/obj/item/ammo_box/magazine/m473=2
							)

/datum/outfit/loadout/retired_ranger
	name = "Retired Veteran"
	r_hand = /obj/item/gun/ballistic/revolver/sequoia
	backpack_contents = list(
							/obj/item/ammo_box/c4570=2
							)

/datum/job/wasteland/f13adminboos
	title = "Death"
	flag = F13ADMINBOOS
	faction = FACTION_WASTELAND
	total_positions = 0
	spawn_positions = 0
	description = ""
	supervisors = "no one"
	selection_color = "#76885f"

	outfit = /datum/outfit/job/wasteland/f13adminboos

/datum/outfit/job/wasteland/f13adminboos
	name = "Death"
	jobtype = /datum/job/wasteland/f13vigilante
	id = /obj/item/card/id/dogtag/vigilante
	belt = /obj/item/storage/belt/military
	shoes = /obj/item/clothing/shoes/f13/explorer
	l_pocket = /obj/item/melee/onehanded/knife/hunting
	r_pocket = /obj/item/flashlight/seclite
	uniform = /obj/item/clothing/under/f13/merca
	backpack = /obj/item/storage/backpack/satchel/trekker
	gloves = /obj/item/clothing/gloves/f13/military
	head = /obj/item/clothing/head/helmet/f13/ncr/rangercombat/desert
	suit = /obj/item/clothing/suit/armor/medium/combat/desert_ranger
	suit_store = /obj/item/gun/ballistic/revolver/sequoia/death
	glasses = /obj/item/clothing/glasses/hud/health/night
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super=4, \
		/obj/item/reagent_containers/pill/radx=1, \
		/obj/item/restraints/handcuffs=2, \
		/obj/item/ammo_box/c4570=6)

/datum/outfit/job/wasteland/f13adminboos/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	var/obj/item/implant/explosive/E = new
	E.implant(H)

	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_LIGHT_STEP, src)

//New tribal role. Replaces old tribe stuff.
/datum/job/wasteland/f13tribal
	title = "Far-Lands Tribals"
	flag = F13TRIBAL
	faction = FACTION_WASTELAND
	social_faction = FACTION_TRIBE
	total_positions = -1
	spawn_positions = -1
	description = "You are a member of the of a tribe who has wandered to this area, but does not belong to the Sulphur Bottom tribe.  From where you came is up to you, why you are here is your own, and it is up to you to survive on your own and attempt to thrive."
	supervisors = "the Ways of your own tribe."

	selection_color = "#dddddd"

	outfit = /datum/outfit/job/wasteland/f13tribal

	access = list()
	minimal_access = list()

	loadout_options = list(
	/datum/outfit/loadout/brawler,
	/datum/outfit/loadout/spearman,
	/datum/outfit/loadout/wayfarermelee,
	/datum/outfit/loadout/wayfarerranged,
	/datum/outfit/loadout/wayfarershaman,
	/datum/outfit/loadout/shaman,
	/datum/outfit/loadout/lostvillager,
	/datum/outfit/loadout/whitelegsranged,
	/datum/outfit/loadout/whitelegsshaman,
	/datum/outfit/loadout/deadhorsesmelee,
	/datum/outfit/loadout/deadhorsesranged,
	/datum/outfit/loadout/deadhorsesshaman,
	/datum/outfit/loadout/sorrowshunter,
	/datum/outfit/loadout/sorrowsshaman,
	/datum/outfit/loadout/eightiesmelee,
	/datum/outfit/loadout/eightiesranged,
	/datum/outfit/loadout/eightiesshaman,
	/datum/outfit/loadout/rustwalkersscipher,
	/datum/outfit/loadout/rustwalkersscrapper,
	/datum/outfit/loadout/rustwalkersshaman,
	/datum/outfit/loadout/bonedancerexile
	)

/datum/outfit/job/wasteland/f13tribal/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
/*
	ADD_TRAIT(H, TRAIT_TRIBAL, src)
	ADD_TRAIT(H, TRAIT_GENERIC, src)
	ADD_TRAIT(H, TRAIT_TRAPPER, src)
	ADD_TRAIT(H, TRAIT_MACHINE_SPIRITS, src)
	ADD_TRAIT(H, TRAIT_AUTO_DRAW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	H.grant_language(/datum/language/tribal)
*/

	var/list/recipes = list(
		/datum/crafting_recipe/tribal_pa,
		/datum/crafting_recipe/tribal_pa_helmet,
		/datum/crafting_recipe/tribal_combat_armor,
		/datum/crafting_recipe/tribal_combat_armor_helmet,
		/datum/crafting_recipe/tribal_r_combat_armor,
		/datum/crafting_recipe/tribal_r_combat_armor_helmet,
		/datum/crafting_recipe/tribalwar/chitinarmor,
		/datum/crafting_recipe/tribalwar/deathclawspear,
		/datum/crafting_recipe/tribalwar/lightcloak,
		/datum/crafting_recipe/tribalwar/legendaryclawcloak,
		/datum/crafting_recipe/warpaint,
		/datum/crafting_recipe/tribalradio,
		/datum/crafting_recipe/tribalwar/goliathcloak,
		///datum/crafting_recipe/tribalwar/bonebow,
		///datum/crafting_recipe/tribalwar/tribe_bow,
		///datum/crafting_recipe/tribalwar/sturdybow,
		/datum/crafting_recipe/tribalwar/warclub,
		///datum/crafting_recipe/tribalwar/silverbow,
		///datum/crafting_recipe/tribalwar/arrowbone,
		/datum/crafting_recipe/tribalwar/bonespear,
		/datum/crafting_recipe/tribalwar/bonecodpiece,
		/datum/crafting_recipe/tribalwar/bracers,
		///datum/crafting_recipe/tribal/bonetalisman,
		/datum/crafting_recipe/bitterdrink,
		/datum/crafting_recipe/bitterdrink5,
		/datum/crafting_recipe/healpoultice,
		/datum/crafting_recipe/healpoultice5,
		//datum/crafting_recipe/redpotion,
		//datum/crafting_recipe/bluepotion,
		//datum/crafting_recipe/greenpotion,
		/datum/crafting_recipe/food/pemmican,
		/datum/crafting_recipe/tribal/bonebag
	)
	for(var/datum/crafting_recipe/recipe as() in recipes)
		H.mind.teach_crafting_recipe(recipe)
	H.grant_language(/datum/language/tribal)
	add_verb(H, /mob/living/proc/create_tribe)


/datum/outfit/job/wasteland/f13tribal
	name = "Far-Lands Tribal"
	jobtype = /datum/job/wasteland/f13tribal

	id = null
	ears = null
	belt = /obj/item/kit_spawner/tribal/farlands
	uniform = /obj/item/clothing/under/f13/settler
	shoes = /obj/item/clothing/shoes/sandal
	gloves = /obj/item/clothing/gloves/f13/handwraps
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	box = /obj/item/storage/survivalkit/tribal
	box_two = /obj/item/storage/survivalkit/medical/tribal
	backpack_contents = list(
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/flashlight/lantern = 1,
		/obj/item/melee/onehanded/knife/bone = 1
		)

//Generic Tribals
/datum/outfit/loadout/brawler
	name = "Far-Lands Mounted Warrior"
	suit = /obj/item/clothing/suit/armor/light/tribal
	head = /obj/item/clothing/head/helmet/f13/deathskull
	backpack_contents = list(
		///obj/item/twohanded/fireaxe/bmprsword = 1,
		/obj/item/storage/box/tools/ranching =1,
		/obj/item/restraints/legcuffs/bola = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/stack/medical/gauze = 1,
		/obj/item/book/granter/trait/tribaltraditions =1,
		)

/datum/outfit/loadout/spearman
	name = "Far-Lands Spear Warrior"
	suit = /obj/item/clothing/suit/armor/light/raider/tribalraider
	head = /obj/item/clothing/head/helmet/f13/fiend
	mask = /obj/item/clothing/mask/facewrap
	neck = /obj/item/clothing/neck/mantle/gray
	backpack_contents = list(
		///obj/item/twohanded/spear = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/book/granter/trait/tribaltraditions =1,
		)

/datum/outfit/loadout/shaman
	name = "Far-Land Shaman"
	suit = /obj/item/clothing/suit/hooded/cloak/desert
	box = /obj/item/storage/survivalkit/tribal
	box_two = /obj/item/storage/survivalkit/medical/tribal
	backpack_contents = list(
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/reagent_containers/glass/bucket/wood=1,
		///obj/item/twohanded/sledgehammer/warmace = 1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/book/granter/crafting_recipe/tribal = 1,
		/obj/item/book/granter/trait/tribaltraditions =1,
	)

/datum/outfit/loadout/lostvillager
	name = "Lost Villager"
	suit = /obj/item/clothing/suit/hooded/cloak
	backpack_contents = list(
		/obj/item/clothing/under/f13/rag = 1,
		/obj/item/clothing/head/rice_hat = 1,
		///obj/item/storage/backpack/spearquiver = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/crowbar/smithedunitool = 1,
		/obj/item/reagent_containers/pill/healingpowder = 3,
		/obj/item/book/granter/trait/tribaltraditions =1,
	)

/datum/outfit/loadout/wayfarerranged
	name = "Far-Lands Archer"
	suit = /obj/item/clothing/suit/armor/light/kit
	head = /obj/item/clothing/head/helmet/f13/wayfarer/antler
	neck = /obj/item/clothing/neck/mantle/brown
	backpack_contents = list(
		///obj/item/gun/ballistic/bow/sturdy = 1,
		///obj/item/storage/bag/tribe_quiver/light = 1,
		/obj/item/binoculars = 1,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/book/granter/trait/tribaltraditions =1,
		)

/datum/outfit/loadout/whitelegsranged
	name = "White Legs Storm-Drummer"
	suit = /obj/item/clothing/suit/armor/light/tribal/whitelegs
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		/obj/item/gun/ballistic/automatic/smg/tommygun/whitelegs = 1,
		///obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
		///obj/item/ammo_box/magazine/tommygunm45/stick = 2
	)

/datum/outfit/loadout/whitelegsshaman
	name = "White Legs Arm-Makers"
	backpack_contents = list(
		/obj/item/clothing/under/f13/whitelegs = 1,
		/obj/item/clothing/under/f13/female/whitelegs = 1,
		///obj/item/twohanded/fireaxe = 1,
		///obj/item/gun/ballistic/automatic/pistol/ninemil = 1,
		/obj/item/book/granter/crafting_recipe/tribal/whitelegs = 1
	)

//Dead Horses
/datum/outfit/loadout/deadhorsesmelee
	name = "Dead Horses Stalker"
	suit = /obj/item/clothing/suit/armor/light/tribal/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		///obj/item/melee/onehanded/club/warclub = 1,
		/obj/item/storage/backpack/spearquiver = 1,
		/obj/item/reagent_containers/pill/healingpowder = 2
	)

/datum/outfit/loadout/deadhorsesranged
	name = "Dead Horses Disciple"
	suit = /obj/item/clothing/suit/armor/medium/tribal/deadhorses
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		///obj/item/gun/ballistic/automatic/pistol/m1911=1,
		///obj/item/ammo_box/magazine/m45 = 2,
		/obj/item/reagent_containers/pill/patch/healpoultice =2
	)

/datum/outfit/loadout/deadhorsesshaman
	name = "Dead Horses Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/deadhorses = 1,
		/obj/item/clothing/under/f13/female/deadhorses = 1,
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/reagent_containers/glass/bucket/wood=1,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/book/granter/crafting_recipe/tribal/deadhorses = 1
	)

//Sorrows
/datum/outfit/loadout/sorrowshunter
	name = "Sorrows Hunter-Guardian"
	suit = /obj/item/clothing/suit/armor/light/tribal/sorrows
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/melee/onehanded/knife/survival = 1,
		///obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		///obj/item/gun/ballistic/bow = 1,
		///obj/item/storage/bag/tribe_quiver = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

/datum/outfit/loadout/sorrowsshaman
	name = "Sorrows Ink-Shaman"
	backpack_contents = list(
		/obj/item/clothing/under/f13/sorrows = 1,
		/obj/item/clothing/under/f13/female/sorrows = 1,
		/obj/item/storage/bag/plants = 1,
		/obj/item/cultivator = 1,
		/obj/item/reagent_containers/glass/bucket/wood = 1,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		///obj/item/melee/unarmed/yaoguaigauntlet = 1,
		/obj/item/warpaint_bowl = 1,
		/obj/item/toy/crayon/spraycan = 2,
		/obj/item/book/granter/trait/tagger = 1,
		/obj/item/book/granter/crafting_recipe/tribal/sorrows = 1
	)

//Eighties
/datum/outfit/loadout/eightiesmelee
	name = "Eighties Path-Maker"
	suit = /obj/item/clothing/suit/armor/light/tribal/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		///obj/item/gun/ballistic/shotgun/trench = 1,
		///obj/item/ammo_box/shotgun/buck = 2,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/reagent_containers/pill/patch/turbo = 2,
		/obj/item/reagent_containers/pill/patch/jet = 2
	)

/datum/outfit/loadout/eightiesranged
	name = "Eighties Road-Warrior"
	suit = /obj/item/clothing/suit/armor/medium/tribal/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		///obj/item/gun/ballistic/revolver/single_shotgun = 1,
		///obj/item/ammo_box/shotgun/buck = 1,
		///obj/item/gun/ballistic/automatic/smg/greasegun/worn = 1,
		///obj/item/ammo_box/magazine/greasegun = 2,
		/obj/item/reagent_containers/pill/healingpowder = 2
	)

/datum/outfit/loadout/eightiesshaman
	name = "Eighties Lay-Mechanic"
	suit = /obj/item/clothing/suit/armor/light/tribal/eighties
	backpack_contents = list(
		/obj/item/clothing/under/f13/eighties = 1,
		/obj/item/clothing/under/f13/female/eighties = 1,
		///obj/item/gun/ballistic/revolver/single_shotgun = 1,
		///obj/item/ammo_box/shotgun/slug = 1,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/book/granter/crafting_recipe/tribal/eighties = 1
	)

//Wayfarers
/datum/outfit/loadout/wayfarermelee
	name = "Wayfarer Warrior"
	suit = /obj/item/clothing/suit/armor/light/tribal/geckocloak
	backpack_contents = list(
		/obj/item/clothing/under/f13/wayfarer = 1,
		/obj/item/clothing/head/helmet/f13/wayfarer/hunter = 1,
		///obj/item/twohanded/spear/bonespear = 1,
		/obj/item/reagent_containers/pill/bitterdrink = 1,
	)


/datum/outfit/loadout/wayfarershaman
	name = "Wayfarer Shaman"
	suit = /obj/item/clothing/suit/armor/light/tribal/geckocloak
	backpack_contents = list(
		/obj/item/storage/bag/plants=1,
		/obj/item/cultivator=1,
		/obj/item/reagent_containers/glass/bucket/wood=1,
		/obj/item/warpaint_bowl=1,
		/obj/item/melee/onehanded/knife/ritualdagger = 1,
		/obj/item/stack/medical/gauze/improvised = 1,
		/obj/item/reagent_containers/pill/healingpowder = 1,
		/obj/item/book/granter/crafting_recipe/tribal/wayfarer = 1,
	)

//Rustwalkers
/datum/outfit/loadout/rustwalkersscipher
	name = "Rustwalkers Scipher"
	suit = /obj/item/clothing/suit/armor/light/tribal/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		///obj/item/gun/ballistic/automatic/autopipe = 1,
		///obj/item/ammo_box/magazine/autopipe = 2,
		/obj/item/reagent_containers/pill/healingpowder = 2,
		/obj/item/circular_saw = 1
	)

/datum/outfit/loadout/rustwalkersscrapper
	name = "Rustwalkers Scrapper"
	suit = /obj/item/clothing/suit/armor/light/tribal/rustwalkers
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		///obj/item/gun/ballistic/revolver/hobo/pepperbox = 1,
		///obj/item/ammo_box/c10mm = 1,
		/obj/item/circular_saw = 1,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 1,
	)

/datum/outfit/loadout/rustwalkersshaman
	name = "Rustwalkers Brain-Jack"
	backpack_contents = list(
		/obj/item/clothing/under/f13/rustwalkers = 1,
		/obj/item/clothing/under/f13/female/rustwalkers = 1,
		///obj/item/gun/ballistic/revolver/hobo/knucklegun = 1,
		///obj/item/ammo_box/c45rev = 2,
		/obj/item/circular_saw = 1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2,
		/obj/item/storage/belt/utility/full = 1,
		/obj/item/book/granter/crafting_recipe/tribal/rustwalkers = 1

	)
//Bone Dancer
/datum/outfit/loadout/bonedancerexile
	name = "Bone Dancer Exile"
	backpack_contents = list(
		/obj/item/clothing/under/f13/bone = 1,
		/obj/item/clothing/head/helmet/skull/bone = 1,
		/obj/item/book/granter/crafting_recipe/tribal/bone = 1,
		///obj/item/twohanded/spear/bonespear = 1,
		/obj/item/warpaint_bowl=1,
		/obj/item/reagent_containers/pill/patch/healpoultice = 2
	)

/////////////////
////Redwater/////
/////////////////

//Redwater Slave
/datum/job/wasteland/f13redwaterslave
	title = "Redwater Slave"
	flag = F13LEGIONSLAVE
	faction = FACTION_WASTELAND
	total_positions = 10
	spawn_positions = 10
	supervisors = "the slavers in Redwater, or your personal owner."
	description = "Either you were captured by the Redwater slavers, or born into servitude.  Either way your life has been one of being treated as property to another human since the explosive collar was fitted to your neck.  Freedom feels like a dream long gone, hidden behind the fear of the signaler that would cause your head to sail off in an arc.  Despite that you've found a place in their society, and are a protected commodity.  Be you a field worker, sex slave, or pack mule.  The good news is, as long as you serve a purpose then you'll probably get to live, and being alive means a chance to escape."
	selection_color = "#dcba97"

	outfit = /datum/outfit/loadout/redwaterslave

	loadout_options = list(
	/datum/outfit/loadout/worker,	//Fields or the bar, this is just a generic workman/woman.
	/datum/outfit/loadout/pack,		//pack mule slave
	/datum/outfit/loadout/entertainer, //Dancer or musicion slave
	/datum/outfit/loadout/sex			//p obvs fam
	)

	access = list()		//we can expand on this and make alterations as people suggest different loadouts
	minimal_access = list()
	matchmaking_allowed = list(
		/datum/matchmaking_pref/friend = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/rival = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/mentor = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/disciple = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/patron = list(
			/datum/job/wasteland/f13wastelander,
		),
		/datum/matchmaking_pref/protegee = list(
			/datum/job/wasteland/f13wastelander,
		),
	)

/datum/outfit/loadout/redwaterslave
	name = "Redwater Slave"
	uniform = /obj/item/clothing/under/f13/rag
	back = /obj/item/storage/backpack/satchel/explorer
	neck = /obj/item/electropack/shockcollar

	backpack_contents =  list(
		/obj/item/reagent_containers/pill/healingpowder =1)

/datum/outfit/job/wastelander/f13redwaterslave/pre_equip(mob/living/carbon/human/H)
	. = ..()
	if(prob(10))
		head = pick(/obj/item/clothing/head/f13/servant,\
			/obj/item/clothing/head/f13/hairband)

//Worker
/datum/outfit/loadout/worker
	name = "Worker"
	backpack_contents = list(
		/obj/item/clothing/shoes/f13/diesel =1,
		/obj/item/clothing/gloves/color/brown =1,
		/obj/item/clothing/head/sombrero = 1)


//Pack Mule
/datum/outfit/loadout/pack
	name = "Pack"
	backpack_contents = list(
		/obj/item/clothing/shoes/f13/diesel =1,
		/obj/item/storage/backpack/duffelbag =1,
		/obj/item/storage/box = 4,
		/obj/item/book/granter/trait/trekking = 1)

//Entertainer
/datum/outfit/loadout/entertainer
	name = "Entertainer"
	backpack_contents = list(
		/obj/item/clothing/shoes/f13/diesel =1,
		/obj/item/choice_beacon/music = 1,
		/obj/item/musicaltuner = 1)

//Sex
/datum/outfit/loadout/sex
	name = "Domestic Slave"
	backpack_contents = list(
		///obj/item/storage/bag/money/small = 1,
		/obj/item/clothing/under/dress/skirt/swept =1,
		/obj/item/clothing/under/shorts/jeanbshorts =1)

//Redwater Slave Spawn Point code
/obj/effect/landmark/start/redwaterSlave
	name = "Redwater Slave"
	icon_state = "Wastelander"
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE

//Redwater Resident Spawn Point code
/obj/effect/landmark/start/redwateresident
	name = "Redwater Resident"
	icon_state = "Wastelander"
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE

//Redwater Watcher Spawn Point code
/obj/effect/landmark/start/redwaterwatcher
	name = "Redwater Watcher"
	icon_state = "Wastelander"
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE

/datum/job/wasteland/f13overboss
	title = "Redwater Overboss"
	flag = F13MOBBOSS
	faction = FACTION_WASTELAND
	department_head = list("Captain")
	head_announce = list("Security")
	faction = FACTION_WASTELAND
	social_faction = FACTION_RAIDERS
	total_positions = 0
	spawn_positions = 0
	description = "You're the big gun here, pardner. As the Overboss of Redwater, you have the unfortunate position of being a mayor to all these hooligans and miscreants. Use your supply of caps and bullets to keep people in order. "
	supervisors = "Your conscience (HAH), wallet, and constituents."
	selection_color = "#df80af"
	exp_requirements = 0
	exp_type = EXP_TYPE_WASTELAND

	loadout_options = list(
			/datum/outfit/loadout/overbossmelee,	//goliath
			/datum/outfit/loadout/overbossamr,		//AMR
			/datum/outfit/loadout/overbossranged, //moni + drugs
	)

	outfit = /datum/outfit/job/wasteland/f13raider/overboss


/datum/outfit/job/wasteland/f13raider/overboss
	name = "Overboss"
	jobtype = /datum/job/wasteland/f13overboss

	id = null
	ears = null
	shoes = /obj/item/clothing/shoes/laceup
	uniform = /obj/item/clothing/under/suit/charcoal
	backpack = /obj/item/storage/backpack/satchel/explorer
	satchel = /obj/item/storage/backpack/satchel/explorer
	gloves = /obj/item/clothing/gloves/f13/military
	belt = /obj/item/kit_spawner/raider/boss
	r_pocket = /obj/item/flashlight/flare
	backpack_contents = list(
		/obj/item/storage/pill_bottle/chem_tin/radx,
		/obj/item/restraints/handcuffs = 2,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
	//	/obj/item/storage/bag/money/small/raider = 1,
		/obj/item/radio/redwater = 1,
		/obj/item/melee/onehanded/knife/bowie = 1,
		/obj/item/melee/onehanded/knife/hunting = 1,
		/obj/item/radio/redwater = 1
		)


/datum/outfit/job/wasteland/f13raider/overboss/pre_equip(mob/living/carbon/human/H)
	. = ..()
	uniform = pick(
		/obj/item/clothing/under/f13/merca, \
		/obj/item/clothing/under/f13/mercc, \
		/obj/item/clothing/under/f13/cowboyb, \
		/obj/item/clothing/under/f13/cowboyg, \
		/obj/item/clothing/under/f13/raider_leather, \
		/obj/item/clothing/under/f13/raiderrags, \
		/obj/item/clothing/under/pants/f13/ghoul, \
		/obj/item/clothing/under/jabroni)
	suit = pick(
		/obj/item/clothing/suit/armor/light/raider/supafly,\
		/obj/item/clothing/suit/armor/medium/raider/yankee, \
		/obj/item/clothing/suit/armor/light/raider/sadist, \
		/obj/item/clothing/suit/armor/medium/raider/blastmaster, \
		/obj/item/clothing/suit/armor/medium/raider/badlands, \
		/obj/item/clothing/suit/armor/light/raider/painspike)
	if(prob(10))
		mask = pick(
			/obj/item/clothing/mask/bandana/red,\
			/obj/item/clothing/mask/bandana/blue,\
			/obj/item/clothing/mask/bandana/green,\
			/obj/item/clothing/mask/bandana/gold,\
			/obj/item/clothing/mask/bandana/black,\
			/obj/item/clothing/mask/bandana/skull)
	head = pick(
		/obj/item/clothing/head/sombrero,\
		/obj/item/clothing/head/helmet/f13/raider,\
		/obj/item/clothing/head/helmet/f13/raider/eyebot,\
		/obj/item/clothing/head/helmet/f13/raider/arclight,\
		/obj/item/clothing/head/helmet/f13/raider/blastmaster,\
		/obj/item/clothing/head/helmet/f13/raider/yankee,\
		/obj/item/clothing/head/helmet/f13/raider/psychotic,\
		/obj/item/clothing/head/helmet/f13/fiend)
	shoes = pick(
			/obj/item/clothing/shoes/jackboots,\
			/obj/item/clothing/shoes/f13/raidertreads)

	//suit_store = pick(
	//	/obj/item/gun/ballistic/revolver/detective,
	//	/obj/item/gun/ballistic/automatic/pistol/ninemil,
	//	/obj/item/gun/ballistic/automatic/pistol/m1911,
	//	/obj/item/gun/ballistic/automatic/pistol/type17,
	//	)

/datum/outfit/loadout/overbossmelee
	name = "Bruteboss"
	backpack_contents = list(
		/obj/item/melee/powerfist/f13/goliath = 1,
		/obj/item/clothing/suit/armor/medium/combat/mk2 = 1,
		/obj/item/clothing/head/helmet/f13/raider/arclight = 1,
		/obj/item/reagent_containers/hypospray/medipen/psycho = 2,
		/obj/item/reagent_containers/pill/patch/turbo = 2)

//AMR
/datum/outfit/loadout/overbossamr
	name = "Overpenetration"
	backpack_contents = list(
		/obj/item/clothing/suit/armor/light/duster/battlecoat = 1,
	//	/obj/item/ammo_box/magazine/amr = 1,
		/obj/item/circuitboard/machine/autolathe/ammo/improvised = 1)
	//	/obj/item/gun/ballistic/rifle/mag/antimateriel = 1)

//Sex
/datum/outfit/loadout/overbossranged
	name = "Crooked Mayor"
	backpack_contents = list(
	//	/obj/item/storage/bag/money/small = 1,
	//	/obj/item/gun/ballistic/revolver/colt357/mateba = 1,
		/obj/item/clothing/under/suit/black = 1,
		/obj/item/reagent_containers/glass/bottle/chloralhydrate = 1,
		/obj/item/stack/f13Cash/caps/threefivezero = 1)

/obj/effect/landmark/start/overboss
	name = "Redwater Overboss"
	icon_state = "Wastelander"
	jobspawn_override = TRUE
	delete_after_roundstart = FALSE
