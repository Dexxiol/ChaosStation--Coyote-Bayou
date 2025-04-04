/datum/crafting_recipe/binoculars
	name = "Binoculars"
	result = /obj/item/binoculars
	time = 60
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/sheet/glass = 5)
	tools = list(TOOL_SCREWDRIVER,TOOL_WORKBENCH)
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/////////////////
//Large Objects//
/////////////////

/datum/crafting_recipe/ncrgate
	name = "NCR reinforced door"
	result = /obj/machinery/door/unpowered/secure_NCR
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/sheet/mineral/wood = 20,)
	time = 60
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/legiongate
	name = "Larper iron gate"
	result = /obj/machinery/door/unpowered/secure_legion
	reqs = list(/obj/item/stack/sheet/metal = 25)
	time = 60
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/gate_bos
	name = "Brotherhood steel door"
	result = /obj/machinery/door/unpowered/secure_bos
	reqs = list(/obj/item/stack/sheet/metal = 35)
	time = 60
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/gate_khanate
	name = "Khans steel-reinforced wood door"
	result = /obj/machinery/door/unpowered/securedoor/khandoor
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 10,)
	time = 60
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/gate_biker
	name = "Hell's Nomad wood door"
	result = /obj/machinery/door/unpowered/securedoor/bikerdoor
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/sheet/mineral/wood = 10,)
	time = 60
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/plant
	name = "Potted plant"
	result = /obj/item/kirbyplants/random
	reqs = list(/obj/item/stack/sheet/mineral/sandstone=5,
				/obj/item/seeds=1)
	time = 20
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/toilet
	name = "Toilet"
	result = /obj/structure/toilet
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 5)
	time = 50
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/sink
	name = "Sink"
	result = /obj/structure/sink
	reqs = list(/obj/item/stack/sheet/metal = 5,
				/obj/item/stack/crafting/metalparts = 5)
	time = 50
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/shower
	name = "Shower"
	result = /obj/machinery/shower
	reqs = list(/obj/item/stack/sheet/metal = 10,
				/obj/item/stack/crafting/metalparts = 10)
	tools = list(TOOL_WRENCH, TOOL_SCREWDRIVER)
	time = 80
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/showercurtain
	name = "Shower Curtains"
	reqs = 	list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/plastic = 2,
				/obj/item/stack/rods = 1)
	result = /obj/structure/curtain
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/curtain
	name = "Curtains"
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/rods = 1)
	result = /obj/structure/curtain
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/dogbed
	name = "Dog Bed"
	result = /obj/structure/bed/dogbed
	reqs = 	list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/stack/sheet/mineral/wood = 5)
	time = 10
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/junk_table
	name = "Makeshift Bar Table"
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/stack/sheet/mineral/wood = 2)
	result = /obj/structure/table/wood/junk
	time = 10
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

///////////////////////////
//Scavenging and Tinkering//
///////////////////////////

/datum/crafting_recipe/pico_manip
	name = "Delicate Mechanism"
	result = /obj/item/stock_parts/manipulator/pico
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stock_parts/manipulator/nano = 1)
	time = 5
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/super_matter_bin
	name = "Storage Bin"
	result = /obj/item/stock_parts/matter_bin/super
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stock_parts/matter_bin/adv = 1)
	time = 5
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/phasic_scanning
	name = "Advanced Antenna"
	result = /obj/item/stock_parts/scanning_module/phasic
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stock_parts/scanning_module/adv = 1)
	time = 5
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/super_capacitor
	name = "Advanced Capacitor"
	result = /obj/item/stock_parts/capacitor/super
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stock_parts/capacitor/adv = 1)
	time = 5
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/ultra_micro_laser
	name = "Laser Diode"
	result = /obj/item/stock_parts/micro_laser/ultra
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stock_parts/micro_laser/high = 1)
	time = 5
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/pin_removal
	name = "Render gun unusable"
	result = /obj/item/gun
	reqs = list(/obj/item/gun = 1)
	parts = list(/obj/item/gun = 1)
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER, TOOL_WIRECUTTER)
	time = 50
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/pin_removal/check_requirements(mob/user, list/collected_requirements)
	var/obj/item/gun/G = collected_requirements[/obj/item/gun][1]
	if (G.no_pin_required || !G.pin)
		return FALSE
	return TRUE

