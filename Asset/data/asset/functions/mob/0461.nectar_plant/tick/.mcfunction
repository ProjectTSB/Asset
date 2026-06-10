#> asset:mob/0461.nectar_plant/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/461/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 時間経過で段階が進む
    execute if score @s General.Mob.Tick matches 50 run function asset:mob/0461.nectar_plant/tick/bloom/1
    execute if score @s General.Mob.Tick matches 100 run function asset:mob/0461.nectar_plant/tick/bloom/2
    execute if score @s General.Mob.Tick matches 150 run function asset:mob/0461.nectar_plant/tick/bloom/3

# 開花したなら攻撃する
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/0461.nectar_plant/tick/attack

# 攻撃を終えたら一回しぼむ
    execute if score @s General.Mob.Tick matches 220 run function asset:mob/0461.nectar_plant/tick/change_model/2
    execute if score @s General.Mob.Tick matches 220 run playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.85
    execute if score @s General.Mob.Tick matches 230 run function asset:mob/0461.nectar_plant/tick/change_model/1
    execute if score @s General.Mob.Tick matches 230 run playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.8
    execute if score @s General.Mob.Tick matches 240 run function asset:mob/0461.nectar_plant/tick/change_model/0
    execute if score @s General.Mob.Tick matches 240 run playsound block.sweet_berry_bush.break hostile @a ~ ~ ~ 1 0.75

# リセット
    execute if score @s General.Mob.Tick matches 240.. run function asset:mob/0461.nectar_plant/tick/reset
