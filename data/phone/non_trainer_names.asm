NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2, NonTrainerCallerNames
	dw EmptyString
	dw .mom
	dw .bikeshop
	dw .bill
	dw .elm
	dw .lyra
	dw .buena
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.mom:
	text  "MOM:"
	done
.bill:
	text  "BILL:"
	next1 "   #MANIAC"
	done
.elm:
	text  "PROF.ELM:"
	next1 "   #MON PROF."
	done
.bikeshop:
	text  "MIRACLE CYCLE:"
	done
.lyra:
	text  "LYRA:"
	next1 "   <PK><MN> TRAINER"
	done
.buena:
	text  "BUENA:"
	next1 "   DISC JOCKEY"
	done
