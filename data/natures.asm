NatureNames:
	table_width 2, NatureNames
	dw .Hardy
	dw .Lonely
	dw .Brave
	dw .Adamant
	dw .Naughty
	dw .Bold
	dw .Docile
	dw .Relaxed
	dw .Impish
	dw .Lax
	dw .Timid
	dw .Hasty
	dw .Serious
	dw .Jolly
	dw .Naive
	dw .Modest
	dw .Mild
	dw .Quiet
	dw .Bashful
	dw .Rash
	dw .Calm
	dw .Gentle
	dw .Sassy
	dw .Careful
	dw .Quirky
	dw .NoNature
	assert_table_length NUM_NATURES + 1

.Hardy:    db "HARDY@"
.Lonely:   db "LONELY@"
.Brave:    db "BRAVE@"
.Adamant:  db "ADAMANT@"
.Naughty:  db "NAUGHTY@"
.Bold:     db "BOLD@"
.Docile:   db "DOCILE@"
.Relaxed:  db "RELAXED@"
.Impish:   db "IMPISH@"
.Lax:      db "LAX@"
.Timid:    db "TIMID@"
.Hasty:    db "HASTY@"
.Serious:  db "SERIOUS@"
.Jolly:    db "JOLLY@"
.Naive:    db "NAIVE@"
.Modest:   db "MODEST@"
.Mild:     db "MILD@"
.Quiet:    db "QUIET@"
.Bashful:  db "BASHFUL@"
.Rash:     db "RASH@"
.Calm:     db "CALM@"
.Gentle:   db "GENTLE@"
.Sassy:    db "SASSY@"
.Careful:  db "CAREFUL@"
.Quirky:   db "QUIRKY@"
.NoNature: db "---@"

NatureIndicators:
	dw .HardyInd
	dw .LonelyInd
	dw .BraveInd
	dw .AdamantInd
	dw .NaughtyInd
	dw .BoldInd
	dw .DocileInd
	dw .RelaxedInd
	dw .ImpishInd
	dw .LaxInd
	dw .TimidInd
	dw .HastyInd
	dw .SeriousInd
	dw .JollyInd
	dw .NaiveInd
	dw .ModestInd
	dw .MildInd
	dw .QuietInd
	dw .BashfulInd
	dw .RashInd
	dw .CalmInd
	dw .GentleInd
	dw .SassyInd
	dw .CarefulInd
	dw .QuirkyInd
	dw .NoNatureInd

.SassyInd:   db "<NEXT>" ; fallthrough
.RashInd:    db "<NEXT>" ; fallthrough
.ImpishInd:  db "<NEXT>" ; fallthrough
.LonelyInd:  db "↑<NEXT>↓@"
.NaiveInd:   db "<NEXT>" ; fallthrough
.CarefulInd: db "<NEXT>" ; fallthrough
.MildInd:    db "<NEXT>" ; fallthrough
.BoldInd:    db "↓<NEXT>↑@"
.QuietInd:   db "<NEXT>" ; fallthrough
.LaxInd:     db "<NEXT>" ; fallthrough
.AdamantInd: db "↑<NEXT><NEXT>↓@"
.JollyInd:   db "<NEXT>" ; fallthrough
.GentleInd:  db "<NEXT>" ; fallthrough
.ModestInd:  db "↓<NEXT><NEXT>↑@"
.RelaxedInd: db "<NEXT>" ; fallthrough
.NaughtyInd: db "↑<NEXT><NEXT><NEXT>↓@"
.HastyInd:   db "<NEXT>" ; fallthrough
.CalmInd:    db "↓<NEXT><NEXT><NEXT>↑@"
.BraveInd:   db "↑<NEXT><NEXT><NEXT><NEXT>↓@"
.TimidInd:   db "↓<NEXT><NEXT><NEXT><NEXT>↑" ; fallthrough
.HardyInd:
.DocileInd:
.SeriousInd:
.BashfulInd:
.QuirkyInd:
.NoNatureInd: db "@"
