BLUE_CARD_POINT_CAP EQU 30

RadioTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower2FSalesSignText
	bg_event  5,  0, BGEVENT_JUMPTEXT, RadioTower2FOaksPKMNTalkSignText
	bg_event 13,  0, BGEVENT_JUMPTEXT, RadioTower2FPokemonRadioSignText

	def_object_events
	object_event 14,  5, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Buena, -1
	object_event  6,  6, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FSuperNerdText, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 17,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower2FTeacherScript, -1
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  7,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM5, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntM6, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 10,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntF2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  0,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FBlackBelt1Text, EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	object_event  1,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FBlackBelt2Text, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	pokemon_event 12,  1, JIGGLYPUFF, -1, -1, PAL_NPC_RED, RadioTowerJigglypuffText, -1
	object_event 12,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTowerBuenaPrizeReceptionist, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event  3,  6, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FRockerText, EVENT_GOLDENROD_CITY_CIVILIANS

	object_const_def
	const RADIOTOWER2F_BUENA

RadioTower2FTeacherScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower2FTeacherText_Rockets
	jumpthistextfaceplayer

	text "Lullabies on the"
	line "radio may make"
	cont "#MON sleep."
	done

GenericTrainerGruntM4:
	generictrainer GRUNTM, 4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText

	text "We won't let you"
	line "ruin our plans"
	cont "for our comeback!"
	done

GenericTrainerGruntM5:
	generictrainer GRUNTM, 5, EVENT_BEAT_ROCKET_GRUNTM_5, GruntM5SeenText, GruntM5BeatenText

	text "We're not always"
	line "evil. We just do"
	cont "whatever we like."
	done

GenericTrainerGruntM6:
	generictrainer GRUNTM, 6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText

	text "Our EXECUTIVES are"
	line "trying to take"
	cont "this place over."

	para "They have some big"
	line "plan. I wonder"
	cont "what that is?"
	done

GenericTrainerGruntF2:
	generictrainer GRUNTF, 2, EVENT_BEAT_ROCKET_GRUNTF_2, GruntF2SeenText, GruntF2BeatenText

	text "You beat me, and"
	line "I won't forget it!"
	done

Buena:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower2FBuenaPasswordIsHelpText
	faceplayer
	opentext
	checkevent EVENT_MET_BUENA
	iffalse .Introduction
	checkflag ENGINE_BUENAS_PASSWORD_2
	iftrue .PlayedAlready
	readvar VAR_HOUR
	ifless 18, .TooEarly
	checkflag ENGINE_BUENAS_PASSWORD
	iffalse .TuneIn
	checkkeyitem BLUE_CARD
	iffalse .NoBlueCard
	readvar VAR_BLUECARDBALANCE
	ifequal BLUE_CARD_POINT_CAP, .BlueCardCapped0
	playmusic MUSIC_BUENAS_PASSWORD
	writetext RadioTower2FBuenaDoYouKnowPasswordText
	special AskRememberPassword
	iffalse .ForgotPassword
	writetext RadioTower2FBuenaJoinTheShowText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	readvar VAR_FACING
	ifnotequal RIGHT, .DontNeedToMove
	applymovement PLAYER, RadioTower2FPlayerWalksToMicrophoneMovement
.DontNeedToMove:
	turnobject PLAYER, RIGHT
	showtext RadioTower2FBuenaEveryoneSayPasswordText
	turnobject RADIOTOWER2F_BUENA, DOWN
	refreshscreen
	special SpecialBuenasPassword
	closetext
	iffalse .WrongAnswer
	showtext RadioTower2FBuenaCorrectAnswerText
	readvar VAR_BLUECARDBALANCE
	addval $1
	writevar VAR_BLUECARDBALANCE
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_BUENAS_PASSWORD_2
	pause 20
	turnobject RADIOTOWER2F_BUENA, RIGHT
	showtext RadioTower2FBuenaThanksForComingText
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	readvar VAR_BLUECARDBALANCE
	ifequal BLUE_CARD_POINT_CAP, .BlueCardCapped1
	end

.Introduction:
	writetext RadioTower2FBuenaShowIntroductionText
	promptbutton
	setevent EVENT_MET_BUENA
	verbosegivekeyitem BLUE_CARD
.TuneIn:
	writetext RadioTower2FBuenaTuneInToMyShowText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftrue .Registered0
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue .OfferedNumberBefore
.Registered0:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.ForgotPassword:
	writetext RadioTower2FBuenaComeBackAfterListeningText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	end

.PlayedAlready:
	writetext RadioTower2FBuenaAlreadyPlayedText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftrue .Registered1
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue .OfferedNumberBefore
.Registered1:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	pause 10
	end

