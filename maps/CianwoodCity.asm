CianwoodCity_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCityFlyPointAndSuicune

	def_warp_events
	warp_event 17, 41, MANIAS_HOUSE, 1
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 47, CIANWOOD_PHARMACY, 1
	warp_event  9, 31, CIANWOOD_CITY_PHOTO_STUDIO, 1
	warp_event 15, 37, CIANWOOD_LUGIA_SPEECH_HOUSE, 1
	warp_event  5, 17, MOVE_MANIACS_HOUSE, 1
	warp_event  4, 25, CLIFF_EDGE_GATE, 1

	def_coord_events
	coord_event 11, 16, 1, CianwoodCitySuicuneAndEusine

	def_bg_events
	bg_event 20, 34, BGEVENT_JUMPTEXT, CianwoodCitySignText
	bg_event  6, 44, BGEVENT_JUMPTEXT, CianwoodGymSignText
	bg_event 19, 47, BGEVENT_JUMPTEXT, CianwoodPharmacySignText
	bg_event  8, 32, BGEVENT_JUMPTEXT, CianwoodPhotoStudioSignText
	bg_event  6, 26, BGEVENT_JUMPTEXT, CianwoodCliffEdgeGateSignText
	bg_event  8, 22, BGEVENT_JUMPTEXT, CianwoodMoveManiacSignText
	bg_event  4, 19, BGEVENT_ITEM + REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE
	bg_event  5, 29, BGEVENT_ITEM + MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER

	def_object_events
	object_event 11, 21, SPRITE_EUSINE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CIANWOOD_CITY_EUSINE
	object_event 10, 14, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SUICUNE, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	object_event 21, 37, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCityYoungsterText, -1
	object_event 16, 33, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCityPokefanMText, -1
	object_event 14, 42, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCityLassText, -1
	smashrock_event  8, 16
	smashrock_event  9, 17
	smashrock_event  6, 24
	smashrock_event  4, 29
	smashrock_event 10, 27
	smashrock_event  4, 19
	object_event 10, 46, SPRITE_MATRON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodCityChucksWife, -1
	object_event  4, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCityRocketText, EVENT_BEAT_CHUCK
	object_event  9, 25, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCitySailorText, -1
	object_event 22, 32, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodCityFisherText, -1

	object_const_def
	const CIANWOODCITY_EUSINE
	const CIANWOODCITY_SUICUNE

CianwoodCityFlyPointAndSuicune:
	setflag ENGINE_FLYPOINT_CIANWOOD
	setevent EVENT_EUSINE_IN_BURNED_TOWER
	checkevent EVENT_BEAT_EUSINE
	iffalse .Done
	disappear CIANWOODCITY_EUSINE
.Done:
	endcallback

CianwoodCitySuicuneAndEusine:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneApproachMovement
	turnobject PLAYER, DOWN
	pause 15
	playsound SFX_WARP_FROM
	applymovement CIANWOODCITY_SUICUNE, CianwoodCitySuicuneDepartMovement
	disappear CIANWOODCITY_SUICUNE
	pause 10
	setscene $0
	clearevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	checkevent EVENT_GOT_HM05_WHIRLPOOL
	iftrue .NoLyra
	setmapscene ROUTE_42, $1
	sjump .Continue
.NoLyra
	setmapscene ROUTE_42, $2
.Continue
	checkevent EVENT_BEAT_EUSINE
	iftrue DoNothingScript
	setevent EVENT_BEAT_EUSINE
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	appear CIANWOODCITY_EUSINE
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineApproachMovement
	showtext EusineSuicuneText
	winlosstext EusineBeatenText, EusineLossText
	setlasttalked CIANWOODCITY_EUSINE
	loadtrainer MYSTICALMAN, EUSINE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special DeleteSavedMusic
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	showtext EusineAfterText
	applymovement CIANWOODCITY_EUSINE, CianwoodCityEusineDepartMovement
	disappear CIANWOODCITY_EUSINE
	pause 20
	special Special_FadeOutMusic
	playmapmusic
	pause 10
	end

CianwoodCityChucksWife:
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptextfaceplayer ChucksWifeChubbyText
	jumptextfaceplayer ChucksWifeEasierToFlyText

CianwoodCitySuicuneApproachMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_down
	fast_jump_step_right
	step_end

