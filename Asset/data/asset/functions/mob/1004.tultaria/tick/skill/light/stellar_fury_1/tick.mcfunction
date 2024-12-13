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

# 演出
    execute if score @s RW.Tick matches 10..30 at @a[distance=..100] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1
# 召喚する
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
    execute if score @s RW.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon

# 演出
    execute if score @s RW.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx

# 2体までのObject2030番を対象として、タグを付与して落下処理をスタートさせる
    execute if score @s RW.Tick matches 50..70 as @e[type=item_display,tag=!2030.Start,scores={ObjectID=2030},sort=random,limit=2] at @s run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/fall_start

# 召喚ごまかすために画面エフェクト
    execute if score @s RW.Tick matches 65 run title @a[distance=..100] times 10 20 10
    execute if score @s RW.Tick matches 65 run title @a[distance=..100] title {"text":""}
    execute if score @s RW.Tick matches 65 run title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# リセット
    execute if score @s RW.Tick matches 120.. run function asset:mob/1004.tultaria/tick/base_move/reset
