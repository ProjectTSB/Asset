#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick
#
# 流星群その1: シンプル自機狙い
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 最初に実行するの
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup

# 召喚する
    execute if score @s RW.Tick matches 0..20 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
    execute if score @s RW.Tick matches 0..20 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon

# 演出
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx

# タグ付与連打
    execute if score @s RW.Tick matches 30..50 as @e[type=area_effect_cloud,tag=S2.Wait,sort=random,limit=2] at @s run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tag_remove

# リセット
    execute if score @s RW.Tick matches 90.. run function asset:mob/1004.tultaria/tick/base_move/reset
