MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 120, 100, Route29Name
	landmark 100, 100, CherrygroveCityName
	landmark  92, 100, CherrygroveBayName
	landmark 100,  80, Route30Name
	landmark  96,  60, Route31Name
	landmark  84,  60, VioletCityName
	landmark  86,  58, SproutTowerName
	landmark  84,  52, VioletOutskirtsName
	landmark  76,  76, RuinsOfAlphName
	landmark  84,  92, Route32Name
	landmark  92, 112, Route32CoastName
	landmark  84, 124, UnionCaveName
	landmark  76, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  76, 116, SlowpokeWellName
	landmark  52, 124, IlexForestName
	landmark  52, 108, Route34Name
	landmark  36, 120, Route34CoastName
	landmark  44, 132, StormyBeachName
	landmark  52, 132, MurkySwampName
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  44,  92, GoldenrodHarborName
	landmark  68,  92, MagnetTunnelName
	landmark  52,  76, Route35Name
	landmark  44,  76, Route35CoastName
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  69,  42, BellchimeTrailName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  52,  44, Route38Name
	landmark  36,  48, Route39Name
	landmark  36,  36, RuggedRoadName
	landmark  36,  28, SnowtopMountainName
	landmark  36,  60, OlivineCityName
	landmark  38,  62, LighthouseName
	landmark  28,  64, Route40Name
	landmark  28,  52, BattleTowerName
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  18,  98, CliffEdgeGateName
	landmark  12, 100, Route47Name
	landmark  12,  96, CliffCaveName
	landmark  12,  92, Route48Name
	landmark  12,  84, YellowForestName
	landmark  12, 108, QuietCaveName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 128,  40, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 116,  68, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 144,  60, SilverCaveName
	landmark 102, 124, FastShipName
	landmark 120,  28, SinjohRuinsName
	landmark 120,  28, MystriStageName
	assert_table_length KANTO_LANDMARK
	landmark  52, 100, PalletTownName
	landmark  52,  88, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  68, Route2Name
	landmark  52,  60, ViridianForestName
	landmark  52,  44, PewterCityName
	landmark  64,  44, Route3Name
	landmark  76,  44, MtMoonName
	landmark  92,  44, Route4Name
	landmark 108,  44, CeruleanCityName
	landmark 100,  36, CeruleanCaveName
	landmark 108,  36, Route24Name
	landmark 124,  28, Route25Name
	landmark 140,  28, CeruleanCapeName
	landmark 108,  52, Route5Name
	landmark 114,  66, UndergroundName
	landmark 108,  68, Route6Name
	landmark 108,  76, VermilionCityName
	landmark 116,  68, DiglettsCaveName
	landmark  96,  60, Route7Name
	landmark 124,  60, Route8Name
	landmark 124,  44, Route9Name
	landmark 140,  52, Route10Name
	landmark 140,  44, RockTunnelName
	landmark 148,  52, PowerPlantName
	landmark 148,  44, DimCaveName
	landmark 140,  60, LavenderTownName
	landmark 142,  58, LavRadioTowerName
	landmark 142,  62, SoulHouseName
	landmark  84,  60, CeladonCityName
	landmark  82,  62, CeladonUniversityName
	landmark 108,  60, SaffronCityName
	landmark 124,  76, Route11Name
	landmark 140,  76, Route12Name
	landmark 132,  92, Route13Name
	landmark 124, 100, Route14Name
	landmark 108, 108, Route15Name
	landmark 136, 104, LuckyIslandName
	landmark  68,  60, Route16Name
	landmark  76,  88, Route17Name
	landmark  80, 108, Route18Name
	landmark  92, 108, FuchsiaCityName
	landmark  92, 100, SafariZoneName
	landmark  64, 108, UragaChannelName
	landmark  60, 116, ScaryCaveName
	landmark  92, 120, Route19Name
	landmark  80, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  50, 130, PokemonMansionName
	landmark  54, 130, CinnabarVolcanoName
	landmark  52, 116, Route21Name
	landmark  40,  76, Route22Name
	landmark  20, 100, Route27Name
	landmark  12, 100, TohjoFallsName
	landmark  28,  92, Route26Name
	landmark  28,  76, PokemonLeagueName
	landmark  28,  64, Route23Name
	landmark  28,  52, VictoryRoadName
	landmark  28,  36, IndigoPlateauName
	landmark  16,  76, Route28Name
	landmark  54, 134, CinnabarLabName
	landmark  68,  52, ShamoutiIslandName
	landmark  84,  60, BeautifulBeachName
	landmark  68,  40, RockyBeachName
	landmark  76,  40, NoisyForestName
	landmark  84,  44, ShrineRuinsName
	landmark  52,  52, ShamoutiTunnelName
	landmark  52,  60, WarmBeachName
	landmark  52,  72, ShamoutiCoastName
	landmark  60,  76, FireIslandName
	landmark  76,  76, IceIslandName
	landmark  92,  76, LightningIslandName
	landmark  68, 116, Route49Name
	landmark  76, 116, ValenciaIslandName
	landmark 132, 100, NavelRockName
	landmark  24, 120, FarawayIslandName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:       rawchar "NEW BARK¯TOWN@"