/datum/crafting_recipe/reset_vrboard
	name = "Reset VR Sleeper Board"
	time = 15
	reqs = list(/obj/item/circuitboard/machine/vr_sleeper = 1)
	tools = list(/obj/item/multitool)
	result = /obj/item/circuitboard/machine/vr_sleeper
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/set_vrboard
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	time = 15
	always_available = FALSE

/datum/crafting_recipe/set_vrboard/bos
	name = "Modify VR Sleeper Board (BoS)"
	result = /obj/item/circuitboard/machine/vr_sleeper/bos
	reqs = list(/obj/item/circuitboard/machine/vr_sleeper = 1)
	tools = list(/obj/item/multitool)

/datum/crafting_recipe/set_vrboard/followers
	name = "Modify VR Sleeper Board (Followers)"
	result = /obj/item/circuitboard/machine/vr_sleeper/followers
	reqs = list(/obj/item/circuitboard/machine/vr_sleeper = 1)
	tools = list(/obj/item/multitool)

/datum/crafting_recipe/set_vrboard/den
	name = "Modify VR Sleeper Board (Den)"
	result = /obj/item/circuitboard/machine/vr_sleeper/den
	reqs = list(/obj/item/circuitboard/machine/vr_sleeper = 1)
	tools = list(/obj/item/multitool)

/datum/crafting_recipe/radiokeyresponder
	name = "Responders Encryption Key"
	result = /obj/item/encryptionkey/headset_responders
	reqs = list(/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/crafting/metalparts = 1)
	tools = list(/obj/item/multitool)
	always_available = FALSE

/datum/crafting_recipe/bowman
	name = "Reinforced radioheadset"
	result = /obj/item/radio/headset/upgraded
	reqs = list(/obj/item/radio/headset = 1,
				/obj/item/stack/crafting/metalparts = 1,
				/obj/item/stack/sheet/cloth = 2)
	tools = list(/obj/item/multitool,
				/obj/item/screwdriver)
	always_available = FALSE

//////////////////////
//Burial & Execution//
//////////////////////

/datum/crafting_recipe/rip
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/rip/gravemarker
	name = "Gravemarker"
	result = /obj/structure/statue/wood/headstonewood
	reqs = list(/obj/item/stack/sheet/mineral/wood = 3)
	time = 10

/datum/crafting_recipe/rip/coffin
	name = "Coffin"
	result = /obj/structure/closet/crate/coffin
	reqs = list(/obj/item/stack/sheet/mineral/wood = 5)
	time = 20

/datum/crafting_recipe/rip/blackcoffin
	name = "Black Coffin"
	result = /obj/structure/closet/crate/coffin/blackcoffin
	tools = list(/obj/item/weldingtool,
				/obj/item/screwdriver)
	reqs = list(/obj/item/stack/sheet/cloth = 1,
				/obj/item/stack/sheet/mineral/wood = 5,
				/obj/item/stack/sheet/metal = 1)
	time = 20

/datum/crafting_recipe/rip/metalcoffin
	name = "Metal Coffin"
	result =/obj/structure/closet/crate/coffin/metalcoffin
	tools = list(/obj/item/weldingtool,
				/obj/item/screwdriver)
	reqs = list(/obj/item/stack/sheet/metal = 5)
	time = 20

/datum/crafting_recipe/rip/crossexecution
	name = "Merciless Cross"
	result = /obj/structure/cross
	time = 15
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10)

/datum/crafting_recipe/rip/gallows
	name = "Gallows"
	result = /obj/structure/gallow
	time = 15
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10)

/datum/crafting_recipe/rip/guillotine
	name = "Guillotine"
	result = /obj/structure/guillotine
	time = 150 // Building a functioning guillotine takes time
	reqs = list(/obj/item/stack/sheet/plasteel = 3,
				/obj/item/stack/sheet/mineral/wood = 20,
				/obj/item/stack/cable_coil = 10)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)

/datum/crafting_recipe/rip/femur_breaker
	name = "Femur Breaker"
	result = /obj/structure/femur_breaker
	time = 150
	reqs = list(/obj/item/stack/sheet/metal = 20,
				/obj/item/stack/cable_coil = 30)
	tools = list(TOOL_SCREWDRIVER, TOOL_WRENCH, TOOL_WELDER)