CianwoodCitySuicuneDepartMovement:
	fix_facing
	fast_jump_step_right
	fast_jump_step_up
	fast_jump_step_right
	fast_jump_step_right
	step_end

CianwoodCityEusineApproachMovement:
	step_up
	step_up
	step_up
	step_up
	step_end

CianwoodCityEusineDepartMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

ChucksWifeEasierToFlyText:
	text "You crossed the"
	line "sea to get here?"

	para "That must have"
	line "been hard."

	para "It would be much"
	line "easier if your"

	para "#MON knew how"
	line "to FLY…"
	done

ChucksWifeChubbyText:
	text "That's CIANWOOD's"
	line "GYM BADGE!"

	para "My husband lost to"
	line "you, so he needs"
	cont "to train harder."

	para "That's good, since"
	line "he was getting a"
	cont "little chubby."

	para "The waterfalls on"
	line "ROUTE 47 north of"

	para "here are a good"
	line "training spot."
	done

CianwoodCityYoungsterText:
	text "If you use FLY,"
	line "you can get back"

	para "to OLIVINE in-"
	line "stantly."
	done

CianwoodCityPokefanMText:
	text "Boulders to the"
	line "north of town can"
	cont "be crushed."

	para "They may be hiding"
	line "something."

	para "Your #MON could"
if DEF(FAITHFUL)
	line "use ROCK SMASH to"
	cont "break them."
else
	line "use BRICK BREAK"
	cont "to smash them."
endc
	done

CianwoodCityLassText:
	text "CHUCK, the GYM"
	line "LEADER, spars with"

	para "his fighting #-"
	line "MON."
	done

CianwoodCityRocketText:
	text "This way is off-"
	line "limits!"

	para "Why? Mind your"
	line "own business!"
	done

CianwoodCitySailorText:
	text "That cave is the"
	line "only way to reach"
	cont "ROUTE 47."
	done

CianwoodCityFisherText:
	text "CIANWOOD PHARMACY"
	line "has been in busi-"
	cont "ness for over"
	cont "500 years."

	para "That's got to be"
	line "some kind of"
	cont "record, right?"
	done

EusineSuicuneText:
	text "EUSINE: Yo,"
	line "<PLAYER>."

	para "Wasn't that"
	line "SUICUNE just now?"

	para "I only caught a"
	line "quick glimpse, but"

	para "I thought I saw"
	line "SUICUNE running on"
	cont "the waves."

	para "SUICUNE is beau-"
	line "tiful and grand."

	para "And it races"
	line "through towns and"

	para "roads at simply"
	line "awesome speeds."

	para "It's wonderful…"

	para "I want to see"
	line "SUICUNE up close…"

	para "I've decided."

	para "I'll battle you as"
	line "a trainer to earn"
	cont "SUICUNE's respect!"

	para "Come on, <PLAYER>."
	line "Let's battle now!"
	done

EusineBeatenText:
	text "I hate to admit"
	line "it, but you win."
	done

EusineLossText:
	text "Yes!"

	para "Surely SUICUNE"
	line "will recognize"
	cont "my greatness now!"
	done

EusineAfterText:
	text "You're amazing,"
	line "<PLAYER>!"

	para "No wonder #MON"
	line "gravitate to you."

	para "I get it now."

	para "I'm going to keep"
	line "searching for"
	cont "SUICUNE."

	para "I'm sure we'll see"
	line "each other again."

	para "See you around!"
	done

CianwoodCitySignText:
	text "CIANWOOD CITY"

	para "A Port Surrounded"
	line "by Rough Seas"
	done

CianwoodGymSignText:
	text "CIANWOOD CITY"
	line "#MON GYM"

	para "LEADER: CHUCK"

	para "His Roaring Fists"
	line "Do the Talking"
	done

CianwoodPharmacySignText:
	text "500 Years of"
	line "Tradition"

	para "CIANWOOD CITY"
	line "PHARMACY"

	para "We Await Your"
	line "Medicinal Queries"
	done

CianwoodPhotoStudioSignText:
	text "CIANWOOD CITY"
	line "PHOTO STUDIO"

	para "Take a Snapshot as"
	line "a Keepsake!"
	done

CianwoodCliffEdgeGateSignText:
	text "CLIFF EDGE GATE"

	para "YELLOW FOREST is"
	line "just ahead!"
	done

CianwoodMoveManiacSignText:
	text "THE MOVE MANIAC"
	line "AHEAD"
	done
