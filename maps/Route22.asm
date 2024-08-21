Route22_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, POKEMON_LEAGUE_GATE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_JUMPTEXT, VictoryRoadEntranceSignText
	bg_event  5,  9, BGEVENT_JUMPTEXT, Route22AdvancedTipsSignText

	def_object_events
	object_event 14, 11, SPRITE_KUKUI, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KukuiScript, -1
	object_event 20,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route22CooltrainerfText, -1

	object_const_def
	const ROUTE22_KUKUI

KukuiScript:
	checkevent EVENT_BEAT_KUKUI
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	checkevent EVENT_INTRODUCED_KUKUI
	iftruefwd .Introduced
	writetext .IntroText
	sjumpfwd .Question
.Introduced
	writetext .RematchText
.Question
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .SeenText
	waitbutton
	closetext
	setevent EVENT_INTRODUCED_KUKUI
	winlosstext .BeatenText, 0
	setlasttalked ROUTE22_KUKUI
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Rematch
	loadtrainer KUKUI, 1
	sjumpfwd .StartBattle
.Rematch
	loadtrainer KUKUI, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KUKUI
	jumpthistext

.AfterText:
	text "Amazing! I went"
	line "right at you, and"
	cont "you still won!"

	para "No wonder you're"
	line "the CHAMPION!"

	para "I need to train"
	line "harder before I'm"

	para "ready for the"
	line "LEAGUE."

	para "And when I do,"
	line "I'll battle you"
	cont "again! Woo!"
	done

.IntroText:
	text "Hey there!"
	line "The name's KUKUI."

	para "So, you go by"
	line "<PLAYER>? 10-4,"
	cont "good buddy!"

	para "I'm from the far-"
	line "off region of"
	cont "ALOLA!"

	para "But we don't have a"
	line "#MON LEAGUE, so"

	para "I came to KANTO to"
	line "battle the ELITE"
	cont "FOUR here, yeah!"

	para "Huh? You're the"
	line "new CHAMPION?"

	para "Woo, no wonder you"
	line "look so stylin'!"

	para "My team and I feel"
	line "ready. How about"

	para "we skip the LEAGUE"
	line "and challenge you"
	cont "right now?"
	done

.RematchText:
	text "Hey there,"
	line "<PLAYER>!"

	para "I've been training"
	line "hard since our"
	cont "last battle, yeah!"

	para "You look like you"
	line "got stronger too!"

	para "Say, how about a"
	line "rematch?"
	done

.SeenText:
	text "Let's have a battle"
	line "worthy of this"
	cont "moment!"
	done

.BeatenText:
	text "I couldn't win"
	line "even though I"
	cont "went all out…"
	done

.RefusedText:
	text "Totally focused on"
	line "your own quest,"
	cont "yeah?"

	para "I respect that!"
	done

Route22CooltrainerfText:
	text "The name “KANTO”"
	line "means “east of the"
	cont "barrier.”"

	para "I suppose the"
	line "barrier must be"
	cont "MT.SILVER."
	done

VictoryRoadEntranceSignText:
	text "ROUTE 22"

	para "#MON LEAGUE"
	line "RECEPTION GATE"
	done

Route22AdvancedTipsSignText:
	text "ADVANCED TIPS!"

	para "Starting a NEW"
	line "GAME+ will keep"

	para "your previous"
	line "game's money,"
	cont "BATTLE POINTS, and"

	para "any #MON stored"
	line "in the PC!"
	done
