ElmPhoneStartText:
	text "Hello, <PLAYER>?"

	para "Try not to overdo"
	line "it."

	para "Be sure to heal"
	line "your #MON if"
	cont "they are hurt."
	done

ElmPhoneSawMrPokemonText:
	text "Hello, <PLAYER>?"

	para "Did you meet MR."
	line "#MON? Great!"
	cont "Come back safely!"
	done

ElmPhonePokemonStolenText:
	text "<PLAYER>? I'm very"
	line "upset now."

	para "We had a #MON"
	line "stolen from here."

	para "How could anyone"
	line "do that?"
	prompt

ElmPhoneCheckingEggText:
	text "Hello, <PLAYER>?"

	para "We're checking the"
	line "EGG now. It does"

	para "appear to be a"
	line "#MON EGG."
	prompt

ElmPhoneAssistantText:
	text "Hello, <PLAYER>?"

	para "Did you see my"
	line "assistant? He's at"

	para "the #MON CENTER"
	line "in VIOLET CITY."
	done

ElmPhoneEggUnhatchedText:
	text "Hello, <PLAYER>?"

	para "How's the EGG? Has"
	line "anything changed?"

	para "If anything hap-"
	line "pens, please call."
	prompt

ElmPhoneEggHatchedText:
	text "Hello, <PLAYER>?"
	line "How is the EGG?"

	para "What? It hatched?"
	line "Wow! What kind of"
	cont "#MON is it?"

	para "Please come show"
	line "me now!"
	prompt

ElmPhoneDiscovery1Text:
	text "Hello, <PLAYER>?"

	para "I just made a new"
	line "discovery."

	para "The time it takes"
	line "for an EGG to"

	para "hatch depends on"
	line "the #MON."
	prompt

ElmPhoneDiscovery2Text:
	text "Hello, <PLAYER>?"

	para "It's still a"
	line "mystery what kinds"

	para "of moves hatched"
	line "#MON have."

	para "We're investigat-"
	line "ing that now."
	prompt

ElmPhonePokerusText:
	text "Hello, <PLAYER>?"

	para "I discovered an"
	line "odd thing."

	para "Apparently there's"
	line "something called"

	para "#RUS that in-"
	line "fects #MON."

	para "Yes, it's like a"
	line "virus, so it's"
	cont "called #RUS."

	para "It multiplies fast"
	line "and infects other"

	para "#MON too. But"
	line "that's all."

	para "It doesn't seem to"
	line "do anything, and"

	para "it goes away over"
	line "time."

	para "I guess it's"
	line "nothing to worry"
	cont "about. Bye!"
	done

ElmPhoneDisasterText:
	text "H-hello? <PLAYER>?"
	line "It's a disaster!"

	para "Uh, um, it's just"
	line "terrible!"

	para "What should I do?"
	line "It… Oh, no…"

	para "Please get back"
	line "here now!"
	done

ElmPhoneEggAssistantText:
	text "Hello, <PLAYER>? We"
	line "discovered some-"

	para "thing about the"
	line "EGG!"

	para "My assistant is at"
	line "the #MON CENTER"

	para "in VIOLET CITY."
	line "Could you talk to"
	cont "him?"
	done

ElmPhoneRocketText:
	text "<PLAYER>, how are"
	line "things going?"

	para "I called because"
	line "something weird is"

	para "happening with the"
	line "radio broadcasts."

	para "They were talking"
	line "about TEAM ROCKET."

	para "<PLAYER>, do you"
	line "know anything"
	cont "about it?"

	para "Maybe TEAM ROCKET"
	line "has returned. No,"

	para "that just can't"
	line "be true."

	para "Sorry to bug you."
	line "Take care!"
	done

ElmPhoneGiftText:
	text "Hello, <PLAYER>?"

	para "I have something"
	line "here for you."

	para "Could you swing by"
	line "my LAB?"

	para "See you later!"
	done

ElmPhoneEvolutionQuestionText:
	text "By the way,"
	line "<PLAYER>, want to"

	para "know how your"
	line "#MON evolves?"
	done

ElmPhoneEvoText_None:
	text "Well, "
	text_ram wStringBuffer3
	line "doesn't evolve!"
	prompt

ElmPhoneEvoText_Level:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "reaches level "
	text_decimal wStringBuffer4, 1, 3
	text "."
	prompt

ElmPhoneEvoText_Item:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

ElmPhoneEvoText_Holding:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

ElmPhoneEvoText_Holding_MornDay:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text ", but"

	para "only during the"
	line "morning or day."
	prompt

ElmPhoneEvoText_Holding_EveNite:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text ", but"

	para "only during the"
	line "evening or night."
	prompt

