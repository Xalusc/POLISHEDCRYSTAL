Route32PokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, ROUTE_32, 1
	warp_event  6,  7, ROUTE_32, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalKurtScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  3,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FFishingGuruScript, -1
	object_event  8,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route32Pokecenter1FCooltrainerFText, -1
	object_event  0,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route32PokeCenter1FPokefanMScript, -1

PokemonJournalKurtScript:
	setflag ENGINE_READ_KURT_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "CRAFTSMAN KURT!"

	para "KURT does not let"
	line "anyone near while"

	para "he is making #"
	line "BALLS except his"

	para "granddaughter"
	line "MAIZIE."
	done

Route32Pokecenter1FFishingGuruScript:
	checkevent EVENT_GOT_OLD_ROD
	iftrue_jumptextfaceplayer .DoneText
	faceplayer
	opentext
	writetext .IntroText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	verbosegivekeyitem OLD_ROD
	writetext .AfterText
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.IntroText:
	text "This is a great"
	line "fishing spot."

	para "You saw people"
	line "fishing? How"
	cont "about you?"

	para "Would you like one"
	line "of my RODS?"
	done

.YesText:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

.AfterText:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your ROD."
	done

.NoText:
	text "Oh. That's rather"
	line "disappointing…"
	done

.DoneText:
	text "Yo, kid. How are"
	line "they biting?"
	done

Route32PokeCenter1FPokefanMScript:
	checkevent EVENT_GOT_LURE_BALL_FROM_FRENCHMAN
	iftrue_jumptextfaceplayer .Text5
	faceplayer
	opentext
	writetext .Text1
	yesorno
	iftruefwd .Yes
	writetext .Text2
	sjumpfwd .Continue
.Yes:
	writetext .Text3
.Continue
	promptbutton
	verbosegiveitem LURE_BALL
	iffalsefwd .NoRoom
	setevent EVENT_GOT_LURE_BALL_FROM_FRENCHMAN
	jumpthisopenedtext

	text "This BALL easily"
	line "catches #MON"
	cont "hooked on a ROD!"

	para "KURT of AZALEA"
	line "TOWN made it from"
	cont "an APRICORN."

	para "APRICORNS,"
	line "hourrah!"
	done

.NoRoom
	endtext

.Text1:
	text "Bonjour. How are"
	line "you? Do you know"
	cont "about APRICORNS?"
	done

.Text2:
	text "Non? What a waste!"
	line "I will show you"

	para "how great APRI-"
	line "CORNS are!"
	done

.Text3:
	text "Youpi! Way to go!"
	line "I feel so great,"

	para "I want to give you"
	line "this!"
	done

.Text5:
	text "KURT is the hero"
	line "of every APRICORN"
	cont "collector."

	para "APRICORNS,"
	line "hourrah!"
	done

Route32Pokecenter1FCooltrainerFText:
	text "What should I make"
	line "my #MON hold?"

	para "Maybe an item that"
	line "increases ATTACK"
	cont "power…"
	done
