#> asset:mob/0365.frestchika/tick/base_move/teleport/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/**

# 向き指定
    execute store result storage asset:context this.Rotation int 1 run random value -180..180

# 自分の位置にマーカーを召喚
    summon marker ~ ~1.2 ~ {Tags:["A5.Marker","A5.Marker.Teleport"]}

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# アニメ
    execute as @e[type=item_display,tag=A5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/teleport/tween {to_frame: 0, duration: 1}

# 適当なプレイヤー狙いでワープ
    function asset:mob/0365.frestchika/tick/base_move/teleport/m with storage asset:context this

# これの呼び出し元にて召喚したマーカーに向けて、見た目レーザーが伸びる
    execute at @s positioned ~ ~1.2 ~ facing entity @e[type=marker,tag=A5.Marker.Teleport,distance=..64,sort=nearest,limit=1] feet run function asset:mob/0365.frestchika/tick/base_move/teleport/laser/summon

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# ワープ後近くにいるやつの方を向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# リセット
    data remove storage asset:context this.Rotation
