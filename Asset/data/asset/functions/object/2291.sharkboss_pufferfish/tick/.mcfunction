#> asset:object/2291.sharkboss_pufferfish/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2291/tick

## Tick加算
    scoreboard players add @s General.Object.Tick 1

# 接地しない限だんだん下を向く
    execute unless entity @s[tag=2291.OnGround] run tp @s ~ ~ ~ ~ ~6

# 接地しない限り継承元の処理を行う
    execute unless entity @s[tag=2291.OnGround] run function asset:object/super.tick
#say a

# 消滅処理
    execute if score @s General.Object.Tick matches 800.. run particle explosion ~ ~ ~ 0.8 0.8 0.8 1 10 normal
    execute if score @s General.Object.Tick matches 800.. run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
    kill @s[scores={General.Object.Tick=800..}]
