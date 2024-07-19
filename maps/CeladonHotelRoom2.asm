CeladonHotelRoom2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, CELADON_HOTEL_2F, 3
	warp_event  4,  5, CELADON_HOTEL_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MrHyperScript, -1

MrHyperScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MR_HYPER
	iftrue .IntroDone
	writetext .TextIntro
	waitbutton
	setevent EVENT_TALKED_TO_MR_HYPER
	; fallthrough
.IntroDone:
	writetext .TextAskTrain
	yesorno
	iffalse_jumpopenedtext .TextComeBackAnytime
.CheckBottleCaps:
	checkitem BOTTLE_CAP
	iffalse_jumpopenedtext .TextNoBottleCaps
	writetext .TextTrainWho
	waitbutton
	special Special_HyperTrain
	iffalse_jumpopenedtext .TextComeBackAnytime
	takeitem BOTTLE_CAP
	writetext .TextGotStronger
	waitbutton
	writetext .TextTrainSomeMore
	yesorno
	iftrue .CheckBottleCaps
	jumpthisopenedtext

.TextComeBackAnytime:
	text "Come back anytime!"
	line "MR. HYPER will"
	cont "always be hyped up"
	cont "to see you!"
	done

.TextIntro:
	text "I'm MR. HYPER!"
	line "Want to know why?"

	para "Because I can help"
	line "#MON perform"
	cont "HYPER TRAINING!"

	para "It lets a #MON"
	line "that has maxed out"
	cont "its effort become"
	cont "even stronger!"

	para "This training will"
	line "help them increase"
	cont "their stats."

	para "If you want me to"
	line "train up your"
	cont "#MON, bring me"
	cont "some BOTTLE CAPS."
	done

.TextAskTrain:
	text "What do you say?"
	line "Want to try my"
	cont "HYPER TRAINING?"
	done

.TextNoBottleCaps:
	text "You don't have any"
	line "BOTTLE CAPS?"

	para "I know FISHERMEN"
	line "snag them some-"
	cont "times…"
	done

.TextTrainWho:
	text "HYPER TRAIN which"
	line "#MON?"
	done

.TextGotStronger:
	text "All done! My HYPER"
	line "TRAINING improved"
	cont ""
	text_ram wStringBuffer1
	text "'s stats!"
	done

.TextTrainSomeMore:
	text "HYPER TRAIN more"
	line "#MON?"
	done
