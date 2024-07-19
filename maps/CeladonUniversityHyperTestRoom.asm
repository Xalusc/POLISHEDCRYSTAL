CeladonUniversityHyperTestRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_2F, 4
	warp_event  3, 11, CELADON_UNIVERSITY_2F, 4

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonUniversityHyperTestRoomMagikarpSign
	bg_event  6,  1, BGEVENT_JUMPTEXT, CeladonUniversityHyperTestRoomBookshelf1Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityHyperTestRoomBookshelf2Text
	bg_event  7,  4, BGEVENT_RIGHT, CeladonUniversityHyperTestRoomComputer
	bg_event  7,  6, BGEVENT_RIGHT, CeladonUniversityHyperTestRoomComputer

	def_object_events
	object_event  4,  2, SPRITE_WESTWOOD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomWestwoodScript, -1
	object_event  6,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomScientistText, -1
	object_event  1,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomTwin1Text, -1
	object_event  1,  8, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomTwin2Text, -1

CeladonUniversityHyperTestRoomWestwoodScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_DRAGON_RAGE_MAGIKARP
	iftrue_jumpopenedtext .TestOverText
	checkevent EVENT_PASSED_CELADON_HYPER_TEST
	iftrue .GiveMagikarp
	writetext .GreetingText
	waitbutton
	checkevent EVENT_LISTENED_TO_WESTWOOD_INTRO
	iftrue .HeardIntro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_WESTWOOD_INTRO
.HeardIntro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkflag ENGINE_TOOK_HYPER_TEST
	iftrue_jumpopenedtext .AlreadyTookText
	setflag ENGINE_TOOK_HYPER_TEST
	writetext .BeginText
	waitbutton

	writetext .Question1IntroText
	waitbutton
	closetext
	refreshscreen
	trainerpic SILHOUETTE
	waitbutton
	closepokepic
	opentext
	writetext .Question1QuestionText
	loadmenu .Question1MenuData
	verticalmenu
	closewindow
	ifnotequal $2, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question2IntroText
	waitbutton
	closetext
	cry SLOWKING
	waitsfx
	opentext
	writetext .Question2QuestionText
	loadmenu .Question2MenuData
	verticalmenu
	closewindow
	ifnotequal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question3IntroText
	waitbutton
	writetext .Question3QuestionText
	loadmenu .Question3MenuData
	verticalmenu
	closewindow
	ifnotequal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question4IntroText
	waitbutton
	writetext .Question4QuestionText
	loadmenu .Question4MenuData
	verticalmenu
	closewindow
	ifnotequal $1, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question5IntroText
	waitbutton
	writetext .Question5QuestionText
	loadmenu .Question5MenuData
	verticalmenu
	closewindow
	ifnotequal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question6IntroText
	waitbutton
	writetext .Question6QuestionText
	loadmenu .Question6MenuData
	verticalmenu
	closewindow
	ifnotequal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	setevent EVENT_PASSED_CELADON_HYPER_TEST
.GiveMagikarp:
	writetext .CongratulationsText
	waitbutton

	givepoke MAGIKARP, MAGIKARP_MASK_FORM, 10, EVIOLITE, ULTRA_BALL, DRAGON_RAGE
	iffalse_jumpopenedtext .PartyAndBoxFullText
	setevent EVENT_GOT_DRAGON_RAGE_MAGIKARP
	jumpopenedtext .TestOverText

.WrongAnswer:
	waitsfx
	playsound SFX_WRONG
	jumpopenedtext .WrongAnswerText

.GreetingText:
	text "PROF.WESTWOOD?"
	line "That would be me."
	done

.IntroText:
	text "A researcher"
	line "extraordinaire!"

	para "My findings are"
	line "second to none."

	para "No doubt I'll win"
	line "a commendation"
	cont "before long…"
	done

.QuestionText:
	text "Ahem. What was"
	line "that?"

	para "You came to take"
	line "the CELADON UNIV-"
	cont "ERSITY HYPER TEST?"
	done

.BeginText:
	text "Excellent!"

	para "The HYPER TEST is"
	line "a series of six"
	cont "questions, testing"

	para "all of your senses"
	line "under pressure!"

	para "If you pass, you'll"
	line "receive a prize"

	para "worthy of our"
	line "university!"
	done

.CorrectText:
	text "Correct!"
	done

.Question1IntroText:
	text "Question 1:"
	line "Look closely!"
	done

.Question1QuestionText:
	text "What #MON's sil-"
	line "houette is this?"
	done

.Question2IntroText:
	text "Question 2:"
	line "Listen carefully!"
	done

.Question2QuestionText:
	text "What #MON's cry"
	line "is this?"
	done

.Question3IntroText:
	text "Question 3:"
	done

.Question3QuestionText:
	text "Which medicine"
	line "tastes bitter?"
	done

