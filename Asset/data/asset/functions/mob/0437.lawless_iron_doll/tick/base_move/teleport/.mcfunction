#> asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/**

# 向き指定
    execute store result storage asset:context this.Rotation int 1 run random value -180..180

# 演出
    execute at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/vfx

# アニメ
    execute as @e[type=item_display,tag=C5.ModelRoot.Target,distance=..16,sort=nearest,limit=1] run function animated_java:frestchika/animations/teleport/tween {to_frame: 0, duration: 1}

# 適当なプレイヤー狙いでワープ
    function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/m with storage asset:context this

# 演出
    execute at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/teleport/vfx

# ワープ後近くにいるやつの方を向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# リセット
    data remove storage asset:context this.Rotation