CherrygroveCityName:   rawchar "CHERRYGROVE¯CITY@"
VioletCityName:        rawchar "VIOLET CITY@"
AzaleaTownName:        rawchar "AZALEA TOWN@"
GoldenrodCityName:     rawchar "GOLDENROD¯CITY@"
EcruteakCityName:      rawchar "ECRUTEAK¯CITY@"
OlivineCityName:       rawchar "OLIVINE¯CITY@"
CianwoodCityName:      rawchar "CIANWOOD¯CITY@"
MahoganyTownName:      rawchar "MAHOGANY¯TOWN@"
BlackthornCityName:    rawchar "BLACKTHORN¯CITY@"
LakeOfRageName:        rawchar "LAKE OF¯RAGE@"
SilverCaveName:        rawchar "SILVER CAVE@"
SproutTowerName:       rawchar "SPROUT¯TOWER@"
VioletOutskirtsName:   rawchar "VIOLET¯OUTSKIRTS@"
RuinsOfAlphName:       rawchar "RUINS¯OF ALPH@"
UnionCaveName:         rawchar "UNION CAVE@"
SlowpokeWellName:      rawchar "SLOWPOKE¯WELL@"
RadioTowerName:        rawchar "RADIO TOWER@"
PowerPlantName:        rawchar "POWER PLANT@"
NationalParkName:      rawchar "NATIONAL¯PARK@"
BellchimeTrailName:    rawchar "BELLCHIME¯TRAIL@"
TinTowerName:          rawchar "BELL TOWER@"
LighthouseName:        rawchar "LIGHTHOUSE@"
WhirlIslandsName:      rawchar "WHIRL¯ISLANDS@"
MtMortarName:          rawchar "MT.MORTAR@"
DragonsDenName:        rawchar "DRAGON'S DEN@"
IcePathName:           rawchar "ICE PATH@"
PalletTownName:        rawchar "PALLET TOWN@"
ViridianCityName:      rawchar "VIRIDIAN¯CITY@"
PewterCityName:        rawchar "PEWTER CITY@"
CeruleanCityName:      rawchar "CERULEAN¯CITY@"
LavenderTownName:      rawchar "LAVENDER¯TOWN@"
VermilionCityName:     rawchar "VERMILION¯CITY@"
CeladonCityName:       rawchar "CELADON¯CITY@"
SaffronCityName:       rawchar "SAFFRON¯CITY@"
FuchsiaCityName:       rawchar "FUCHSIA¯CITY@"
CinnabarIslandName:    rawchar "CINNABAR¯ISLAND@"
PokemonLeagueName:     rawchar "POKéMON¯LEAGUE GATE@"
VictoryRoadName:       rawchar "VICTORY¯ROAD@"
IndigoPlateauName:     rawchar "INDIGO¯PLATEAU@"
MtMoonName:            rawchar "MT.MOON@"
RockTunnelName:        rawchar "ROCK TUNNEL@"
LavRadioTowerName:     rawchar "LAV.RADIO¯TOWER@"
SoulHouseName:         rawchar "HOUSE OF¯SOULS@"
CeladonUniversityName: rawchar "CELADON¯UNIVERSITY@"
SafariZoneName:        rawchar "SAFARI ZONE@"
SeafoamIslandsName:    rawchar "SEAFOAM¯ISLANDS@"
PokemonMansionName:    rawchar "POKéMON¯MANSION@"
CinnabarVolcanoName:   rawchar "CINNABAR¯VOLCANO@"
CeruleanCaveName:      rawchar "CERULEAN¯CAVE@"
CeruleanCapeName:      rawchar "CERULEAN¯CAPE@"
LuckyIslandName:       rawchar "LUCKY¯ISLAND@"
Route1Name:            rawchar "ROUTE 1@"
Route2Name:            rawchar "ROUTE 2@"
Route3Name:            rawchar "ROUTE 3@"
Route4Name:            rawchar "ROUTE 4@"
Route5Name:            rawchar "ROUTE 5@"
Route6Name:            rawchar "ROUTE 6@"
Route7Name:            rawchar "ROUTE 7@"
Route8Name:            rawchar "ROUTE 8@"
Route9Name:            rawchar "ROUTE 9@"
Route10Name:           rawchar "ROUTE 10@"
Route11Name:           rawchar "ROUTE 11@"
Route12Name:           rawchar "ROUTE 12@"
Route13Name:           rawchar "ROUTE 13@"
Route14Name:           rawchar "ROUTE 14@"
Route15Name:           rawchar "ROUTE 15@"
Route16Name:           rawchar "ROUTE 16@"
Route17Name:           rawchar "ROUTE 17@"
Route18Name:           rawchar "ROUTE 18@"
Route19Name:           rawchar "ROUTE 19@"
Route20Name:           rawchar "ROUTE 20@"
Route21Name:           rawchar "ROUTE 21@"
Route22Name:           rawchar "ROUTE 22@"
Route23Name:           rawchar "ROUTE 23@"
Route24Name:           rawchar "ROUTE 24@"
Route25Name:           rawchar "ROUTE 25@"
Route26Name:           rawchar "ROUTE 26@"
Route27Name:           rawchar "ROUTE 27@"
Route28Name:           rawchar "ROUTE 28@"
Route29Name:           rawchar "ROUTE 29@"
Route30Name:           rawchar "ROUTE 30@"
Route31Name:           rawchar "ROUTE 31@"
Route32Name:           rawchar "ROUTE 32@"
Route33Name:           rawchar "ROUTE 33@"
Route34Name:           rawchar "ROUTE 34@"
Route35Name:           rawchar "ROUTE 35@"
Route36Name:           rawchar "ROUTE 36@"
Route37Name:           rawchar "ROUTE 37@"
Route38Name:           rawchar "ROUTE 38@"
Route39Name:           rawchar "ROUTE 39@"
Route40Name:           rawchar "ROUTE 40@"
Route41Name:           rawchar "ROUTE 41@"
Route42Name:           rawchar "ROUTE 42@"
Route43Name:           rawchar "ROUTE 43@"
Route44Name:           rawchar "ROUTE 44@"
Route45Name:           rawchar "ROUTE 45@"
Route46Name:           rawchar "ROUTE 46@"
Route47Name:           rawchar "ROUTE 47@"
Route48Name:           rawchar "ROUTE 48@"
DarkCaveName:          rawchar "DARK CAVE@"
IlexForestName:        rawchar "ILEX¯FOREST@"
BurnedTowerName:       rawchar "BURNED¯TOWER@"
FastShipName:          rawchar "FAST SHIP@"
ViridianForestName:    rawchar "VIRIDIAN¯FOREST@"
DiglettsCaveName:      rawchar "DIGLETT'S¯CAVE@"
TohjoFallsName:        rawchar "TOHJO FALLS@"
UndergroundName:       rawchar "UNDERGROUND@"
BattleTowerName:       rawchar "BATTLE¯TOWER@"
CliffEdgeGateName:     rawchar "CLIFF EDGE¯GATE@"
CliffCaveName:         rawchar "CLIFF CAVE@"
YellowForestName:      rawchar "YELLOW¯FOREST@"
QuietCaveName:         rawchar "QUIET CAVE@"
CherrygroveBayName:    rawchar "CHERRYGROVE¯BAY@"
GoldenrodHarborName:   rawchar "GOLDENROD¯HARBOR@"
MagnetTunnelName:      rawchar "MAGNET¯TUNNEL@"
Route32CoastName:      rawchar "ROUTE 32¯COAST@"
Route34CoastName:      rawchar "ROUTE 34¯COAST@"
Route35CoastName:      rawchar "ROUTE 35¯COAST@"
StormyBeachName:       rawchar "STORMY¯BEACH@"
MurkySwampName:        rawchar "MURKY¯SWAMP@"
RuggedRoadName:        rawchar "RUGGED¯ROAD@"
SnowtopMountainName:   rawchar "SNOWTOP¯MOUNTAIN@"
ScaryCaveName:         rawchar "SCARY¯CAVE@"
DimCaveName:           rawchar "DIM CAVE@"
UragaChannelName:      rawchar "URAGA¯CHANNEL@"
ShamoutiIslandName:    rawchar "SHAMOUTI¯ISLAND@"
BeautifulBeachName:    rawchar "BEAUTIFUL¯BEACH@"
RockyBeachName:        rawchar "ROCKY¯BEACH@"
NoisyForestName:       rawchar "NOISY¯FOREST@"
ShrineRuinsName:       rawchar "SHRINE¯RUINS@"
ShamoutiTunnelName:    rawchar "SHAMOUTI¯TUNNEL@"
WarmBeachName:         rawchar "WARM BEACH@"
ShamoutiCoastName:     rawchar "SHAMOUTI¯COAST@"
FireIslandName:        rawchar "FIRE¯ISLAND@"
IceIslandName:         rawchar "ICE ISLAND@"
LightningIslandName:   rawchar "LIGHTNING¯ISLAND@"
Route49Name:           rawchar "ROUTE 49@"
ValenciaIslandName:    rawchar "VALENCIA¯ISLAND@"
NavelRockName:         rawchar "NAVEL ROCK@"
FarawayIslandName:     rawchar "FARAWAY¯ISLAND@"
SinjohRuinsName:       rawchar "SINJOH¯RUINS@"
MystriStageName:       rawchar "MYSTRI¯STAGE@"
CinnabarLabName:       rawchar "POKéMON¯LAB@"
SpecialMapName:        rawchar "?@"
