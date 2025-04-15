#> asset:object/2218.karmic_conviction_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2218/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    particle dust 0.455 0.027 0.027 2 ~ ~ ~ 0.1 0.1 0.1 5 2 force

# 周囲に敵がいなければ、MovePerStepを0.5に戻す
    execute unless entity @a[gamemode=!spectator,distance=..20,sort=nearest,limit=1] run data modify storage asset:context this.MovePerStep set value 0.3

# 周囲に敵がいれば追尾 & MovePerStepを0.7に変更
    execute if entity @a[gamemode=!spectator,distance=..20,sort=nearest,limit=1] facing entity @a[gamemode=!spectator,distance=..10,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~
    execute if entity @a[gamemode=!spectator,distance=..20,sort=nearest,limit=1] run data modify storage asset:context this.MovePerStep set value 0.5

# 前方に壁があればMovePerStepを0に変更
    execute at @s run function asset:object/2218.karmic_conviction_shot/tick/check_forward_block with storage asset:context this

# super.tick
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=2218.Damage] remove 2218.Damage
