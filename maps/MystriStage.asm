MystriStage_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 19, SINJOH_RUINS, 1
	warp_event  7, 19, SINJOH_RUINS, 1

	def_coord_events
	coord_event  6, 11, 1, MystriStageTrigger1Script
	coord_event  7, 11, 1, MystriStageTrigger2Script

	def_bg_events

	def_object_events
	object_event  6, 10, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MystriStageCynthiaSafeguardScript, EVENT_LISTENED_TO_CYNTHIA_INTRO
	object_event  7,  7, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MystriStageCynthiaScript, EVENT_MYSTRI_STAGE_CYNTHIA
	object_event  6,  8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, EGG, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MystriStageEggScript, EVENT_MYSTRI_STAGE_EGG

	object_const_def
	const MYSTRISTAGE_CYNTHIA1
	const MYSTRISTAGE_CYNTHIA2
	const MYSTRISTAGE_EGG

MystriStageTrigger2Script:
	applyonemovement PLAYER, step_up
MystriStageTrigger1Script:
	faceobject PLAYER, MYSTRISTAGE_CYNTHIA1
	pause 10
	showemote EMOTE_SHOCK, MYSTRISTAGE_CYNTHIA1, 15
	pause 10
	faceobject MYSTRISTAGE_CYNTHIA1, PLAYER
MystriStageCynthiaSafeguardScript:
	showtext MystriStageCynthiaIntroText
	follow MYSTRISTAGE_CYNTHIA1, PLAYER
	applymovement MYSTRISTAGE_CYNTHIA1, MystriStageMovementData_CynthiaStepsUp
	stopfollow
	turnobject MYSTRISTAGE_CYNTHIA1, LEFT
	turnobject PLAYER, RIGHT
	showtext MystriStageCynthiaSpeechText
	showemote EMOTE_SHOCK, MYSTRISTAGE_CYNTHIA1, 15
	opentext
	writetext MystriStageCynthiaLeadText2
	waitbutton
	closetext
	pause 10
	appear MYSTRISTAGE_CYNTHIA2
	disappear MYSTRISTAGE_CYNTHIA1
	setlasttalked MYSTRISTAGE_CYNTHIA2
	setevent EVENT_LISTENED_TO_CYNTHIA_INTRO
	setscene $0
	; fallthrough

MystriStageCynthiaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CYNTHIA
	iftrue MystriStageBeatCynthiaScript
	writetext MystriStageCynthiaIdeaText
	waitbutton
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse_jumpopenedtext MystriStageCynthiaNotNowText
	writetext MystriStageCynthiaChallengeText
	yesorno
	iffalse_jumpopenedtext MystriStageCynthiaNoText
	writetext MystriStageCynthiaYesText
	waitbutton
	closetext
	winlosstext MystriStageCynthiaWinText, 0
	setlasttalked MYSTRISTAGE_CYNTHIA2
	loadtrainer CYNTHIA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CYNTHIA
	opentext
MystriStageBeatCynthiaScript:
	checkevent EVENT_GOT_WISE_GLASSES_FROM_CYNTHIA
	iftrue_jumpopenedtext MystriStageCynthiaFinalText
	writetext MystriStageCynthiaItemText
	waitbutton
	verbosegiveitem WISE_GLASSES
	iffalse_endtext
	setevent EVENT_GOT_WISE_GLASSES_FROM_CYNTHIA
	writetext MystriStageCynthiaAfterText
	waitbutton
	closetext
	pause 15
	showemote EMOTE_SHOCK, MYSTRISTAGE_CYNTHIA2, 15
	special Special_FadeOutMusic
	pause 15
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 15
	playsound SFX_UNKNOWN_60
	waitsfx
	pause 20
	playsound SFX_METRONOME
	waitsfx
	special Special_FadeInQuickly
	pause 10
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playsound SFX_PROTECT
	waitsfx
	special Special_FadeInQuickly
	pause 10
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 20
	playsound SFX_EGG_HATCH
	waitsfx
	appear MYSTRISTAGE_EGG
	faceplayer
	pause 30
	special RestartMapMusic
	special Special_FadeInQuickly
	pause 20
	turnobject MYSTRISTAGE_CYNTHIA2, DOWN
	pause 40
	jumptextfaceplayer MystriStageCynthiaEggText

