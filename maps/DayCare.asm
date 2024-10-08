DayCare_MapScriptHeader:
	def_scene_scripts
	scene_script DayCareTrigger0

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

	def_warp_events
	warp_event  0,  4, ROUTE_34, 3
	warp_event  0,  5, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
	object_event  0,  5, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LYRA_DAYCARE
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAYCARE_MAN_IN_DAYCARE

	object_const_def
	const DAYCARE_GRANNY
	const DAYCARE_LYRA

DayCareTrigger0:
	sdefer DayCare_MeetGrandma
	end

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAYCARE_MAN_IN_DAYCARE
	setevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAYCARE_MAN_IN_DAYCARE
	clearevent EVENT_DAYCARE_MAN_ON_ROUTE_34
	endcallback

DayCare_MeetGrandma:
	follow DAYCARE_LYRA, PLAYER
	applymovement DAYCARE_LYRA, DayCareMovementData_LyraApproachesGrandma
	stopfollow
	turnobject PLAYER, UP
	turnobject DAYCARE_GRANNY, DOWN
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .IntroduceFemale
	writetext DayCareLyraHelloText1
	sjump .Continue1
.IntroduceFemale:
	writetext DayCareLyraHelloText2
.Continue1:
	waitbutton
	closetext
	showemote EMOTE_SHOCK, DAYCARE_LYRA, 15
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ProtestFemale
	writetext DayCareLyraProtestText1
	sjump .Continue2
.ProtestFemale:
	writetext DayCareLyraProtestText2
.Continue2:
	waitbutton
	closetext
	turnobject DAYCARE_LYRA, DOWN
	showtext DayCareLyraGoodbyeText
	applymovement DAYCARE_LYRA, DayCareMovementData_LyraStartsToLeave
	showemote EMOTE_SHOCK, DAYCARE_LYRA, 15
	turnobject DAYCARE_LYRA, LEFT
	turnobject PLAYER, RIGHT
	showtext DayCareLyraForgotText
	addcellnum PHONE_LYRA
	opentext
	writetext GotLyrasNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject DAYCARE_LYRA, UP
	showtext DayCareLyraEmbarassedText
	applymovement DAYCARE_LYRA, DayCareMovementData_LyraLeaves
	disappear DAYCARE_LYRA
	setscene $1
	end

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareManText_GiveOddEgg
	promptbutton
	special GiveOddEgg
	iffalse_jumpopenedtext DayCareText_PartyAndBoxFull
	writetext DayCareText_GotOddEgg
	playsound SFX_GET_EGG_FROM_DAYCARE_LADY
	waitsfx
	ifequal 1, .InParty
	special Special_CurBoxFullCheck
	iffalse .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	farwritetext _EggSentToPCText
	promptbutton
.InParty:
	writetext DayCareText_DescribeOddEgg
	setevent EVENT_GOT_ODD_EGG
	waitendtext

.AlreadyHaveOddEgg:
	special Special_DayCareMan
	waitendtext

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue_jumpopenedtext Text_GrampsLookingForYou
	checkevent EVENT_LYRA_GAVE_AWAY_EGG
	iffalse .NoLyrasEgg
	checkevent EVENT_GOT_LYRAS_EGG
	iftrue .NoLyrasEgg
	writetext DayCareLadyText_GiveLyrasEgg
	promptbutton
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .GiveCyndaquilEgg
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .GiveTotodileEgg
	giveegg CHIKORITA
	sjump .GotLyrasEgg

.GiveCyndaquilEgg:
	giveegg CYNDAQUIL
	sjump .GotLyrasEgg

.GiveTotodileEgg:
	giveegg TOTODILE
.GotLyrasEgg
	iffalse_jumpopenedtext DayCareText_PartyAndBoxFull
	farwritetext _ReceivedEggText
	playsound SFX_GET_EGG_FROM_DAYCARE_LADY
	waitsfx
	writetext DayCareLadyText_DescribeLyrasEgg
	setevent EVENT_GOT_LYRAS_EGG
	waitendtext

.NoLyrasEgg:
	special Special_DayCareLady
	waitendtext

DayCareMovementData_LyraApproachesGrandma:
	step_right
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

DayCareMovementData_LyraStartsToLeave:
	step_right
	step_down
	step_end

DayCareMovementData_LyraLeaves:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

DayCareLyraHelloText1:
	text "LYRA: Grandma!"

	para "Let me introduce"
	line "my friend."

	para "This is <PLAYER>!"

	para "GRANDMA: Ah ha."

	para "This is your"
	line "boy… friend."

	para "I see. Hmm."
	done

DayCareLyraHelloText2:
	text "LYRA: Grandma!"

	para "Let me introduce"
	line "my friend."

	para "This is <PLAYER>!"

	para "GRANDMA: Ah ha."

	para "This is your"
	line "girl… friend."

	para "I see. Hmm."
	done

DayCareLyraProtestText1:
	text "LYRA: What?"
	line "Grandma…!"

	para "What are you"
	line "talking about?"

	para "He just lives"
	line "nearby…"

	para "GRANDMA: Hahaha."
	line "I know, I know."

	para "You must be sure"
	line "he's talented."

	para "Right, <PLAYER>?"
	line "Come and see us"
	cont "anytime!"
	done

DayCareLyraProtestText2:
	text "LYRA: What?"
	line "Grandma…!"

	para "What are you"
	line "talking about?"

	para "She just lives"
	line "nearby…"

	para "GRANDMA: Hahaha."
	line "I know, I know."

	para "You must be sure"
	line "she's talented."

	para "Right, <PLAYER>?"
	line "Come and see us"
	cont "anytime!"
	done

DayCareLyraGoodbyeText:
	text "LYRA: Well, I'd"
	line "better go now…"
	cont "See ya!"
	done

DayCareLyraForgotText:
	text "LYRA: Oh!"
	line "I almost forgot!"

	para "Here! This is my"
	line "#GEAR number!"
	done

GotLyrasNumberText:
	text "<PLAYER> got LYRA's"
	line "phone number."
	done

DayCareLyraEmbarassedText:
	text "LYRA: Grandma!"

	para "Don't you say"
	line "anything."

	para "We're both train-"
	line "ers, and we're"

	para "supposed to ex-"
	line "change numbers."
	cont "That's all."
	done

Text_GrampsLookingForYou:
	text "Gramps was looking"
	line "for you."
	done

DayCareManText_GiveOddEgg:
	text "I'm the DAY-CARE"
	line "MAN."

	para "Do you know about"
	line "EGGS?"

	para "I was raising"
	line "#MON with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an EGG!"

	para "How incredible is"
	line "that?"

	para "Well, wouldn't you"
	line "like this EGG?"

	para "Then fine, this is"
	line "yours to keep!"
	done

DayCareText_GotOddEgg:
	text "<PLAYER> received"
	line "the ODD EGG!"
	done

DayCareText_DescribeOddEgg:
	text "I found that when"
	line "I was caring for"

	para "someone's #MON"
	line "before."

	para "But the trainer"
	line "didn't want the"

	para "EGG, so I'd kept"
	line "it around."
	done

DayCareLadyText_GiveLyrasEgg:
	text "Hello, dear."

	para "LYRA told me this"
	line "EGG was a gift for"
	cont "you. Here you go!"
	done

DayCareLadyText_DescribeLyrasEgg:
	text "That EGG came from"
	line "her first #MON."

	para "She must really"
	line "trust you as a"
	cont "trainer."
	done

DayCareText_PartyAndBoxFull:
	text "You have no room"
	line "for this, even in"
	cont "your BOX."
	done
