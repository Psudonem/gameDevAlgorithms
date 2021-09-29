$Resize:Stretch

' QB64. Use this to create games where a camera follows just behind a 3d player
' also good for overhead games.

Screen 13

a = 0
cx = 100
cy = 100
pi = 3.1415926

biga = 0

Print ("OVERHEAD CAMERA MOVEMENT - kai jasey sept 29, 2021")

Print

Print ("AKA tank controls")

Print

Print

Print ("PRESS ANY KEY ")

Sleep


Do
    PSet (cx, cy), 10 ' draws the stupid green dot

    ' this FOR loop draws the white circle. it's really not needed,
    ' BUT it was useful for making sure i had my cosine and sine right
    ' you might want to leave it in here for a reference
    For z = 0 To 360
        x = cx + Cos(a * (pi / 180)) * 50
        y = cy + -Sin(a * (pi / 180)) * 50
        PSet (x, y), 15


        a = a + 1
    Next z
    a = 0 ' resets the angle of the circle


    ' the x velocity of the green circ
    vx = Cos(biga * (pi / 180)) * 2
    ' the y velocity of the green circ
    vy = -Sin(biga * (pi / 180)) * 2


    redpx = cx + Cos(biga * (pi / 180)) * 20 ' calculate the closer tip of the red line
    redpy = cy + -Sin(biga * (pi / 180)) * 20
    redpx2 = cx + Cos(biga * (pi / 180)) * 49 ' calculate the farthest tip of the red line
    redpy2 = cy + -Sin(biga * (pi / 180)) * 49
    Line (redpx, redpy)-(redpx2, redpy2), 4

    PSet (redpx, redpy), 4


    _Delay 1 / 20
    Cls
    Locate 10, 14: Print "ANGLE:"; biga
    Locate 14, 14: Print "A and D to rotate"
    'biga = biga + 4
    If (biga > 350) Then biga = 0
    If (biga < 0) Then biga = 360

    If (InKey$ = "d") Then ' controls
        biga = biga + 10
        'cx = cx + vx
    End If

    If (InKey$ = "a") Then
        biga = biga - 10
    End If

    cx = cx + vx * -1 'adds the velocity to CX, we invert it so that the camera is beind the green dot
    '                    at all times
    cy = cy + vy * -1 'same for cx

Loop

