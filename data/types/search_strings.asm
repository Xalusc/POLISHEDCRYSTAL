PokedexTypeSearchStrings:
; entries correspond with PokedexTypeSearchConversionTable (see data/types/search_types.asm)
	table_width POKEDEX_TYPE_STRING_LENGTH, PokedexTypeSearchStrings
	rawchar "  ----  @"
	rawchar " NORMAL @"
	rawchar "  FIRE  @"
	rawchar " WATER  @"
	rawchar " GRASS  @"
	rawchar "ELECTRIC@"
	rawchar "  ICE   @"
	rawchar "FIGHTING@"
	rawchar " POISON @"
	rawchar " GROUND @"
	rawchar " FLYING @"
	rawchar "PSYCHIC @"
	rawchar "  BUG   @"
	rawchar "  ROCK  @"
	rawchar " GHOST  @"
	rawchar " DRAGON @"
	rawchar "  DARK  @"
	rawchar " STEEL  @"
	rawchar " FAIRY  @"
	assert_table_length NUM_TYPES ; discount UNKNOWN_T, count ----
