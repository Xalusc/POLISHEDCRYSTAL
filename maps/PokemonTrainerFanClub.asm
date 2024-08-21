PokemonTrainerFanClub_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 17, SAFFRON_CITY, 16
	warp_event  7, 17, SAFFRON_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  0, 10, BGEVENT_READ, PokemonJournalBrunoScript
	bg_event  1, 10, BGEVENT_READ, PokemonJournalBrunoScript

	def_object_events

PokemonJournalBrunoScript:
	setflag ENGINE_READ_BRUNO_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "ELITE FOUR BRUNO!"

	para "BRUNO apparently"
	line "joined the ELITE"

	para "FOUR out of his"
	line "burning ambition"

	para "to battle the"
	line "best trainers."
	done
