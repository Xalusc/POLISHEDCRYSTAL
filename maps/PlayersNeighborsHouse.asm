PlayersNeighborsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 3
	warp_event  3,  7, NEW_BARK_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, PlayersNeighborsHouseRadio

	def_object_events
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PlayersNeighborText, EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	object_event  2,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, PlayersNeighborsDaughterText, -1
	object_event  5,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PlayersNeighborsHusbandText, -1

PlayersNeighborsHouseRadio:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayerNeighborRadioText1
	pause 45
	writetext PlayerNeighborRadioText2
	pause 45
	writetext PlayerNeighborRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, $10
	writetext PlayerNeighborRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end
.NormalRadio:
	jumpstd radio1
.AbbreviatedRadio:
	opentext
	writetext PlayerNeighborRadioText4
	pause 45
	endtext

PlayersNeighborsDaughterText:
	text "PIKACHU is an"
	line "evolved #MON."

	para "I was amazed by"
	line "PROF.ELM's find-"
	cont "ings."

	para "He's so famous for"
	line "his research on"
	cont "#MON evolution."

	para "…sigh…"

	para "I wish I could be"
	line "a researcher like"
	cont "him…"
	done

PlayersNeighborsHusbandText:
	text "This town is the"
	line "farthest south-"

	para "east one in all"
	line "of JOHTO."
	done

PlayersNeighborText:
	text "My daughter is"
	line "adamant about"

	para "becoming PROF."
	line "ELM's assistant."

	para "She really loves"
	line "#MON!"

	para "But then, so do I!"
	done

PlayerNeighborRadioText1:
	text "PROF.OAK's #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayerNeighborRadioText2:
	text "#MON CHANNEL!"
	done

PlayerNeighborRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayerNeighborRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done
