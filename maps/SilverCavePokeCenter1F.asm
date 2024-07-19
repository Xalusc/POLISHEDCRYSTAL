SilverCavePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  6,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalLanceScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  9,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokeCenterGrampsScript, -1
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 1, 2, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilverCavePokeCenter1FGrannyText, -1

PokemonJournalLanceScript:
	setflag ENGINE_READ_LANCE_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "CHAMPION LANCE!"

	para "LANCE has been"
	line "spotted buying"

	para "his capes at CEL-"
	line "ADON DEPT.STORE."
	done

SilverCavePokeCenterGrampsScript:
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	waitbutton
	readvar VAR_PKMN_JOURNALS
	ifequal 0, .ReadNone
	ifequal NUM_POKEMON_JOURNALS, .ReadThemAll
	jumpthisopenedtext

	text "Oh, you've read "
	text_decimal hScriptVar, 1, 2
	line "of them?"

	para "Not bad, but I've"
	line "read all 33!"
	done

.ReadNone:
	jumpthisopenedtext

	text "You haven't read"
	line "any? What a shame."

	para "#MON CENTERS"
	line "have most of them"
	cont "on their shelves,"

	para "but real fans like"
	line "me track down the"
	cont "rare issues."
	done

.ReadThemAll:
	writetext .ReadAllText
	promptbutton
	verbosegiveitem EXPERT_BELT
	iffalse_endtext
	setevent EVENT_GOT_EXPERT_BELT
	jumpthisopenedtext

.AfterText:
	text "That BELT's not"
	line "just for show."

	para "It'll power up your"
	line "#MON if they"
	cont "hold it."
	done

.GreetingText:
	text "In my youth I was"
	line "a talented trainer"
	cont "myself."

	para "Now I just read"
	line "about others in"
	cont "#MON JOURNAL."

	para "Are you a JOURNAL"
	line "reader too?"
	done

.ReadAllText:
	text "You've read them"
	line "all? Then you're"

	para "a JOURNAL expert"
	line "like me!"

	para "Take this to show"
	line "you're a fan!"
	done

SilverCavePokeCenter1FGrannyText:
	text "Trainers who seek"
	line "power climb MT."

	para "SILVER despite its"
	line "many dangers…"

	para "With their trusted"
	line "#MON, they must"

	para "feel they can go"
	line "anywhere…"
	done
