tablelength = 2

META_LOOKUP_TABLE:
  ; Lookup table for meta sprite data
  .byte 04               ; player 1 sprite length/
  .addr META_TILE_DATA   ; player 1 facing righ
  .byte 04               ; player 1 sprite length/
  .addr META_TILE_DATA+4 ; player 1 facing right
  .byte 14               ; test
  .addr META_TILE_DATA+8 ;
  ; .byte 08             ; player 1 sprite jump 
  ; .addr META_TILE_DATA+16 ; player 1 facing right

META_TILE_DATA:
  ; Individual tiles for each part of the meta sprite
  .byte $00, $01, $02, $03   ; Sprite 1 tiles 
  .byte $04, $05, $06, $07   ; Sprite 2 tiles 
  .byte $10, $11, $12, $13,$14,$15,$16,$17,$18,$19,$33,$44,$52,$53    ; Sprite 3 tiles



; atribute data
; 76543210
; ||||||||
; ||||||++- Palette (4 to 7) of sprite
; |||+++--- Unimplemented (read 0)
; ||+------ Priority (0: in front of background; 1: behind background)
; |+------- Flip sprite horizontally
; +-------- Flip sprite vertically

META_ATRIBUTE_DATA:
   .byte %00000000, %00000000, %00000000, %00000000   ; Sprite  atributes seperated per tile
   .byte %00000001, %00000001, %00000001, %00000001   ; Sprite player1 jump  atributes seperated per tile 
   .byte %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000, %00000000   

META_POSITION_DATA_X:
  ; Individual positions for each part of the meta sprite
  .byte $00, $08, $00, $08 
  .byte $00, $08, $00, $08    
  .byte $00, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $58 ,$60, $68     

META_POSITION_DATA_Y:
  ; Individual positions for each part of the meta sprite
  .byte $00, $00, $08, $08
  .byte $00, $00, $08, $08
  .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00     



;-----------------------------------------------------------

