CeladonUniversityPrincipalsOffice_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CELADON_UNIVERSITY_1F, 5
	warp_event  3,  7, CELADON_UNIVERSITY_1F, 5

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeSignpost1Text
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeSignpost2Text
	bg_event  5,  4, BGEVENT_RIGHT, CeladonUniversityPrincipalsOfficeComputer
	bg_event  1,  1, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeBookshelfText

	def_object_events
	object_event  2,  2, SPRITE_MATSUMOTO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityPrincipalsOfficeMatsumotoScript, -1

CeladonUniversityPrincipalsOfficeMatsumotoScript:
	checkevent EVENT_GOT_RARE_CANDY_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse_endtext
	setevent EVENT_GOT_RARE_CANDY_IN_UNIVERSITY
	jumpthisopenedtext

.Text2:
	text "I work hard to"
	line "keep this place"
	cont "running smoothly,"

	para "so I unwind with"
	line "candy every now"
	cont "and then."
	done

.Text1:
	text "Hello there,"
	line "young trainer!"

	para "I am PROFESSOR"
	line "MATSUMOTO."

	para "I'm the PRINCIPAL"
	line "of CELADON UNI-"
	cont "VERSITY."

	para "But you can call"
	line "me your pal!"

	para "Here, have some"
	line "candy from my"
	cont "desk stash."
	done

CeladonUniversityPrincipalsOfficeSignpost1Text:
	text "It's PROF.MATSU-"
	line "MOTO's degree in"
	cont "education."
	done

CeladonUniversityPrincipalsOfficeSignpost2Text:
	text "It's a picture of"
	line "PROF.MATSUMOTO in"

	para "front of a grad-"
	line "uating class."
	done

CeladonUniversityPrincipalsOfficeComputer:
	jumpthistext

	text "There's a draft"
	line "email asking"

	para "alumni for"
	line "donations."
	done

CeladonUniversityPrincipalsOfficeBookshelfText:
	text "It's a complete set"
	line "of books of the"

	para "ENCYCLOPEDIA"
	line "#MONICA."
	done
