; RawInputControlTest.ahk Control definition file.
; Describ Control Settings in this file.
; Lines beginning with a semicolon(;) are ignored as comments.

; Sample file: TM2Control
;   Copy TM2Control.exe to same folder
; Drop this file into RawInputControlTest.ahk

;############################### Window Settings ##############################


#Window: Color          		=	Black 									; Background color of window.
#Window: FontColor      		=	9B9B9B									; Default font color.
#Window: ActiveFontColor		=	00C0FF									; Font color when button is pressed.


#Window:Pos=LeftTop															; Specify Start-up window position by Left/Right/Top/Bottom. (alone or in combination)
                   															; You can also specify window position by the coordinate.
                   															;#Window:X=0
                   															;#Window:Y=0

; Window size (If not specified, window size will be set automatically.)
;#Window:Width=125
;#Window:Height=550
; Margin
;#Window:MarginLeft=0
#Window:MarginTop=14
;#Window:MarginRight=0
#Window:MarginBottom=14

; Window transparency: Full transparent 0 ~ 255 Opaque
#Window:Transparent=200

;############################## Controls settings #############################

;--------------------------------- Title bar ----------------------------------

; Handle for moving the window. - Control-type: Handle
;#Control:Handle
;	; Name the controls. You can use letters and numbers.
 	; Please take care to avoid overlap with other controls.
