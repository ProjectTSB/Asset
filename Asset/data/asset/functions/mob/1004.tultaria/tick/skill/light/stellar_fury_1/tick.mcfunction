#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick
#
# 流星群その1: シンプル自機狙い
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> ID2030が落下を開始するタグ
# @private
    #declare tag 2030.Start

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup

# 召喚する
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon

# 演出
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx

# 2体までのObject2030番を対象として、タグを付与して落下処理をスタートさせる
    execute if score @s RW.Tick matches 50..70 as @e[type=item_display,tag=!2030.Start,scores={ObjectID=2030},sort=random,limit=2] at @s run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/fall_start

# リセット
    execute if score @s RW.Tick matches 90.. run function asset:mob/1004.tultaria/tick/base_move/reset
