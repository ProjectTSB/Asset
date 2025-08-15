#> asset:mob/0429.killer_bee_formation/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/429/tick

# スコア
    scoreboard players add @s General.Mob.Tick 1

# モデル装着用遅延
    execute unless data storage asset:context this{ModelSetDelay:-1} store result storage asset:context this.ModelSetDelay int 0.9999999999 run data get storage asset:context this.ModelSetDelay
    execute if data storage asset:context this{ModelSetDelay:0} run function asset:mob/0429.killer_bee_formation/tick/set_model

# 0以上なら突進
    execute if score @s General.Mob.Tick matches 0 run playsound entity.bee.death hostile @a[distance=..20] ~ ~ ~ 2 1 1
    execute if score @s General.Mob.Tick matches 0.. run function asset:mob/0429.killer_bee_formation/tick/charge
    execute if data storage asset:context this{StepPerTick:0} run data modify storage asset:context this.StepPerTick set value 2

# 消滅
    execute if score @s General.Mob.Tick matches 35.. if entity @s[tag=!Death] run function api:mob/remove
