#> asset:mob/0365.frestchika/tick/base_move/teleport/
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/**

# 向き指定
    execute store result storage asset:context this.Rotation int 1 run random value -180..180

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# 適当なプレイヤー狙いでワープ
    function asset:mob/0365.frestchika/tick/base_move/teleport/m with storage asset:context this

# 演出
    execute at @s run function asset:mob/0365.frestchika/tick/base_move/teleport/vfx

# ワープ後近くにいるやつの方を向く
    execute at @s facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ ~

# リセット
    data remove storage asset:context this.Rotation
