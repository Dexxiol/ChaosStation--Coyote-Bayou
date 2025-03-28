/*
	The server logs all traffic and signal data. Once it records the signal, it sends
	it to the subspace broadcaster.

	Store a maximum of 100 logs and then deletes them.
*/

/obj/machinery/telecomms/server
	name = "telecommunication server"
	icon_state = "comm_server"
	desc = "A machine used to store data and network statistics."
	density = TRUE
	use_power = IDLE_POWER_USE
	idle_power_usage = 15
	circuit = /obj/item/circuitboard/machine/telecomms/server
	var/list/log_entries = list()
	var/totaltraffic = 0 // gigabytes (if > 1024, divide by 1024 -> terrabytes)

/obj/machinery/telecomms/server/Initialize()
	. = ..()

/obj/machinery/telecomms/server/RefreshParts()
	idle_power_usage = 15
	for(var/obj/item/stock_parts/manipulator/P in component_parts)
		idle_power_usage -= (P.rating) //has 2 manipulators

/obj/machinery/telecomms/server/receive_information(datum/signal/subspace/vocal/signal, obj/machinery/telecomms/machine_from)
	// can't log non-vocal signals
	if(!istype(signal) || !signal.data["message"] || !is_freq_listening(signal))
		return

	if(traffic > 0)
		totaltraffic += traffic // add current traffic to total traffic

	// Delete particularly old logs
	if(LAZYLEN(log_entries) >= 400) //[list].len is not safe
		log_entries.Cut(1, 2)

	var/datum/comm_log_entry/log = new
	log.parameters["mobtype"] = signal.virt.source.type
	log.parameters["name"] = signal.data["name"]
	log.parameters["job"] = signal.data["job"]
	log.parameters["message"] = signal.data["message"]
	log.parameters["language"] = signal.language

	// If the signal is still compressed, make the log entry gibberish
	var/compression = signal.data["compression"]
	if(compression > 0)
		log.input_type = "Corrupt File"
		log.parameters["name"] = Gibberish(signal.data["name"], compression + 50)
		log.parameters["job"] = Gibberish(signal.data["job"], compression + 50)
		log.parameters["message"] = Gibberish(signal.data["message"], compression + 50)

	// Give the log a name and store it
	var/identifier = num2text( rand(-1000,1000) + world.time )
	log.name = "data packet ([md5(identifier)])"
	log_entries.Add(log)

	var/can_send = relay_information(signal, /obj/machinery/telecomms/hub)
	if(!can_send)
		relay_information(signal, /obj/machinery/telecomms/broadcaster)


// Simple log entry datum
/datum/comm_log_entry
	var/input_type = "Speech File"
	var/name = "data packet (#)"
	var/parameters = list()  // copied from signal.data above


// Preset Servers
/obj/machinery/telecomms/server/presets
	network = "tcommsat"

/obj/machinery/telecomms/server/presets/Initialize()
	. = ..()
	name = id


/obj/machinery/telecomms/server/presets/science
	id = "Science Server"
	freq_listening = list(FREQ_SCIENCE)
	autolinkers = list("science")

/obj/machinery/telecomms/server/presets/medical
	id = "Medical Server"
	freq_listening = list(FREQ_MEDICAL)
	autolinkers = list("medical")

/obj/machinery/telecomms/server/presets/supply
	id = "Supply Server"
	freq_listening = list(FREQ_SUPPLY)
	autolinkers = list("supply")

/obj/machinery/telecomms/server/presets/service
	id = "Service Server"
	freq_listening = list(FREQ_SERVICE)
	autolinkers = list("service")

/obj/machinery/telecomms/server/presets/common
	id = "Common Server"
	freq_listening = list()
	autolinkers = list("common")

/obj/machinery/telecomms/server/presets/vault
	id = "Vault Server"
	freq_listening = list(FREQ_VAULT)
	autolinkers = list("vault")

/obj/machinery/telecomms/server/presets/ncr
	id = "NCR Server"
	freq_listening = list(FREQ_NCR)
	autolinkers = list("ncr")

/obj/machinery/telecomms/server/presets/bos
	id = "BOS Server"
	freq_listening = list(FREQ_BOS)
	autolinkers = list("bos")

/obj/machinery/telecomms/server/presets/enclave
	id = "Enclave Server"
	freq_listening = list(FREQ_ENCLAVE)
	autolinkers = list("enclave")

/obj/machinery/telecomms/server/presets/town
	id = "Town Server"
	freq_listening = list(FREQ_TOWN)
	autolinkers = list("town")

/obj/machinery/telecomms/server/presets/den
	id = "Den Server"
	freq_listening = list(FREQ_TOWN_MAYOR)
	autolinkers = list("den")

/obj/machinery/telecomms/server/presets/legion
	id = "Larper Server (Ask for their manager, they love that)"
	freq_listening = list(FREQ_TOWN_PD)
	autolinkers = list("legion")
///man fuck telecomms
/obj/machinery/telecomms/server/presets/ranger
	id = "Ranger Server"
	freq_listening = list(FREQ_BIKER)
	autolinkers = list("ranger")

/obj/machinery/telecomms/server/presets/khans
	id = "Khans Server"
	freq_listening = list(FREQ_TOWN_COMMERCE)
	autolinkers = list("khans")

//Common and other radio frequencies for people to freely use
/obj/machinery/telecomms/server/presets/common/Initialize()
	. = ..()
	for(var/i = MIN_FREQ, i <= MAX_FREQ, i += 2)
		freq_listening |= i

/obj/machinery/telecomms/server/presets/command
	id = "Command Server"
	freq_listening = list(FREQ_COMMAND)
	autolinkers = list("command")

/obj/machinery/telecomms/server/presets/responders
	id = "Responders Server"
	freq_listening = list(FREQ_RESPONDERS)
	autolinkers = list("responders")

/obj/machinery/telecomms/server/presets/engineering
	id = "Engineering Server"
	freq_listening = list(FREQ_ENGINEERING)
	autolinkers = list("engineering")

/obj/machinery/telecomms/server/presets/security
	id = "Security Server"
	freq_listening = list(FREQ_SECURITY)
	autolinkers = list("security")

/obj/machinery/telecomms/server/presets/common/birdstation/Initialize()
	. = ..()
	freq_listening = list()
