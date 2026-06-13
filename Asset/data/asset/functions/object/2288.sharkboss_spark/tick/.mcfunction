#> asset:object/2288.sharkboss_spark/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2288/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    scoreboard players add @s 2288.AnimationFlame 1
    execute if score @s 2288.AnimationFlame matches 3.. run scoreboard players set @s 2288.AnimationFlame 0

# モデル適用
    execute if score @s 2288.AnimationFlame matches 0 run data modify entity @s text set value '{"text":"0","font":"object/2288"}'
    execute if score @s 2288.AnimationFlame matches 1 run data modify entity @s text set value '{"text":"1","font":"object/2288"}'
    execute if score @s 2288.AnimationFlame matches 2 run data modify entity @s text set value '{"text":"2","font":"object/2288"}'

#サメボスに追従する
  #execute at @e[type=item_display,tag=CD.ModelRoot,sort=nearest,limit=1] run tp @s ^ ^0.5 ^2 ~ ~
  execute at @e[tag=aj.sharkboss.locator.locator_nose] run tp @s ~ ~ ~ ~ ~

# 消滅処理
    kill @s[scores={General.Object.Tick=60..}]
