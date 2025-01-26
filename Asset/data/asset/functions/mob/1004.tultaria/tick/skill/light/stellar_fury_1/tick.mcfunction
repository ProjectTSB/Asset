#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick
#
# 流星群その1: シンプル自機狙い
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> ID2030が落下を開始するタグ
# @private
    #declare tag 2030.Start

# 最初に実行するの
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup

# 演出
    execute if score @s General.Mob.Tick matches 10..30 at @a[distance=..100] run playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1
# 召喚する
    execute if score @s General.Mob.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon
    execute if score @s General.Mob.Tick matches 10..30 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/summon

# 演出
    execute if score @s General.Mob.Tick matches 35 run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx

# 2体までのObject2030番を対象として、タグを付与して落下処理をスタートさせる
    execute if score @s General.Mob.Tick matches 50..70 as @e[type=item_display,tag=!2030.Start,scores={ObjectID=2030},sort=random,limit=2] at @s run function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/fall_start

# 画面エフェクト
#    execute if score @s General.Mob.Tick matches 90 run title @a[distance=..100] times 10 20 10
#    execute if score @s General.Mob.Tick matches 90 run title @a[distance=..100] title {"text":""}
#    execute if score @s General.Mob.Tick matches 90 run title @a[distance=..100] subtitle {"text":"\uE010","font":"screen_effect","color":"#cccccc"}

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=RW.ModelRoot,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/tween {duration:5, to_frame: 0}

# リセット
    execute if score @s General.Mob.Tick matches 120.. run function asset:mob/1004.tultaria/tick/base_move/reset
