OaksLab_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  0,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  1,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  2,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  3,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  6,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  4,  0, BGEVENT_JUMPTEXT, OaksLabPoster1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OaksLabPoster2Text	
	bg_event  0,  1, BGEVENT_JUMPTEXT, OaksLabPCText

	def_object_events
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, -1
	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, EEVEE, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EeveeDollScript, EVENT_DECO_EEVEE_DOLL
	object_event  1,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant1Text, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant2Text, -1
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant3Text, -1
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, OaksLabPokedexText, -1

	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_EEVEE_DOLL

Oak:
	faceplayer
	opentext
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .GiveStarter
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .GiveStarter
	writetext OakWelcomeKantoText
	promptbutton
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
.GiveStarter:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .CheckBadges
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iffalse .CheckBadges
	writetext OakLabGiveStarterText
	promptbutton
	waitsfx
	checkevent EVENT_GOT_BULBASAUR_FROM_IVY
	iftrue .Charmander
	checkevent EVENT_GOT_CHARMANDER_FROM_IVY
	iftrue .Squirtle
	givepoke BULBASAUR, NO_FORM, 10, SITRUS_BERRY
	iffalse .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump .CheckBadges

.Charmander:
	givepoke CHARMANDER, NO_FORM, 10, SITRUS_BERRY
	iffalse .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump .CheckBadges

.Squirtle:
	givepoke SQUIRTLE, NO_FORM, 10, SITRUS_BERRY
	iffalse .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump .CheckBadges

.PartyAndBoxFull:
	writetext OakLabPartyAndBoxFullText
	waitbutton
.CheckBadges:
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .CheckPokedex
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftrue .BattleOak
	readvar VAR_BADGES
	ifequal 16, .Complain1
	ifequal  8, .Complain2
	writetext OakYesKantoBadgesText
	promptbutton
.CheckPokedex:
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	checkevent EVENT_GOT_OVAL_CHARM_FROM_OAK
	iftrue .NoOvalCharm
	readvar VAR_DEXSEEN
	ifless NUM_POKEMON, .NoOvalCharm
	writetext OakLabSeenAllText
	promptbutton
	verbosegivekeyitem OVAL_CHARM
	setevent EVENT_GOT_OVAL_CHARM_FROM_OAK
	writetext OakLabOvalCharmText
	waitbutton
.NoOvalCharm
	checkevent EVENT_GOT_SHINY_CHARM_FROM_OAK
	iftrue .NoShinyCharm
	readvar VAR_DEXCAUGHT
	ifless NUM_POKEMON, .NoShinyCharm
	writetext OakLabCaughtAllText
	promptbutton
	verbosegivekeyitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	setevent EVENT_GOT_SHINY_CHARM_FROM_OAK
	writetext OakLabShinyCharmText
	waitbutton
.NoShinyCharm
	jumpopenedtext OakLabGoodbyeText

.BattleOak:
	checkevent EVENT_LISTENED_TO_OAK_INTRO
	iftrue .HeardIntro
	writetext OakMightBeReadyText
	waitbutton
	setevent EVENT_LISTENED_TO_OAK_INTRO
.HeardIntro:
	writetext OakChallengeText
	yesorno
	iffalse .NotReady
	writetext OakSeenText
	waitbutton
	closetext
	winlosstext OakWinText, 0
	setlasttalked OAKSLAB_OAK
	loadtrainer PROF_OAK, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext OakOpenMtSilverText
	promptbutton
	setevent EVENT_BEAT_PROF_OAK
	setevent EVENT_OPENED_MT_SILVER
	sjump .CheckPokedex

.NotReady:
	writetext OakRefusedText
	promptbutton
	sjump .CheckPokedex

.Complain1:
	writetext OakNoEliteFourRematchText
	promptbutton
	sjump .CheckPokedex

.Complain2:
	writetext OakNoKantoBadgesText
	promptbutton
	sjump .CheckPokedex

EeveeDollScript:
	turnobject OAKSLAB_OAK, RIGHT
	opentext
	writetext ProfOakEeveeDollTradeText
	waitbutton
	checkitem EVERSTONE
	iffalse_jumpopenedtext NoEverstoneText
	writetext WantToTradeText
	yesorno
	iffalse_jumpopenedtext NoTradeText
	takeitem EVERSTONE
	disappear OAKSLAB_EEVEE_DOLL
	setevent EVENT_DECO_EEVEE_DOLL
	writetext EeveeDollText
	playsound SFX_ITEM
	pause 60
	waitbutton
	writetext EeveeDollSentText
	waitbutton
	jumpopenedtext ProfOakAfterTradeText

OakWelcomeKantoText:
	text "OAK: Ah, <PLAYER>!"
	line "It's good of you"

	para "to come all this"
	line "way to KANTO."

	para "What do you think"
	line "of the trainers"

	para "out here?"
	line "Pretty tough, huh?"
	done

OakLabGiveStarterText:
	text "OAK: Oh, so PROF."
	line "IVY says hello?"

	para "Thanks for convey-"
	line "ing her message,"
	cont "<PLAYER>."

	para "She's a good friend"
	line "of mine."

	para "If she gave you a"
	line "#MON, let me do"
	cont "the same!"

	para "You don't see this"
	line "#MON very often"
	cont "in KANTO or JOHTO."
	done

OakLabPartyAndBoxFullText:
	text "Hm, you don't have"
	line "room for it, and"
	line "your BOX is full."
	done

OakLabDexCheckText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

OakLabSeenAllText:
	text "You've been meeting"
	line "new #MON at a"

	para "good clip, haven't"
	line "you?"

	para "Take this as a"
	line "reward for your"
	cont "hard work!"
	done

