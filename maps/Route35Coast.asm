Route35Coast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 35, 14, BGEVENT_ITEM + STAR_PIECE, EVENT_ROUTE_35_COAST_HIDDEN_STAR_PIECE

	def_object_events
	object_event 26,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmermWalter, -1
	object_event 24, 23, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfLisa, -1
	object_event 13, 18, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfJill, -1
	object_event 35, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBird_keeperBryan, -1
	object_event 39, 16, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSrandjrBeaandmay1, -1
	object_event 39, 17, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSrandjrBeaandmay2, -1
	object_event 16, 10, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSailorHarvey, -1
	object_event 38,  6, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerLassRose, -1
	itemball_event 37,  5, BIG_PEARL, 1, EVENT_ROUTE_35_COAST_BIG_PEARL

GenericTrainerSwimmermWalter:
	generictrainer SWIMMERM, WALTER, EVENT_BEAT_SWIMMERM_WALTER, SwimmermWalterSeenText, SwimmermWalterBeatenText

	text "The sun reflects"
	line "off the water"

	para "and it burned me"
	line "anyway!"
	done

GenericTrainerSwimmerfLisa:
	generictrainer SWIMMERF, LISA, EVENT_BEAT_SWIMMERF_LISA, SwimmerfLisaSeenText, SwimmerfLisaBeatenText

	text "There's enough"
	line "room in the sea"

	para "for fishing and"
	line "battling."
	done

GenericTrainerSwimmerfJill:
	generictrainer SWIMMERF, JILL, EVENT_BEAT_SWIMMERF_JILL, SwimmerfJillSeenText, SwimmerfJillBeatenText

	text "I'll forget my"
	line "loss with a swim."
	done

GenericTrainerBird_keeperBryan:
	generictrainer BIRD_KEEPER, BRYAN, EVENT_BEAT_BIRD_KEEPER_BRYAN, Bird_keeperBryanSeenText, Bird_keeperBryanBeatenText

	text "Some #MON flee"
	line "right away."

	para "Try catching them"
	line "with KURT's FAST"
	cont "BALL."

	para "Whenever I find a"
	line "WHT APRICORN, I"
	cont "take it to KURT."

	para "He turns it into a"
	line "custom BALL."
	done

GenericTrainerSrandjrBeaandmay1:
	generictrainer SR_AND_JR, BEAANDMAY1, EVENT_BEAT_SR_AND_JR_BEA_AND_MAY, SrandjrBeaandmay1SeenText, SrandjrBeaandmay1BeatenText

	text "BEA: I'll teach"
	line "MAY how to become"
	cont "stronger."
	done

GenericTrainerSrandjrBeaandmay2:
	generictrainer SR_AND_JR, BEAANDMAY2, EVENT_BEAT_SR_AND_JR_BEA_AND_MAY, SrandjrBeaandmay2SeenText, SrandjrBeaandmay2BeatenText

	text "MAY: I'll ask BEA"
	line "how to become"
	cont "stronger."
	done

GenericTrainerSailorHarvey:
	generictrainer SAILOR, HARVEY, EVENT_BEAT_SAILOR_HARVEY, SailorHarveySeenText, SailorHarveyBeatenText

	text "On the sea, the"
	line "only thing you can"

	para "count on is your"
	line "own good self!"

	para "I'm so proud of my"
	line "buff bod!"
	done

GenericTrainerLassRose:
	generictrainer LASS, ROSE, EVENT_BEAT_LASS_ROSE, LassRoseSeenText, LassRoseBeatenText

	text "You hurt my poor"
	line "worldly #MON!"

	para "I demand that you"
	line "heal them at a"
	cont "#MON CENTER!"
	done

SwimmermWalterSeenText:
	text "I forgot to wear"
	line "sunscreen, so I'm"

	para "hiding by these"
	line "shady rocks."
	done

SwimmermWalterBeatenText:
	text "Ouch!"
	done

SwimmerfLisaSeenText:
	text "The fishermen"
	line "yelled at me for"
	cont "bugging them…"
	done

SwimmerfLisaBeatenText:
	text "I only wanted"
	line "to battle…"
	done

SwimmerfJillSeenText:
	text "Don't I look good"
	line "in this bikini?"
	done

SwimmerfJillBeatenText:
	text "Hmph!"
	done

Bird_keeperBryanSeenText:
	text "What kinds of"
	line "BALLS do you use?"
	done

Bird_keeperBryanBeatenText:
	text "Yikes! Not fast"
	line "enough!"
	done

SrandjrBeaandmay1SeenText:
	text "BEA: I like strong"
	line "#MON better"

	para "than cute"
	line "#MON."

	para "But together, we"
	line "have cute and"
	cont "strong #MON!"
	done

SrandjrBeaandmay1BeatenText:
	text "BEA: Strength and"
	line "cuteness weren't"
	cont "enough!"
	done

SrandjrBeaandmay2SeenText:
	text "MAY: I like cute"
	line "#MON better"

	para "than strong"
	line "#MON."

	para "But together, we"
	line "have strong and"
	cont "cute #MON!"
	done

SrandjrBeaandmay2BeatenText:
	text "MAY: Cuteness and"
	line "strength weren't"
	cont "enough!"
	done

SailorHarveySeenText:
	text "Hah! Your #MON"
	line "sure look like"
	cont "lightweights!"
	done

SailorHarveyBeatenText:
	text "What power!"
	line "How would you like"

	para "to sail the seas"
	line "with me?"
	done

LassRoseSeenText:
	text "I collected these"
	line "#MON from all"
	cont "around the world!"
	done

LassRoseBeatenText:
	text "Oh no!"
	line "I went around the"
	cont "world for these!"
	done

