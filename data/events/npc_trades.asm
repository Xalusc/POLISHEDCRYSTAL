NPCTrades:
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
; NPC_TRADE_MIKE in Goldenrod City
	rawchar 0, ABRA,       MACHOP,     "MUSCLE@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SATK_DOWN,  FEMALE, LEVEL_BALL,   SITRUS_BERRY
	dw 37460
	rawchar "MIKE@@@@", $00
; NPC_TRADE_KYLE in Violet City
	rawchar 0, POLIWAG,    VOLTORB,    "MIMIC@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   MALE,   PREMIER_BALL, PERSIM_BERRY
	dw 48926
	rawchar "KYLE@@@@", $00
; NPC_TRADE_TIM in Olivine City
	rawchar 1, STEELIX,    KANGASKHAN, "JOEY@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_ATK_UP_SPD_DOWN,   MALE,   HEAVY_BALL,   SILK_SCARF
	dw 29189
	rawchar "TIM@@@@@", $00
; NPC_TRADE_EMY in Blackthorn City
	rawchar 3, JYNX,       MR__MIME,   "DORIS@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_ATK_DOWN,   FEMALE, LOVE_BALL,    PINK_BOW
	dw 00283
	rawchar "EMY@@@@@", $00
; NPC_TRADE_CHRIS in Pewter City
	rawchar 2, PINSIR,     HERACROSS,  "PAUL@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_SATK_DOWN,  MALE,   PARK_BALL,    SILVERPOWDER
	dw 15616
	rawchar "CHRIS@@@", $00
; NPC_TRADE_KIM in Route 14
	rawchar 3, WOBBUFFET,  CHANSEY,    "CHANCE@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_ATK_DOWN,  FEMALE, HEAL_BALL,    LUCKY_EGG
	dw 26491
	rawchar "KIM@@@@@", $00
; NPC_TRADE_JACQUES in Goldenrod Harbor
	rawchar 1, TENTACOOL,  GRIMER,     "GAIL@@@@@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SDEF_UP_SATK_DOWN, FEMALE, LURE_BALL,    EVIOLITE
	dw 50082
	rawchar "JACQUES@", $00
; NPC_TRADE_HARI in Ecruteak City
	rawchar 0, FARFETCH_D, DODUO,      "CLARENCE@@@"
	db $EE, $EE, $EE, HIDDEN_ABILITY | NAT_SPD_UP_DEF_DOWN,   MALE,   FAST_BALL,    GOLD_LEAF
	dw 43972
	rawchar "HARI@@@@", $00
	assert_table_length NUM_NPC_TRADES