.WrongAnswer:
	setflag ENGINE_BUENAS_PASSWORD_2
	showtext RadioTower2FBuenaDidYouForgetText
	turnobject RADIOTOWER2F_BUENA, RIGHT
	pause 20
	showtext RadioTower2FBuenaThanksForComingText
	turnobject RADIOTOWER2F_BUENA, RIGHT
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	end

.NoBlueCard:
	writetext RadioTower2FBuenaNoBlueCardText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftrue .Registered2
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue .OfferedNumberBefore
.Registered2:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.BlueCardCapped0:
	writetext RadioTower2FBuenaCardIsFullText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftrue .Registered3
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue .OfferedNumberBefore
.Registered3:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.TooEarly:
	writetext RadioTower2FBuenaTuneInAfterSixText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftrue .Registered4
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftrue .OfferedNumberBefore
.Registered4:
	end

.BlueCardCapped1:
	checkcellnum PHONE_BUENA
	iftrue .HasNumber
	pause 20
	turnobject RADIOTOWER2F_BUENA, DOWN
	pause 15
	turnobject PLAYER, UP
	pause 15
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftrue .OfferedNumberBefore
	showemote EMOTE_SHOCK, RADIOTOWER2F_BUENA, 15
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	opentext
	writetext RadioTower2FBuenaOfferPhoneNumberText
	sjump .AskForNumber

.OfferedNumberBefore:
	opentext
	writetext RadioTower2FBuenaOfferNumberAgainText
.AskForNumber:
	askforphonenumber PHONE_BUENA
	ifequal $1, .PhoneFull
	ifequal $2, .NumberDeclined
	writetext RadioTower2FRegisteredBuenasNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
	writetext RadioTower2FBuenaCallMeText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	addcellnum PHONE_BUENA
	end

.NumberDeclined:
	writetext RadioTower2FBuenaSadRejectedText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.PhoneFull:
	writetext RadioTower2FBuenaYourPhoneIsFullText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
.HasNumber:
	end

RadioTowerBuenaPrizeReceptionist:
	checkkeyitem BLUE_CARD
	iffalse_jumptextfaceplayer RadioTower2FBuenaReceptionistNoCardText
	pokemart MARTTYPE_BLUECARD, 0

RadioTower2FPlayerWalksToMicrophoneMovement:
	slow_step_down
	slow_step_right
	step_end

RadioTower2FSuperNerdText:
	text "You can listen to"
	line "the radio any-"
	cont "where. Tune in!"
	done

RadioTower2FRockerText:
	text "I have a radio"
	line "interview to pro-"

	para "mote my latest"
	line "song."

	para "I've performed in"
	line "front of big"
	cont "crowds before,"

	para "but boy am I"
	line "nervous."
	done

RadioTower2FTeacherText_Rockets:
	text "Why would they"
	line "want to take over"
	cont "the RADIO TOWER?"
	done

RadioTowerJigglypuffText:
	text "JIGGLYPUFF:"
	line "Jiggly…"
	done

RadioTower2FBlackBelt1Text:
	text "Sorry. Authorized"
	line "personnel only"
	cont "beyond this point."

	para "It wasn't that way"
	line "before."

	para "There's something"
	line "wrong with the"
	cont "DIRECTOR…"
	done

RadioTower2FBlackBelt2Text:
	text "Feel free to look"
	line "around anywhere."

	para "The DIRECTOR is"
	line "nice again, just"
	cont "as he was before."
	done

GruntM4SeenText:
	text "Three years ago,"
	line "TEAM ROCKET was"
	cont "forced to disband."

	para "But we're making a"
	line "comeback here!"
	done

GruntM4BeatenText:
	text "Gwah! Don't get"
	line "cute!"
	done

GruntM5SeenText:
	text "We're TEAM ROCKET,"
	line "the exploiters of"
	cont "#MON!"

	para "We love being"
	line "evil! Scared?"
	done

GruntM5BeatenText:
	text "You think you're a"
	line "hero?"
	done

GruntM6SeenText:
	text "Hey, hey! Keep out"
	line "of our way!"
	done

GruntM6BeatenText:
	text "Arggh. I give up."
	done

GruntF2SeenText:
	text "Hahaha!"

	para "How boring."
	line "It was far too"

	para "easy to take over"
	line "this place!"

	para "Come on, keep me"
	line "amused!"
	done

GruntF2BeatenText:
	text "Wh-who are you?"
	done

RadioTower2FBuenaShowIntroductionText:
	text "BUENA: Hi! I'm"
	line "BUENA!"

	para "Do you know about"
	line "a radio program"
	cont "called PASSWORD?"

	para "If you can tell me"
	line "the password from"

	para "the program, you"
	line "will earn points."

	para "Save up those"
	line "points and trade"

	para "them to that sweet"
	line "young lady over"

	para "there for some"
	line "choice prizes!"

	para "Here you go!"

	para "It's your very own"
	line "point card!"
	done

