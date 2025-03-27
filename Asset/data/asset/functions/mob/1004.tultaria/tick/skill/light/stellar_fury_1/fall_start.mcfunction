#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/fall_start
#
# 落下開始！
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

#> ID2030が落下を開始するタグ
# @private
    #declare tag 2030.Start

# プレイヤーの向きを向かせる
    tp @s ~ ~ ~ facing entity @r[gamemode=!spectator,distance=..64]
# タグを消す
    tag @s add 2030.Start
# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 4 2
    execute at @a[distance=..50] run playsound minecraft:block.amethyst_block.hit hostile @a ~ ~ ~ 1 1.5