.Question4IntroText:
	text "Question 4:"
	done

.Question4QuestionText:
	text "Which #MON"
	line "has DRY SKIN?"
	done

.Question5IntroText:
	text "Question 5:"
	done

.Question5QuestionText:
	text "Which BERRY"
	line "smells blue?"
	done

.Question6IntroText:
	text "Question 6:"
	line "Think wisely!"
	done

.Question6QuestionText:
	text "Who is the most"
	line "accomplished"
	cont "professor?"
	done

.CongratulationsText:
	text "Congratulations!"

	para "You passed the"
	line "HYPER TEST with"
	cont "flying colors!"

	para "Here's your prize--"
	line "a uniquely bred"

	para "MAGIKARP that"
	line "knows DRAGON RAGE!"
	done

.TestOverText:
	text "Our students have"
	line "the tenacity of a"

	para "MAGIKARP strugg-"
	line "ling to evolve."
	cont "And so do you!"
	done

.PartyAndBoxFullText:
	text "Oh no! Your party"
	line "and BOX are full…"
	done

.RefusedText:
	text "Well, if you're"
	line "certain."
	done

.AlreadyTookText:
	text "But you already"
	line "attempted the test"
	cont "today!"

	para "You may retake"
	line "it tomorrow."
	done

.WrongAnswerText:
	text "I'm sorry, that's"
	line "incorrect!"

	para "You may try and"
	line "retake the HYPER"
	cont "TEST tomorrow."
	done

.Question1MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 11 ; end coords
	dw .Question1MenuData2
	db 1 ; default option

.Question1MenuData2:
	db $81 ; flags
	db 4 ; items
	db "UMBREON@"
	db "GLACEON@"
	db "PERSIAN@"
	db "GIRAFARIG@"

.Question2MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 10 ; end coords
	dw .Question2MenuData2
	db 1 ; default option

.Question2MenuData2:
	db $81 ; flags
	db 4 ; items
	db "BLISSEY@"
	db "QWILFISH@"
	db "SLOWKING@"
	db "VENOMOTH@"

.Question3MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 13 ; end coords
	dw .Question3MenuData2
	db 1 ; default option

.Question3MenuData2:
	db $81 ; flags
	db 4 ; items
	db "ELIXIR@"
	db "CALCIUM@"
	db "ANTIDOTE@"
	db "HEAL POWDER@"

.Question4MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 12 ; end coords
	dw .Question4MenuData2
	db 1 ; default option

.Question4MenuData2:
	db $81 ; flags
	db 4 ; items
	db "PARASECT@"
	db "MAGMAR@"
	db "SANDSLASH@"
	db "VICTREEBEL@"

.Question5MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 13 ; end coords
	dw .Question5MenuData2
	db 1 ; default option

.Question5MenuData2:
	db $81 ; flags
	db 4 ; items
	db "CHERI BERRY@"
	db "LUM BERRY@"
	db "ORAN BERRY@"
	db "PECHA BERRY@"

.Question6MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 15 ; end coords
	dw .Question6MenuData2
	db 1 ; default option

.Question6MenuData2:
	db $81 ; flags
	db 4 ; items
	db "PROF.OAK@"
	db "PROF.ELM@"
	db "PROF.WILLOW@"
	db "PROF.WESTWOOD@"

CeladonUniversityHyperTestRoomScientistText:
	text "The HYPER TEST is"
	line "a rite of passage"

	para "for all CELADON"
	line "UNIVERSITY grad-"
	cont "uates."

	para "It tests all of"
	line "their faculties to"
	cont "the utmost!"
	done

CeladonUniversityHyperTestRoomTwin1Text:
	text "I'll pass the HYPER"
	line "TEST before you!"
	done

CeladonUniversityHyperTestRoomTwin2Text:
	text "No, I'll pass the"
	line "HYPER TEST before"
	cont "you!"
	done

CeladonUniversityHyperTestRoomMagikarpSign:
	refreshscreen
	pokepic MAGIKARP, MAGIKARP_MASK_FORM
	cry MAGIKARP
	waitbutton
	closepokepic
	jumpthistext

	text "A MAGIKARP is"
	line "swimming around."
	done

CeladonUniversityHyperTestRoomBookshelf1Text:
	text "This book has a"
	line "bookmark in it."

	para "Someone's not done"
	line "with it yet!"
	done

CeladonUniversityHyperTestRoomBookshelf2Text:
	text "It's a copy of"
	line "NINTENDO POWER!"

	para "A PIKACHU picture"
	line "fills the front"
	cont "cover."
	done

CeladonUniversityHyperTestRoomComputer:
	jumpthistext

	text "There's a file on"
	line "the desktop named"
	cont "questions.txt."

	para "Better not cheat!"
	done