/datum/crafting_recipe/shutters/old
	name = "Shutters"
	reqs = list(/obj/item/stack/sheet/prewar = 10, //Changed to use more readily available Pre-War Alloys for CB. Maybe we'll see more use out of them this way.
				/obj/item/stack/cable_coil = 10,
				/obj/item/electronics/airlock = 1
				)
	result = /obj/machinery/door/poddoor/shutters/old/preopen
	tools = list(TOOL_SCREWDRIVER, TOOL_MULTITOOL, TOOL_WIRECUTTER, TOOL_WELDER)
	time = 15 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/blast_doors
	name = "Blast Door"
	reqs = list(/obj/item/stack/sheet/prewar = 20, //Again, changed to use more readily available materials.
				/obj/item/stack/cable_coil = 15,
				/obj/item/electronics/airlock = 1
				)
	result = /obj/machinery/door/poddoor/preopen
	tools = list(TOOL_SCREWDRIVER, TOOL_MULTITOOL, TOOL_WIRECUTTER, TOOL_WELDER)
	time = 30 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/shutters/window
	name = "Windowed Shutters"
	reqs = list(/obj/item/stack/sheet/plasteel = 5,
				/obj/item/stack/sheet/rglass = 10,
				/obj/item/stack/cable_coil = 10,
				/obj/item/electronics/airlock = 1
				)
	result = /obj/machinery/door/poddoor/shutters/window/preopen
	tools = list(TOOL_SCREWDRIVER, TOOL_MULTITOOL, TOOL_WIRECUTTER, TOOL_WELDER)
	time = 15 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/*
/datum/crafting_recipe/bloodsucker/vassalrack
	name = "Persuasion Rack"
	//desc = "For converting crewmembers into loyal Vassals."
	result = /obj/structure/bloodsucker/vassalrack
	tools = list(/obj/item/weldingtool,
					//obj/item/screwdriver,
					/obj/item/wrench
					)
	reqs = list(/obj/item/stack/sheet/mineral/wood = 3,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/restraints/handcuffs/cable = 2,
				//obj/item/storage/belt = 1,
				//obj/item/stack/sheet/animalhide = 1,
				//obj/item/stack/sheet/leather = 1,
				//obj/item/stack/sheet/plasteel = 5
				)
		//parts = list(/obj/item/storage/belt = 1
		//			 )
	time = 150
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE	// Disabled until learned
*/

///////////////////
//Various Things//
///////////////////

/datum/crafting_recipe/papersack
	name = "Paper Sack"
	result = /obj/item/storage/box/papersack
	time = 10
	reqs = list(/obj/item/paper = 5)
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/smallcarton
	name = "Small Carton"
	result = /obj/item/reagent_containers/food/drinks/sillycup/smallcarton
	time = 10
	reqs = list(/obj/item/stack/sheet/cardboard = 1)
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/picket_sign
	name = "Picket Sign"
	result = /obj/item/picket_sign
	reqs = list(/obj/item/stack/rods = 1,
				/obj/item/stack/sheet/cardboard = 2)
	time = 80
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/wheelchair
	name = "Wheelchair"
	result = /obj/vehicle/ridden/wheelchair
	reqs = list(/obj/item/stack/sheet/plasteel = 2,
				/obj/item/stack/rods = 8)
	time = 100
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/blackcarpet
	name = "Black Carpet"
	reqs = list(/obj/item/stack/tile/carpet = 50, /obj/item/toy/crayon/black = 1)
	result = /obj/item/stack/tile/carpet/black/fifty
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/paperframes
	name = "Paper Frames"
	result = /obj/item/stack/sheet/paperframes/five
	time = 10
	reqs = list(/obj/item/stack/sheet/mineral/wood = 5, /obj/item/paper = 20)
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/naturalpaper
	name = "Hand-Pressed Paper"
	time = 30
	reqs = list(/datum/reagent/water = 50, /datum/reagent/ash = 20, /obj/item/stack/sheet/mineral/wood = 1)
	result = /obj/item/paper_bin/bundlenatural
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/*
/datum/crafting_recipe/electrochromatic_kit
	name = "Electrochromatic Kit"
	result = /obj/item/electronics/electrochromatic_kit
	reqs = list(/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/cable_coil = 1)
	time = 5
	subcategory = CAT_TOOL
	category = CAT_MISC
	always_available = FALSE

/datum/crafting_recipe/heretic/codex
	name = "Codex Cicatrix"
	result = /obj/item/forbidden_book
	tools = list(/obj/item/pen)
	reqs = list(/obj/item/paper = 5,
				/obj/item/organ/eyes = 1,
				/obj/item/organ/heart = 1,
				/obj/item/stack/sheet/animalhide/human = 1)
	time = 150
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	always_available = FALSE


/datum/crafting_recipe/plunger
	name = "Plunger"
	result = /obj/item/plunger
	time = 1
	reqs = list(/obj/item/stack/sheet/plastic = 1,
				/obj/item/stack/sheet/mineral/wood = 1)
	category = CAT_MISC
	subcategory = CAT_TOOL

/datum/crafting_recipe/rcl
	name = "Makeshift Rapid Cable Layer"
	result = /obj/item/rcl/ghetto
	time = 40
	tools = list(TOOL_WELDER, TOOL_SCREWDRIVER, TOOL_WRENCH)
	reqs = list(/obj/item/stack/sheet/metal = 15)
	subcategory = CAT_TOOL
	category = CAT_MISC

/datum/crafting_recipe/command_banner
	name = "Command Banner"
	result = /obj/item/banner/command/mundane
	time = 40
	reqs = list(/obj/item/stack/rods = 2,
				/obj/item/clothing/under/rank/captain/parade = 1)
	subcategory = CAT_FURNITURE
	category = CAT_MISC

*/