MystriStageEggScript:
	special GiveMystriEgg
	iffalse_jumptext MystriStageNoRoomText
	disappear MYSTRISTAGE_EGG
	opentext
	writetext MystriStageEggText
	playsound SFX_KEY_ITEM
	waitsfx
	ifequal 1, .InParty
	special Special_CurBoxFullCheck
	iffalse .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	farwritetext _EggSentToPCText
.InParty
	waitendtext

MystriStageCynthiaIntroText:
	text "My name is"
	line "CYNTHIA. I am a"
	cont "#MON trainer."

	para "And you are?"

	para "…I see. The power"
	line "of the UNOWN"
	cont "brought you here."
	done

MystriStageCynthiaSpeechText:
	text "CYNTHIA: These are"
	line "the SINJOH RUINS."

	para "A long time ago…"
	line "people came from"

	para "SINNOH, my home"
	line "region, to live"
	cont "here."

	para "They must have"
	line "longed for home,"

	para "and built this"
	line "temple to honor"
	cont "their traditions."

	para "We are standing on"
	line "the MYSTRI STAGE."

	para "People once cele-"
	line "brated here with"
	cont "music and dance."

	para "CYNTHIA: I study"
	line "myths about"

	para "ancient sites like"
	line "the SINJOH RUINS."

	para "One claims that"
	line "this stage is"

	para "imbued with the"
	line "power of creation."

	para "It speaks of when"
	line "“the lead enters"

	para "the MYSTRI STAGE"
	line "at last…”"
	done

MystriStageCynthiaLeadText2:
	text "CYNTHIA: What?"
	line "You read that"

	para "phrase in the"
	line "RUINS OF ALPH?"

	para "That is very"
	line "intriguing."

	para "Could “the lead”"
	line "be a #MON?"
	cont "Or a person?"
	done

MystriStageCynthiaIdeaText:
	text "CYNTHIA: …I have"
	line "an idea. Call it"

	para "a trainer's"
	line "intuition."

	para "When you and I"
	line "battle on this"

	para "stage, something"
	line "will happen."
	done

MystriStageCynthiaNotNowText:
	text "CYNTHIA: But I"
	line "don't think we"

	para "should battle now."
	line "You aren't ready."

	para "Come back when"
	line "you've beaten the"
	cont "ELITE FOUR."
	done

MystriStageCynthiaChallengeText:
	text "CYNTHIA: Are you"
	line "prepared to be my"
	cont "opponent?"
	done

MystriStageCynthiaNoText:
	text "CYNTHIA: Come back"
	line "when you're ready."
	done

MystriStageCynthiaYesText:
	text "CYNTHIA: Before"
	line "I send out my"
	cont "#MON,"

	para "my heart always"
	line "begins to race…"
	done

MystriStageCynthiaWinText:
	text "I can't remember"
	line "the last time I"

	para "was outclassed"
	line "like this!"
	done

MystriStageCynthiaItemText:
	text "CYNTHIA: That was"
	line "beyond my expec-"
	cont "tation!"

	para "What an excep-"
	line "tional battle!"

	para "Please take this"
	line "item. I believe"

	para "you will know how"
	line "to use it well."
	done

MystriStageCynthiaAfterText:
	text "CYNTHIA: But did"
	line "our battle affect"
	cont "the MYSTRI STAGE?"
	done

MystriStageCynthiaEggText:
	text "CYNTHIA: Could it"
	line "be… an EGG?"

	para "Did we just"
	line "witness the very"

	para "moment an EGG was"
	line "brought to this"
	cont "world?"

	para "A moment no one"
	line "has ever seen?"
	done

MystriStageCynthiaFinalText:
	text "CYNTHIA: An EGG"
	line "is the cradle of"
	cont "every being."

	para "The planet itself"
	line "is an EGG in a"
	cont "sense…"

	para "Life that comes"
	line "from an EGG will"
	cont "come to an end in"

	para "due course… to"
	line "begin anew…"
	done

MystriStageEggText:
	text "<PLAYER> received"
	line "a mysterious EGG!"
	done

MystriStageNoRoomText:
	text "You don't have"
	line "room for this,"
	cont "even in your BOX!"
	done

MystriStageMovementData_CynthiaStepsUp:
	step_up
	step_up
	step_up
	step_right
	step_end
