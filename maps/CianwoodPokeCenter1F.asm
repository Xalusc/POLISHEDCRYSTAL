CianwoodPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CIANWOOD_CITY, 3
	warp_event  6,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalChuckScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  6,  3, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuyScript, -1
	object_event  1,  5, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FLassText, -1
	object_event  9,  7, SPRITE_JUGGLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FSuperNerdText, -1
	object_event 11,  5, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FRichBoyText, -1

PokemonJournalChuckScript:
	setflag ENGINE_READ_CHUCK_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "LEADER CHUCK!"

	para "CHUCK is said to"
	line "really like sweet"
	cont "desserts."

	para "However, he has"
	line "also been seen"

	para "training under a"
	line "heavy waterfall"
	cont "to work them off."
	done

CianwoodGymGuyScript:
	checkevent EVENT_GOT_HM04_STRENGTH
	iffalsefwd .no_strength
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptextfaceplayer .WinText
	jumptextfaceplayer .Text

.no_strength
	faceplayer
	opentext
	writetext .Text
	waitbutton
	writetext .StrengthText1
	promptbutton
	verbosegivetmhm HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
	writetext .StrengthText2
	waitendtext

.Text:
	text "The #MON GYM"
	line "trainers here are"
	cont "macho bullies."

	para "If I stick around,"
	line "they might come"
	cont "after me."

	para "Here's some ad-"
	line "vice: the GYM"

	para "LEADER uses the"
	line "fighting-type."

	para "So you should"
	line "confound him with"
	cont "psychic #MON."

	para "Wipe out his #-"
	line "MON before they"

	para "can use their"
	line "physical strength."

	para "And those boulders"
	line "in the middle of"
	cont "the GYM?"

	para "If you don't move"
	line "them correctly,"

	para "you won't reach"
	line "the GYM LEADER."

	para "If you get stuck,"
	line "go outside."
	done

.StrengthText1:
	text "You can't move the"
	line "boulders aside?"

	para "Here, use this"
	line "and teach your"
	cont "#MON STRENGTH!"
	done

.StrengthText2:
	text "Good luck!"
	done

.WinText:
	text "<PLAYER>! You won!"
	line "I could tell by"
	cont "looking at you!"
	done

CianwoodPokeCenter1FLassText:
	text "Did you meet the"
	line "#MANIAC?"

	para "He's always brag-"
	line "ging about his"
	cont "rare #MON."
	done

CianwoodPokeCenter1FSuperNerdText:
	text "I love showing off"
	line "the #MON that"

	para "I've raised."
	line "Don't you?"

	para "I'm going to get"
	line "into a bunch of"

	para "battles, and show"
	line "off my #MON!"
	done

CianwoodPokeCenter1FRichBoyText:
	text "There's no #"
	line "MART in this town,"

	para "so we have to im-"
	line "port products from"
	cont "across the sea."
	done
