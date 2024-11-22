#> asset:mob/0372.tutankhamen/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/372/death

# デバッグ用としてAJを消す
    execute as @e[type=item_display,tag=AC.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:tutankhamen/remove/this
