.export  CLEAR_METASPRITES
OAM_START = $0200
OAM_END = $02FF

.segment "CODE"
.proc CLEAR_METASPRITES
    
    :
        lda #$FF
        sta OAM_START, x
        inx
    bne :-



rts

.endproc