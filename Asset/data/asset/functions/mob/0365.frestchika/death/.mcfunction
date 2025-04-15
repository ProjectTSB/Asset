#> asset:mob/0365.frestchika/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/365/death

# こっちを向く
    execute facing entity @p[gamemode=!spectator,distance=..64] eyes run tp @s ~ ~ ~ ~ 0

# モデルを削除
    execute as @e[type=item_display,tag=A5.ModelRoot,sort=nearest,limit=1] run function animated_java:frestchika/remove/this

# 撃破演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 2240
    execute at @s run function api:object/summon

# マーカーを片付ける
    kill @e[type=marker,tag=A5.Marker,distance=..64]

# Super!
    function asset:mob/super.death
