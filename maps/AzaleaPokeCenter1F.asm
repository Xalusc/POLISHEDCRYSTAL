AzaleaPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, AZALEA_TOWN, 1
	warp_event  6,  7, AZALEA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalBugsyScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  8,  4, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokeCenter1FCooltrainermScript, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FGentlemanText, -1
	object_event  8,  1, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FSightseermText, -1
	object_event  2,  5, SPRITE_MATRON, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AzaleaPokeCenter1FPokefanfText, -1

PokemonJournalBugsyScript:
	setflag ENGINE_READ_BUGSY_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "LEADER BUGSY!"

	para "BUGSY is reported"
	line "to have won the"

	para "Bug-Catching Con-"
	line "test so often that"

	para "he no longer par-"
	line "ticipates."
	done

AzaleaPokeCenter1FCooltrainermScript:
	checktime (1 << EVE) | (1 << NITE)
	iftrue_jumptextfaceplayer .NiteText
	jumpthistextfaceplayer

	text "For a guy who"
	line "makes # BALLS,"

	para "KURT isn't much of"
	line "a trainer."

	para "He does have a"
	line "#MON, but he"

	para "doesn't use it"
	line "much."
	done

.NiteText:
	text "KURT and PROF.OAK"
	line "are old friends."

	para "They're also close"
	line "with AGATHA, a"

	para "former member of"
	line "the ELITE FOUR."
	done

AzaleaPokeCenter1FGentlemanText:
	text "Do your #MON"
	line "know HM moves?"

	para "Those moves can"
	line "be used even if"

	para "your #MON has"
	line "fainted."
	done

AzaleaPokeCenter1FSightseermText:
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "#MON in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

AzaleaPokeCenter1FPokefanfText:
	text "Do you know about"
	line "APRICORNS?"

	para "Crack one open,"
	line "hollow it out and"

	para "fit it with a"
	line "special device."

	para "Then you can catch"
	line "#MON with it."

	para "Before # BALLS"
	line "were invented,"

	para "everyone used"
	line "APRICORNS."
	done
