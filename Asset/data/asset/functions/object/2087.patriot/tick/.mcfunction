#> asset:object/2087.patriot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2087/tick

#> prv
# @private
    #declare score_holder $Accelerate

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 加速
    execute store result score $Accelerate Temporary run data get storage asset:context this.StepPerTick 10
    execute if score $Accelerate Temporary matches ..75 store result storage asset:context this.StepPerTick float 0.1 run scoreboard players add $Accelerate Temporary 5

# particle
    particle minecraft:flame ^ ^0.1 ^-1.3 0.2 0.2 0.2 0 2 force
    particle minecraft:flame ^ ^0.1 ^-1.9 0.2 0.2 0.2 0 2 force
    particle minecraft:flame ^ ^0.1 ^-2.5 0.2 0.2 0.2 0 2 force
    particle minecraft:flame ^ ^0.1 ^-3.1 0.2 0.2 0.2 0 2 force
    particle minecraft:cloud ^ ^ ^-2.5 0.2 0.2 0.2 0 2 force
    particle minecraft:cloud ^ ^ ^-3.5 0.2 0.2 0.2 0 2 force
    particle minecraft:cloud ^ ^ ^-4.5 0.2 0.2 0.2 0 2 force
    particle minecraft:cloud ^ ^ ^-5.5 0.2 0.2 0.2 0 2 force

# 誘導開始したら向きをボスへ向ける
    execute if score @s General.Object.Tick matches 3.. facing entity @e[tag=Enemy.Boss,tag=!Uninterferable,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~

#命中判定
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# reset
    scoreboard players reset $Accelerate Temporary
