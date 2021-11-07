$Resize:Stretch
'^^ make sure the screen is stretchable ^^

' just a really simple straightforward way to do good graphics in qb64. copy this as the start of your project.. (if u want idk)



Screen 13 ' screen can be any size
_Font 8 'i like nice blocky fonts

Do ' start the main loop
    _Limit 30 ' 30 fps? all good
    Cls ' clear the screen


    '-------stuff that happens in the game loop ----
    Print "ok"
    If InKey$ = "e" Then System
    '-----------------------------------------------



    _Display ' draw the screen after the game loop code is done
Loop ' do it again