;	Name=Handle
 	; Specify Control`s position. [upper left X-coordinate, upper left Y-coordinate, Width, Height]
;	Pos=0, 0, 95, 30
 	; Specify the button's caption.
;	Caption=- - -
 	; Specify Caption position. [X-coordinate, Y-coordinate]. You can also specify "Center".
;	CaptionPos=Center, Center
 	; Specifies the image button is not pressed.
;	Image1=img\n95x30.bmp
 	; Specifies the image button is pressed.
;	Image2=img\n95x30a.bmp

; Tool2 Button - Control type: Key

	#Control:Close

	Name  	=	Close
	Pos   	=	0, 0, 50, 50
	Image1	=	img\close.bmp
	Image2	=	img\closeover.bmp


; Tool2 Button - Control type: Key

	#Control:Key
	
	Name   	=	FlipHoriz
	Pos    	=	50, 0, 50, 50
	Image1 	=	img\fliphoriz.bmp
	Image2 	=	img\fliphorizOver.bmp
	DownKey	=	^h

; Tool2 Button - Control type: Key
#Control:Key
	Name=Cut
	Pos=0, 50, 50, 50
	Image1=img\cut.bmp
	Image2=img\cutOver.bmp
	DownKey=^x

; Close button. - Control type: Close
#Control:Key
	Name=Delete
	Pos=50, 50, 50, 50del
	Image1=img\delete.bmp
	Image2=img\deleteover.bmp
	DownKey={Delete}

; Tool2 Button - Control type: Key
#Control:Key
	Name=Copy
	Pos=0, 100, 50, 50
	Image1=img\copy.bmp
	Image2=img\copyover.bmp
	DownKey=^c

; Close button. - Control type: Close
#Control:Key
	Name=Paste
	Pos=50, 100, 50, 50del
	Image1=img\paste.bmp
	Image2=img\pasteover.bmp
	DownKey=^v

;-------------------------------- Tools Button --------------------------------

#ControlOffset:0, 150

; Tool2 Button - Control type: Key
#Control:Key
	Name=SelectAll
	Pos=0, 0, 50, 50
	Image1=img\selectall.bmp
	Image2=img\selectallover.bmp
	DownKey={Ctrl Down}{a Down}
	UpKey={a Up}{Ctrl Up}

; Tool2 Button - Control type: Key
#Control:Key
	Name=SelectNone
	Pos=50, 0, 50, 50
	Image1=img\selectnone.bmp
	Image2=img\selectnoneover.bmp
	DownKey={Ctrl Down}{d Down}
	UpKey={d Up}{Ctrl Up}

; Tool1 Button - Control type: Key
#Control:Key
	; Specify button's name (alphabet and numbers are allowed. Please note does not overlap with other controls.)
	Name=Tool1
	; Specify button's position
	Pos=0, 50, 50, 50
	; Specify button's caption
	; Specify button's image
	Image1=img\brush.bmp
	; Specify pressed image
	Image2=img\brushover.bmp
	; Specify key when touch down
	DownKey={b Down}
	; Specify key when touch up
	UpKey={b Up}

; Tool2 Button - Control type: Key
#Control:Key
	Name=Tool2
	Pos=50, 50, 50, 50
	Image1=img\eraser.bmp
	Image2=img\eraserover.bmp
	DownKey={e Down}
	UpKey={e Up}

; Tool2 Button - Control type: Key
#Control:Key
	Name=Undo
	Pos=0, 100, 50, 50
	Image1=img\undo.bmp
	Image2=img\undoover.bmp
	DownKey={Ctrl Down}{Alt Down}{z Down}
	UpKey={z Up}{Alt Up}{Ctrl Up}

; Tool2 Button - Control type: Key
#Control:Key
	Name=Redo
	Pos=50, 100, 50, 50
	Image1=img\redo.bmp
	Image2=img\redoover.bmp
	DownKey={Ctrl Down}{Shift Down}{z Down}
	UpKey={z Up}{Shift Up}{Ctrl Up}

;---------------------------- Tablet function keys ----------------------------

#ControlOffset:0, 150


; Brush Down keye - Control type: Key
#Control:Key
	Name=BrushDown
	Pos=0, 50, 50, 50
	DownKey={[ Down}
	UpKey={[ Up}
	Image1=img\brushdown.bmp
	Image2=img\brushdownover.bmp

; Brush Up key - Control type: Key
#Control:Key
	Name=BrushUp
	Pos=0, 0, 50, 50
	DownKey={] Down}
	UpKey={] Up}
	Image1=img\brushup.bmp
	Image2=img\brushupover.bmp

; ZoomIn key - Control type: Key
#Control:Key
	Name=ZoomIn
	Pos=50, 0, 50, 50
	DownKey={Ctrl Down}{NumpadAdd Down}
	UpKey={NumpadAdd Up}{Ctrl Up}
	Image1=img\zoomin.bmp
	Image2=img\zoominover.bmp

; ZoomOut key - Control type: Key
#Control:Key
	Name=ZoomOut
	Pos=50, 50, 50, 50
	DownKey={Ctrl Down}{NumpadSub Down}
	UpKey={NumpadSub Up}{Ctrl Up}
	Image1=img\zoomout.bmp
	Image2=img\zoomoutover.bmp

; Alt key - Control type: Key
#Control:Key
	Name=Alt
	Pos=0, 100, 100, 100
	DownKey={b Down}{Alt Down}
	UpKey={Alt Up}{b Up}
	Image1=img\dropper.bmp
	Image2=img\dropperover.bmp

; Space key - Control type: Key
#Control:Key
	Name=Space
	Pos=0, 200, 100, 100
	DownKey={Space Down}
	UpKey={Space Up}
	Image1=img\pan.bmp
	Image2=img\panover.bmp

#Control:Key
	Name=Default
	Pos=0, 300, 50, 50
	Image1=img\default.bmp
	Image2=img\defaultover.bmp
	DownKey={d Down}
	UpKey={d Up}

; Tool2 Button - Control type: Key
#Control:Key
	Name=FlipColor
	Pos=50, 300, 50, 50
	Image1=img\flipcolor.bmp
	Image2=img\flipcolorover.bmp
	DownKey={x Down}
	UpKey={x Up}


; Tool2 Button - Control type: Key
#Control:Key
	Name=Ctrl
	Pos=0, 350, 50, 50
	Image1=img\ctrl.bmp
	Image2=img\ctrlOver.bmp
	DownKey={Ctrl Down}
	UpKey={Ctrl Up}

; Close button. - Control type: Close
#Control:Key
	Name=Shift
	Pos=50, 350, 50, 50
	Image1=img\shift.bmp
	Image2=img\shiftover.bmp
	DownKey={Shift Down}
	UpKey={Shift Up}


