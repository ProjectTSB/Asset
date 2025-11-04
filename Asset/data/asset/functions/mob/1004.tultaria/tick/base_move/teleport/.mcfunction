#> asset:mob/1004.tultaria/tick/base_move/teleport/
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 演出
    execute at @s positioned ~ ~1 ~ run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# 拡散
    execute at @r[gamemode=!spectator,distance=..64] positioned ~ ~1 ~ run function lib:spread_entity/

# プレイヤーが近すぎたらバック
    execute at @s if entity @p[gamemode=!spectator,distance=..128] rotated ~ 0 run tp @s ^ ^ ^-10

# 演出
    execute at @s positioned ~ ~1 ~ run function asset:mob/1004.tultaria/tick/base_move/teleport/vfx

# 付近のプレイヤーを見る
    execute at @s facing entity @p[gamemode=!spectator,distance=..128] feet run tp @s ~ ~ ~ ~ ~
