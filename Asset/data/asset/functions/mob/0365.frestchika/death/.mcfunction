#> asset:mob/0365.frestchika/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/365/death

# モデルを削除
    execute as @e[type=item_display,tag=A5.ModelRoot,sort=nearest,limit=1] run function animated_java:frestchika/remove/this

# マーカーを片付ける
    kill @e[type=marker,tag=A5.Marker,distance=..64]

# Super!
    function asset:mob/super.death