ElmPhoneEvoText_Happiness:
	text_ram wStringBuffer3
	line "evolves when it's"
	cont "really happy!"
	prompt

ElmPhoneEvoText_Happiness_MornDay:
	text_ram wStringBuffer3
	line "evolves when it's"
	cont "really happy, but"

	para "only during the"
	line "morning or day."
	prompt

ElmPhoneEvoText_Happiness_EveNite:
	text_ram wStringBuffer3
	line "evolves when it's"
	cont "really happy, but"

	para "only during the"
	line "evening or night."
	prompt

ElmPhoneEvoText_Stat:
	text_ram wStringBuffer3
	line "evolves at level"
	cont ""
	text_decimal wStringBuffer4, 1, 3
	text ", but what it"

	para "evolves into de-"
	line "pends on its"

	para "ATTACK and"
	line "DEFENSE stats."
	prompt

ElmPhoneEvoText_Location:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level at"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

ElmPhoneEvoText_Move:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level"
	line "while it knows"

	para "how to use"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

ElmPhoneEvoText_Crit:
	text_ram wStringBuffer3
	line "evolves after it"

	para "lands three crit-"
	line "ical hits in one"
	cont "battle."
	prompt

ElmPhoneEvoText_Party:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while you have a"
	line ""
	text_ram wStringBuffer4
	cont "in your party too."
	prompt

ElmPhoneEvoText_Egg:
	text "EGGS don't evolve,"
	line "they hatch!"
	prompt

ElmPhoneEvoText_Pikachu:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "THUNDERSTONE or"
	cont "an ODD SOUVENIR."
	prompt

ElmPhoneEvoText_Gloom:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "LEAF STONE or"
	cont "a SUN STONE."
	prompt

ElmPhoneEvoText_Poliwhirl:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "WATER STONE, or"

	para "when it gains a"
	line "level while hold-"
	cont "ing a KING'S ROCK."
	prompt

ElmPhoneEvoText_SlowpokePlain:
ElmPhoneEvoText_SlowpokeGalarian:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "37, or when it"

	para "gains a level"
	line "while holding a"
	cont "a KING'S ROCK."
	prompt

ElmPhoneEvoText_Magneton:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "THUNDERSTONE, or"

	para "when it gains a"
	line "level in a mag-"
	cont "netic field."

	para "I've heard MAGNET"
	line "TUNNEL and DIM"
	cont "CAVE have that."
	prompt

ElmPhoneEvoText_Exeggcute:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "LEAF STONE or"
	cont "an ODD SOUVENIR."
	prompt

ElmPhoneEvoText_Koffing:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "reaches level 35,"

	para "or when it gains a"
	line "level while hold-"
	cont "ing CHARCOAL."
	prompt

ElmPhoneEvoText_Cubone:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "28, or when it's"

	para "exposed to an"
	line "ODD SOUVENIR."
	prompt

ElmPhoneEvoText_Scyther:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line "METAL COAT or a"
	cont "HARD STONE."
	prompt

ElmPhoneEvoText_Eevee:
	text_ram wStringBuffer3
	line "evolves in so"
	cont "many ways!"

	para "It can be exposed"
	line "to any of eight"
	cont "different STONES,"

	para "or gain a level"
	line "near a MOSS ROCK"
	cont "or an ICE ROCK."

	para "I've heard ILEX"
	line "FOREST and ICE"
	cont "PATH have those."

	para "But also, EEVEE"
	line "will evolve just"

	para "from the sun or"
	line "moon if it's very"
	cont "happy!"
	prompt

ElmPhoneEvoText_MimeJr:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to an"
	line "ICE STONE, or"

	para "when it gains a"
	line "level near an"
	cont "ICE ROCK."

	para "I've heard there's"
	line "one in ICE PATH."
	prompt

ElmPhoneEvoText_Stantler:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to harsh"
	line "hail or sand."

	para "I've heard RUGGED"
	line "ROAD and SNOWTOP"

	para "MOUNTAIN have"
	line "weather like that."
	prompt

ElmPhoneEvoText_AncientSinnoh:
	text "But based on its"
	line "ancestry, it"

	para "may also evolve"
	line "when reminded"

	para "of ancient SINNOH…"
	line "somehow…"
	prompt

ElmPhoneEvoText_DunsparceSegments:
	text "Some of them end"
	line "up being longer"
	cont "than others."

	para "It's just in their"
	line "genes."
	prompt

ElmPhoneEvolutionRefusedText:
	text "Sorry to bug you"
	line "then."
	prompt

ElmPhoneEndText:
	text "Take care!"
	done
