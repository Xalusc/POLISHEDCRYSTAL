LakeOfRageHiddenPowerHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  3, SPRITE_FAT_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HiddenPowerGuy, -1

HiddenPowerGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue .AlreadyGotItem
	writetext .Text1
	promptbutton
	verbosegivetmhm TM_HIDDEN_POWER
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext .Text2
	waitbutton
	sjump .CheckHiddenPower
.AlreadyGotItem:
	writetext .Text4
	waitbutton
.CheckHiddenPower
	writetext .Text3
	yesorno
	iffalse_jumpopenedtext .Text7
	writetext .Text5
	promptbutton
	special Special_HiddenPowerGuru
	iffalse_jumpopenedtext .Text4
	ifequal $1, .Egg
	jumpthisopenedtext

	text "I can sense it…"

	para "Your "
	text_ram wStringBuffer3
	line "has a HIDDEN POWER"
	cont "of "
	text_ram wStringBuffer1
	text "!"
	done

.Egg:
	jumpthisopenedtext

	text "An EGG has not yet"
	line "developed a HIDDEN"
	cont "POWER…"
	done

.Text1:
	text "…You have strayed"
	line "far…"

	para "Here I have medi-"
	line "tated. Inside me,"

	para "a new power has"
	line "been awakened."

	para "Let me share my"
	line "power with your"
	cont "#MON."

	para "Take this, child."
	done

.Text2:
	text "Do you see it? It"
	line "is HIDDEN POWER!"

	para "It draws out the"
	line "power of #MON"
	cont "for attacking."

	para "Remember this: its"
	line "type depends on"
	cont "the #MON"
	cont "using it."
	done

.Text3:
	text "Shall I divine"
	line "the HIDDEN POWER"
	cont "of your #MON?"
	done

.Text4:
	text "I am meditating…"
	done

.Text5:
	text "Which #MON's"
	line "HIDDEN POWER"
	cont "should I find?"
	done

.Text7:
	text "…Very well…"
	done