/datum/crafting_recipe/shock_collar
	name = "Shock Collar"
	result = /obj/item/electropack/shockcollar
	reqs = list(/obj/item/stock_parts/capacitor = 1,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/sheet/leather = 1)
	tools = list(TOOL_SCREWDRIVER,TOOL_WORKBENCH)
	time = 30
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/rolling_paper
	name = "Rolling Paper"
	result = /obj/item/rollingpaper
	reqs = list(/obj/item/paper/natural = 1)
	time = 10
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/rolling_paper_bulk
	name = "Rolling Paper (Bulk)"
	result = /obj/item/storage/fancy/rollingpapers/makeshift
	reqs = list(/obj/item/paper/natural = 10,
				/obj/item/stack/sheet/cardboard = 1)
	time = 80
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/well
	name = "Water Well"
	result = /obj/structure/sink/well
	reqs = list(/obj/item/stack/sheet/metal = 20, /obj/item/stack/sheet/mineral/wood = 20, /obj/item/stack/sheet/mineral/sandstone = 5, /obj/item/weaponcrafting/string = 5, /obj/item/reagent_containers/glass/bucket =1)
	tools = list(TOOL_SHOVEL)
	time = 100
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/wateringcan
	name = "Watering Can"
	result = /obj/item/reagent_containers/glass/bucket/wateringcan
	reqs = list(/obj/item/stack/sheet/metal = 1, /obj/item/stack/sheet/plastic = 1)
	time = 10
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/skyfort_girder
	name = "Aerial Support Girder"
	result = /obj/item/stack/rods/scaffold
	reqs = list(
		/obj/item/stack/sheet/metal = 5,
		/obj/item/stack/sheet/plastic = 1,
		/obj/item/stack/sheet/prewar = 5,
		/obj/item/stack/sheet/bronze = 1
		)
	tools = list(TOOL_WORKBENCH)
	time = 10
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/skyfort_girder_ten
	name = "Aerial Support Girder (x10)"
	result = /obj/item/stack/rods/scaffold/ten
	reqs = list(
		/obj/item/stack/sheet/metal = 50,
		/obj/item/stack/sheet/plastic = 10,
		/obj/item/stack/sheet/prewar = 50,
		/obj/item/stack/sheet/bronze = 10
		)
	tools = list(TOOL_WORKBENCH)
	time = 20
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/portaturret
	name = "portable sentry turret"
	result = /obj/item/turret_box
	reqs = list(/obj/item/stack/sheet/metal = 20,
			/obj/item/stack/crafting/metalparts = 5,
			/obj/item/stack/crafting/goodparts = 3,
			/obj/item/stack/crafting/electronicparts = 10,
			/obj/item/stack/ore/blackpowder = 2,
			/obj/item/assembly/prox_sensor = 2,
			/obj/item/stack/cable_coil = 20,
			/obj/item/gun/ballistic/automatic/sportcarbine = 1
	)
	time = 5 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/* /datum/crafting_recipe/portaturret_nogun // todo: make a var on the box whether or not it was made with a gun
	name = "portable sentry turret (from scrap)"
	result = /obj/item/turret_box
	reqs = list(/obj/item/stack/sheet/metal = 25,
			/obj/item/stack/crafting/metalparts = 8,
			/obj/item/stack/crafting/goodparts = 4,
			/obj/item/stack/crafting/electronicparts = 10,
			/obj/item/assembly/prox_sensor = 2,
			/obj/item/stack/cable_coil = 20
	)
	tools = list(TOOL_WORKBENCH)
	time = 5 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC
	 */

