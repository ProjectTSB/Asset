#> asset:mob/0429.killer_bee_formation/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/429/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 0以上なら突進
    execute if score @s General.Mob.Tick matches 0 run playsound entity.bee.death hostile @a ~ ~ ~ 0.4 1
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0429.killer_bee_formation/tick/charge
    execute if data storage asset:context this{Speed:0} run data modify storage asset:context this.Speed set value 2

# 消滅
    execute if score @s General.Mob.Tick matches 35.. if entity @s[tag=!Death] run function api:mob/kill
