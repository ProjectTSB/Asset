#> asset:object/1165.bubble_spreader/tick/homing
#
# 追尾処理
#
# @within asset:object/1165.bubble_spreader/tick/
#> Private
# @private
    #declare tag 1165.TargetCandidate

    execute positioned ^ ^ ^3 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] add 1165.TargetCandidate
    execute unless entity @e[type=#lib:living_without_player,tag=1165.TargetCandidate,distance=..10] positioned ^ ^ ^15 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10] add 1165.TargetCandidate
    execute facing entity @e[type=#lib:living_without_player,tag=1165.TargetCandidate,distance=..25,sort=nearest,limit=1] eyes positioned ^ ^ ^-140 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    execute run tag @e[type=#lib:living_without_player,tag=1165.TargetCandidate,distance=..30] remove 1165.TargetCandidate