//Nests
/datum/crafting_recipe/small_nest
	name = "small nest"
	result = /obj/structure/bed/small_nest
	reqs = list(/obj/item/stack/sheet/mineral/wood = 5)
	time = 5 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/large_nest
	name = "large nest"
	result = /obj/structure/bed/big_nest
	reqs = list(/obj/item/stack/sheet/mineral/wood = 10)
	time = 5 SECONDS
	subcategory = CAT_MISCELLANEOUS
	category = CAT_MISC

/datum/crafting_recipe/scrap_pa
	name = "Powered Scrap Suit"
	result = /obj/item/clothing/suit/armor/power_armor/t45b/raider
	reqs = list(/obj/item/stack/crafting/goodparts = 2,
				/obj/item/stack/crafting/metalparts = 5,
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stock_parts/manipulator/pico = 1,
				/obj/item/advanced_crafting_components/conductors = 1,
				/obj/item/stock_parts/cell/ammo/mfc = 1,
				/obj/item/stack/cable_coil = 30,
				/obj/item/stack/sheet/metal = 35,
				/obj/item/stack/sheet/bronze = 25)
	time = 35
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/scrap_pa_helm
	name = "Powered Scrap Suit Helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/t45b/raider
	reqs = list(/obj/item/stack/crafting/goodparts = 1,
				/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stock_parts/manipulator/pico = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 15,
				/obj/item/stack/sheet/bronze = 5)
	time = 25
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/repair_t45
	name = "Refurbished T-45b Power Armor"
	result = /obj/item/clothing/suit/armor/power_armor/t45b
	reqs = list(/obj/item/clothing/suit/armor/heavy/salvaged_pa/t45b = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stock_parts/manipulator/pico = 1,
				/obj/item/stock_parts/cell/ammo/mfc = 1)
	time = 35
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/repair_t45_helm
	name = "Refurbished T-45b Power Armor Helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/t45b
	reqs = list(/obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45b = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/electronicparts = 2)
	time = 25
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/repair_t45/hotrod
	name = "Refurbished T-45b Hotrod Power Armor"
	result = /obj/item/clothing/suit/armor/power_armor/t45b/hotrod
	reqs = list(/obj/item/clothing/suit/armor/heavy/salvaged_pa/t45b/hotrod = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/electronicparts = 5,
				/obj/item/stock_parts/manipulator/pico = 1,
				/obj/item/stock_parts/cell/ammo/mfc = 1)
	time = 35
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE

/datum/crafting_recipe/repair_t45_helm/hotrod
	name = "Refurbished T-45b Hotrod Power Armor Helmet"
	result = /obj/item/clothing/head/helmet/f13/power_armor/t45b/hotrod
	reqs = list(/obj/item/clothing/head/helmet/f13/heavy/salvaged_pa/t45b/hotrod = 1,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/crafting/electronicparts = 2)
	time = 25
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING
	always_available = FALSE


/datum/crafting_recipe/teachboy
	name = "Refurbish Educational Pip-Boy 2000"
	result = /obj/item/pda/teachboy
	reqs = list(/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 3)
	time = 10
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING

/datum/crafting_recipe/customid
	name = "Reprogrammable ID"
	result = /obj/item/card/id/selfassign
	reqs = list(/obj/item/stack/crafting/electronicparts = 2,
				/obj/item/stack/sheet/plastic = 2)
	time = 10
	category = CAT_CRAFTING
	subcategory = CAT_SCAVENGING

/datum/crafting_recipe/welding_fuel
	name = "Process Welding Fuel"
	result = /obj/item/reagent_containers/food/snacks/welding_fuel
	reqs = list(/datum/reagent/fuel = 30)
	tools = list(TOOL_WORKBENCH)
	time = 10
	category = CAT_MISC
	subcategory = CAT_MISCELLANEOUS
