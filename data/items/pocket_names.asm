ItemPocketNames:
	table_width 2, ItemPocketNames
	dw .Item
	dw .Medicine
	dw .Ball
	dw .TM ; impossible
	dw .Berry
	dw .Key ; impossible
	assert_table_length NUM_POCKETS

.Item:
	db "ITEM POCKET@"
.Medicine:
	db "MED.POCKET@"
.Ball:
	db "BALL POCKET@"
.TM:
	db "TM POCKET@"
.Berry:
	db "BERRY POCKET@"
.Key:
	db "KEY POCKET@"
