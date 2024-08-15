SafariZoneWest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 22,  2, SAFARI_ZONE_NORTH, 8
	warp_event 23,  2, SAFARI_ZONE_NORTH, 9
	warp_event 28,  2, SAFARI_ZONE_NORTH, 3
	warp_event 29,  2, SAFARI_ZONE_NORTH, 4
	warp_event 31, 24, SAFARI_ZONE_HUB, 5
	warp_event 31, 25, SAFARI_ZONE_HUB, 6
	warp_event 13, 13, SAFARI_ZONE_WEST_REST_HOUSE_1, 1
	warp_event  5,  5, SAFARI_ZONE_WEST_REST_HOUSE_2, 1

	def_coord_events

	def_bg_events
	bg_event 26, 24, BGEVENT_JUMPTEXT, SafariZoneWestAreaSignText
	bg_event 14, 14, BGEVENT_JUMPTEXT, SafariZoneWestRestHouseSignText
	bg_event 28,  6, BGEVENT_JUMPTEXT, SafariZoneWestTrainerTips1SignText
	bg_event 19,  5, BGEVENT_JUMPTEXT, SafariZoneWestTrainerTips2SignText
	bg_event 13,  6, BGEVENT_ITEM + NUGGET, EVENT_SAFARI_ZONE_WEST_HIDDEN_NUGGET

	def_object_events
	object_event 22, 23, SPRITE_LASS, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassDuplica, -1
	object_event 23, 12, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperAmos, -1
	object_event 12, 19, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerTamerBrett, -1
	itemball_event 14,  9, MAX_REVIVE, 1, EVENT_SAFARI_ZONE_WEST_MAX_REVIVE

GenericTrainerLassDuplica:
	generictrainer LASS, DUPLICA, EVENT_BEAT_LASS_DUPLICA, LassDuplicaSeenText, LassDuplicaBeatenText

	text "I'm really good at"
	line "impressions!"

	para "Someday I'll become"
	line "a FUCHSIA GYM"

	para "TRAINER and mimic"
	line "JANINE."
	done

GenericTrainerCamperAmos:
	generictrainer CAMPER, AMOS, EVENT_BEAT_CAMPER_AMOS, CamperAmosSeenText, CamperAmosBeatenText

	text "I'll search far"
	line "and wide for new"
	cont "#MON."
	done

GenericTrainerTamerBrett:
	generictrainer TAMER, BRETT, EVENT_BEAT_TAMER_BRETT, TamerBrettSeenText, TamerBrettBeatenText

	text "You have to com-"
	line "mand #MON with"
	cont "confidence."

	para "Earning BADGES can"
	line "help with that."
	done

LassDuplicaSeenText:
	text "To truly use"
	line "DITTO, you must"
	cont "know all #MON!"
	done

LassDuplicaBeatenText:
	text "I've got a lot"
	line "to learn."
	done

CamperAmosSeenText:
	text "Plenty of #MON"
	line "live in the SAFARI"
	cont "ZONE."

	para "I'm here to catch"
	line "'em all!"
	done

CamperAmosBeatenText:
	text "I lost 'cause I"
	line "have to train"
	cont "them!"
	done

TamerBrettSeenText:
	text "Do you know how to"
	line "handle aggressive"
	cont "#MON?"
	done

TamerBrettBeatenText:
	text "Yeah, you do!"
	done

SafariZoneWestAreaSignText:
	text "SAFARI ZONE"
	line "WEST AREA"
	done

SafariZoneWestRestHouseSignText:
	text "REST HOUSE"
	done

SafariZoneWestTrainerTips1SignText:
	text "Trainer Tips"

	para "Fire-type #MON"
	line "cannot be burnt,"

	para "electric types"
	line "can't be paralyzed,"

	para "and ice types can't"
	line "be frozen solid."
	done

SafariZoneWestTrainerTips2SignText:
	text "TRAINER TIPS"

	para "In a sandstorm,"
	line "rock-type #MON"

	para "get a boost to"
	line "their SPCL.DEF."
	done
