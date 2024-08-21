PokemonFanClub_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, PokemonFanClubListenSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, PokemonFanClubBraggingSignText
	bg_event  0,  1, BGEVENT_READ, PokemonJournalGreenScript

	def_object_events
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CLEFAIRY, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, ClefairyDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  5,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  6,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PokemonFanClubReceptionistText, -1
	object_event  3,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyGuyScript, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PokemonFanClubTeacherText, -1
	pokemon_event  7,  3, ODDISH, SPRITEMOVEDATA_POKEMON, -1, -1, PAL_NPC_GREEN, FanClubOddishText, -1

	object_const_def
	const POKEMONFANCLUB_CLEFAIRY_DOLL

PokemonFanClubChairmanScript:
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue_jumptextfaceplayer PokemonFanClubChairmanMoreTalesToTellText
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftruefwd .HeardSpeech
	writetext PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse_jumpopenedtext PokemonFanClubChairmanHowDisappointingText
	writetext PokemonFanClubChairmanRapidashText
	promptbutton
.HeardSpeech:
	writetext PokemonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse_endtext
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	jumpopenedtext PokemonFanClubChairmanItsARareCandyText

PokemonFanClubClefairyGuyScript:
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue_jumptextfaceplayer PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer PokemonFanClubClefairyGuyClefairyIsSoAdorableText
	faceplayer
	opentext
	writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftruefwd .FoundClefairyDoll
	waitendtext
.FoundClefairyDoll:
	promptbutton
	writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	disappear POKEMONFANCLUB_CLEFAIRY_DOLL
	verbosegivekeyitem LOST_ITEM
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	endtext

PokemonJournalGreenScript:
	setflag ENGINE_READ_GREEN_JOURNAL
	jumpthistext

	text "#MON JOURNAL"

	para "SPECIAL FEATURE:"
	line "<PK><MN> TRAINER LEAF!"

	para "In addition to"
	line "being a powerful"
	cont "trainer, LEAF is"

	para "said to be fascin-"
	line "ated by legendary"
	cont "#MON."
	done

ClefairyDollScript:
	jumpthistext

	text "It's a CLEFAIRY!"
	line "Huh?"

	para "Oh, right. It's a"
	line "CLEFAIRY #"
	cont "DOLL."
	done

PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText:
	text "I'm the CHAIRMAN"
	line "of the #MON FAN"
	cont "CLUB."

	para "I've raised over"
	line "150 #MON."

	para "I'm very fussy"
	line "when it comes to"
	cont "#MON."

	para "Did you visit just"
	line "to hear about my"
	cont "#MON?"
	done

PokemonFanClubChairmanRapidashText:
	text "Good!"
	line "Then listen up!"

	para "So… my favorite"
	line "RAPIDASH…"

	para "It… cute… lovely…"
	line "smart… unbearably…"
	cont "plus… amazing… oh…"
	cont "you think so?…"
	cont "Too much… wild…"
	cont "beautiful… kindly…"
	cont "love it!"

	para "Hug it… when…"
	line "sleeping… warm and"
	cont "cuddly… Oh, and…"
	cont "spectacular…"
	cont "ravishing… simply"
	cont "divine…"
	cont "Oops! Look at the"
	cont "time! I've kept"
	cont "you too long!"
	done

PokemonFanClubChairmanIWantYouToHaveThisText:
	text "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done

PokemonFanClubChairmanItsARareCandyText:
	text "It's a RARE CANDY"
	line "that makes #MON"
	cont "stronger."

	para "I prefer making my"
	line "#MON stronger"

	para "by battling, so"
	line "you can have it."
	done

PokemonFanClubChairmanMoreTalesToTellText:
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my #-"
	cont "MON again?"

	para "No? Oh… I had more"
	line "tales to tell…"
	done

PokemonFanClubChairmanHowDisappointingText:
	text "How disappointing…"

	para "Come back if you"
	line "want to listen."
	done

PokemonFanClubReceptionistText:
	text "Our CHAIRMAN is"
	line "very vocal when it"
	cont "comes to #MON…"
	done

PokemonFanClubClefairyGuyClefairyIsSoAdorableText:
	text "I love the way"
	line "CLEFAIRY waggles"

	para "its finger when"
	line "it's trying to use"

	para "METRONOME."
	line "It's so adorable!"
	done

PokemonFanClubClefairyGuyMakingDoWithADollIFoundText:
	text "I love CLEFAIRY,"
	line "but I could never"

	para "catch one. So I'm"
	line "making do with a"

	para "# DOLL that I"
	line "found."
	done

PokemonFanClubClefairyGuyTakeThisDollBackToGirlText:
	text "Oh, I see now. The"
	line "girl who lost this"

	para "# DOLL is sad…"

	para "OK. Could you take"
	line "this # DOLL"

	para "back to that poor"
	line "little girl?"

	para "I'll befriend a"
	line "real CLEFAIRY on"

	para "my own one day."
	line "No worries!"
	done

PokemonFanClubClefairyGuyGoingToGetARealClefairyText:
	text "You watch. I'm"
	line "going to get a"

	para "real CLEFAIRY as"
	line "my friend."
	done

PokemonFanClubTeacherText:
	text "Look at my darling"
	line "ODDISH!"

	para "The leaves on its"
	line "head are so cute!"
	done

FanClubOddishText:
	text "ODDISH: Diish!"
	done

PokemonFanClubListenSignText:
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done

PokemonFanClubBraggingSignText:
	text "If someone brags,"
	line "brag right back!"
	done
