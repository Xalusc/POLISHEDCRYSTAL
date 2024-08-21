CeladonPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CELADON_CITY, 5
	warp_event  6,  7, CELADON_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalErikaScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumpstd, happinesschecknpc, -1
	object_event  1,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FPharmacistText, -1
	object_event 11,  5, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FCooltrainerfText, -1
	object_event 11,  6, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FLassText, -1

PokemonJournalErikaScript:
	setflag ENGINE_READ_ERIKA_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "LEADER ERIKA!"

	para "Rumor has it that"
	line "if you peek into"
	cont "CELADON GYM, you"

	para "can often see"
	line "ERIKA snoozing."
	done

CeladonPokeCenter1FPharmacistText:
	text "TEAM ROCKET's"
	line "hideout is in the"

	para "basement of the"
	line "GAME CORNER."

	para "Oh, wait. That was"
	line "three years ago."
	done

CeladonPokeCenter1FCooltrainerfText:
	text "ERIKA is a master"
	line "of grass #MON."

	para "She'll make you"
	line "pay if you don't"
	cont "watch yourself."
	done

CeladonPokeCenter1FLassText:
	text "ERIKA isn't just"
	line "a GYM LEADER."

	para "She also lectures"
	line "at the UNIVERSITY."
	done