OakLabOvalCharmText:
	text "Holding an OVAL"
	line "CHARM will improve"

	para "your chances of"
	line "finding an EGG at"
	cont "the DAY-CARE."
	done

OakLabCaughtAllText:
	text "I was completely"
	line "justified in"

	para "giving you that"
	line "#DEX."

	para "It is a testament"
	line "to your effort…"

	para "And to the support"
	line "of the many who"
	cont "helped you…"

	para "And to the bonds"
	line "you have built"
	cont "with your #MON!"

	para "Take this as a"
	line "reward for your"
	cont "hard work!"
	done

OakLabShinyCharmText:
	text "Holding a SHINY"
	line "CHARM will improve"

	para "your chances of"
	line "finding a shiny"
	cont "#MON!"
	done

OakLabGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

OakMightBeReadyText:
	text "OAK: Incredible,"
	line "<PLAYER>!"

	para "You won against"
	line "the ELITE FOUR"
	cont "a second time!"

	para "You just might be"
	line "ready to ascend"
	cont "MT.SILVER."
	done

OakChallengeText:
	text "OAK: MT.SILVER is"
	line "a tall mountain"

	para "that is home to"
	line "many wild #MON."

	para "It's too dangerous"
	line "for your average"

	para "trainer, so it's"
	line "off limits."

	para "I'll need to see"
	line "your skills for"
	cont "myself."

	para "Are you ready for"
	line "a battle?"
	done

OakRefusedText:
	text "OAK: Come back"
	line "when you're ready."
	done

OakSeenText:
	text "OAK: Put every-"
	line "thing you have"
	cont "into this battle!"
	done

OakWinText:
	text "I was right in my"
	line "assessment of you!"
	done

OakOpenMtSilverText:
	text "OAK: Spectacular,"
	line "<PLAYER>!"

	para "I'll make arrange-"
	line "ments so that you"

	para "can go to MT."
	line "SILVER."

	para "It's unusual, but"
	line "we can make an"

	para "exception in your"
	line "case, <PLAYER>."

	para "Go up to INDIGO"
	line "PLATEAU. You can"

	para "reach MT.SILVER"
	line "from there."

	para "…"

	para "I let RED train on"
	line "MT.SILVER after"

	para "his first defeat"
	line "as CHAMPION."

	para "But he hasn't"
	line "come back…"
	done

OakNoKantoBadgesText:
	text "OAK: Hmm? You're"
	line "not collecting"
	cont "KANTO GYM BADGES?"

	para "The GYM LEADERS in"
	line "KANTO are as tough"

	para "as any you battled"
	line "in JOHTO."

	para "I recommend that"
	line "you challenge"
	cont "them."
	done

OakNoEliteFourRematchText:
	text "OAK: Wow! That's"
	line "excellent!"

	para "You collected the"
	line "BADGES of GYMS in"
	cont "KANTO. Well done!"

	para "Now you can cha-"
	line "llenge the ELITE"

	para "FOUR with their"
	line "best #MON."

	para "Keep trying hard,"
	line "<PLAYER>!"
	done

OakYesKantoBadgesText:
	text "OAK: Ah, you're"
	line "collecting KANTO"
	cont "GYM BADGES."

	para "I imagine that"
	line "it's hard, but the"

	para "experience is sure"
	line "to help you."

	para "After you earn all"
	line "eight, you can"
	cont "challenge the"

	para "ELITE FOUR at"
	line "their best."

	para "Keep trying hard,"
	line "<PLAYER>!"
	done

OaksAssistant1Text:
	text "The PROF's #MON"
	line "TALK radio program"

	para "isn't aired here"
	line "in KANTO."

	para "It's a shame--I'd"
	line "like to hear it."
	done

OaksAssistant2Text:
	text "Thanks to your"
	line "work on the #-"
	cont "DEX, the PROF's"

	para "research is coming"
	line "along great."
	done

OaksAssistant3Text:
	text "Don't tell anyone,"
	line "but PROF.OAK's"

	para "#MON TALK isn't"
	line "a live broadcast."
	done

OaksLabPoster1Text:
	text "Press START to"
	line "open the Menu."
	done

OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the Menu."

	para "Use it in a timely"
	line "manner."
	done

OaksLabPCText:
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "PROF.OAK, how is"
	line "your research"
	cont "coming along?"

	para "I'm still plugging"
	line "away."

	para "I heard rumors"
	line "that <PLAYER> is"

	para "getting quite a"
	line "reputation."

	para "I'm delighted to"
	line "hear that."

	para "ELM in NEW BARK"
	line "TOWN 8-)"
	done

ProfOakEeveeDollTradeText:
	text "OAK: Oh, are you"
	line "admiring my"
	cont "EEVEE DOLL?"

	para "I'll trade it"
	line "to you for an"
	cont "EVERSTONE."
	done

NoEverstoneText:
	text "But you don't have"
	line "one of those…"
	done

WantToTradeText:
	text "Do you want to"
	line "trade?"
	done

NoTradeText:
	text "It will still be"
	line "here if you change"
	cont "your mind."
	done

EeveeDollText:
	text "<PLAYER> received"
	line "EEVEE DOLL."
	done

EeveeDollSentText:
	text "EEVEE DOLL"
	line "was sent home."
	done

ProfOakAfterTradeText:
	text "PROF.OAK: Set it"
	line "somewhere you can"
	cont "appreciate it!"
	done

OaksLabPokedexText:
	text "It's PROF.OAK's"
	line "#DEX."
	done