RadioTower2FBuenaTuneInToMyShowText:
	text "BUENA: Tune in to"
	line "my PASSWORD SHOW!"
	done

RadioTower2FBuenaDoYouKnowPasswordText:
	text "BUENA: Hi!"
	line "Did you tune in to"
	cont "my radio show?"

	para "Do you remember"
	line "today's password?"
	done

RadioTower2FBuenaJoinTheShowText:
	text "BUENA: Oh, wow!"
	line "Thank you!"

	para "What was your name"
	line "again?"

	para "…<PLAYER>, OK!"

	para "Come on, <PLAYER>."
	line "Join the show."
	done

RadioTower2FBuenaEveryoneSayPasswordText:
	text "BUENA: Everyone"
	line "ready?"

	para "I want to hear you"
	line "shout out today's"

	para "password for"
	line "<PLAYER>!"
	done

RadioTower2FBuenaComeBackAfterListeningText:
	text "BUENA: Come back"
	line "after you listen"

	para "to my show, OK?"
	line "Catch ya later!"
	done

RadioTower2FBuenaAlreadyPlayedText:
	text "BUENA: Sorry…"

	para "You get just one"
	line "chance each day."

	para "Come back tomorrow"
	line "for another try!"
	done

RadioTower2FBuenaCorrectAnswerText:
	text "BUENA: YIPPEE!"
	line "That's right!"

	para "You did tune in!"
	line "I'm so happy!"

	para "You earned one"
	line "point! Congrats!"
	done

RadioTower2FBuenaDidYouForgetText:
	text "BUENA: Aww…"
	line "That's not it…"

	para "Did you forget the"
	line "password?"
	done

RadioTower2FBuenaThanksForComingText:
	text "BUENA: Yup! Our"
	line "contestant was"

	para "<PLAYER>."
	line "Thanks for coming!"

	para "I hope all you"
	line "listeners will"

	para "come too!"
	line "I'll be waiting!"
	done

RadioTower2FBuenaPasswordIsHelpText:
	text "BUENA: Huh?"
	line "Today's password?"

	para "HELP, of course!"
	done

RadioTower2FBuenaCardIsFullText:
	text "BUENA: Your BLUE"
	line "CARD's full."

	para "Trade it in for a"
	line "fabulous prize!"
	done

RadioTower2FBuenaTuneInAfterSixText:
	text "BUENA: Tune in to"
	line "PASSWORD every"

	assert EVE_HOUR == 12 + 5
	para "night from five"
	line "to midnight!"

	para "Tune in, then drop"
	line "in for a visit!"
	done

RadioTower2FBuenaNoBlueCardText:
	text "BUENA: Oh? You"
	line "forgot to bring"
	cont "your BLUE CARD?"

	para "I can't give you"
	line "points if you"
	cont "don't have it."
	done

RadioTower2FBuenaOfferPhoneNumberText:
	text "BUENA: Oh! Your"
	line "BLUE CARD reached"

	para "{d:BLUE_CARD_POINT_CAP} points today!"
	line "That's so wild!"

	para "Hmm… There isn't a"
	line "prize for hitting"
	cont "{d:BLUE_CARD_POINT_CAP} points, but…"

	para "You came by so"
	line "often, <PLAYER>."

	para "I'll make you a"
	line "special deal!"

	para "How would you like"
	line "my phone number?"
	done

RadioTower2FBuenaOfferNumberAgainText:
	text "BUENA: <PLAYER>,"
	line "do you want to"

	para "register my phone"
	line "number?"
	done

RadioTower2FRegisteredBuenasNumberText:
	text "<PLAYER> registered"
	line "BUENA's number."
	done

RadioTower2FBuenaCallMeText:
	text "BUENA: I look"
	line "forward to hearing"
	cont "from you!"
	done

RadioTower2FBuenaSadRejectedText:
	text "BUENA: Aww… It's a"
	line "special prize…"
	done

RadioTower2FBuenaYourPhoneIsFullText:
	text "BUENA: <PLAYER>,"
	line "your phone list"

	para "has no room left"
	line "for me…"
	done

RadioTower2FBuenaReceptionistNoCardText:
	text "You can't trade in"
	line "points without"
	cont "your BLUE CARD."

	para "Don't forget your"
	line "BLUE CARD!"
	done

RadioTower2FSalesSignText:
	text "2F SALES"
	done

RadioTower2FOaksPKMNTalkSignText:
	text "PROF.OAK'S #MON"
	line "TALK"

	para "The Hottest Show"
	line "on the Air!"
	done

RadioTower2FPokemonRadioSignText:
	text "Anywhere, Anytime"
	line "#MON Radio"
	done
