#> asset:mob/0416.ahssat/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/416/tick

# Mob.Tick増加
    scoreboard players add @s General.Mob.Tick 1

# 120以上なら弾幕を召喚
    execute if score @s General.Mob.Tick matches 120.. run function asset:mob/0416.ahssat/tick/summon/spread
