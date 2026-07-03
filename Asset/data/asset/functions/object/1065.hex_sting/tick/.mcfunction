#> asset:object/1065.hex_sting/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1065/tick

#> Private
# @private
    #declare tag 1065.TargetCandidate
    #declare tag 1065.Target

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0 1 force

# 前方にいる一番近い敵をターゲットする
    execute positioned ^ ^ ^16.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..13.5] run tag @s add 1065.TargetCandidate
    execute as @e[type=#lib:living,tag=1065.TargetCandidate,distance=..30,sort=nearest,limit=1] run tag @s add 1065.Target
# 向きを変える
    execute if entity @e[type=#lib:living,tag=1065.Target,distance=00..10] facing entity @e[type=#lib:living,tag=1065.Target,distance=..10,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-0200 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if entity @e[type=#lib:living,tag=1065.Target,distance=10..30] facing entity @e[type=#lib:living,tag=1065.Target,distance=..30,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1500 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~
# 速度を変える
    execute if entity @e[type=#lib:living,tag=1065.Target,distance=00..10] run data modify storage asset:context this.Speed set value 3
    execute if entity @e[type=#lib:living,tag=1065.Target,distance=10..30] run data modify storage asset:context this.Speed set value 2
# リセット
    tag @e[type=#lib:living,tag=1065.Target,distance=..30] remove 1065.Target
    tag @e[type=#lib:living,tag=1065.TargetCandidate,distance=..30] remove 1065.TargetCandidate

# super 呼び出し
    execute at @s run function asset:object/super.tick
