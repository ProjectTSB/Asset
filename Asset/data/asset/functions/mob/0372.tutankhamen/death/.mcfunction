#> asset:mob/0372.tutankhamen/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/372/death

# super.death呼び出し
    function asset:mob/super.death

# デバッグ用としてAJを消す
    execute as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/remove/this
    #execute as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/death/play
