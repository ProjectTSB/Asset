#> asset:object/2060.cross_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2060/tick

#> Private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if entity @s[scores={General.Object.Tick=1..25}] if score $Interval Temporary matches 0 positioned ~ ~0.3 ~ run function asset:object/2060.cross_thunder/tick/vfx1
    scoreboard players reset $Interval Temporary

# 最初の雷
    execute if entity @s[scores={General.Object.Tick=26}] run function asset:object/2060.cross_thunder/tick/thunder

# 次の雷
    execute if entity @s[scores={General.Object.Tick=28}] positioned ^ ^ ^3 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=28}] rotated ~90 ~ positioned ^ ^ ^3 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=28}] rotated ~180 ~ positioned ^ ^ ^3 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=28}] rotated ~270 ~ positioned ^ ^ ^3 run function asset:object/2060.cross_thunder/tick/thunder

# その次の雷
    execute if entity @s[scores={General.Object.Tick=30}] positioned ^ ^ ^6 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=30}] rotated ~90 ~ positioned ^ ^ ^6 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=30}] rotated ~180 ~ positioned ^ ^ ^6 run function asset:object/2060.cross_thunder/tick/thunder
    execute if entity @s[scores={General.Object.Tick=30}] rotated ~270 ~ positioned ^ ^ ^6 run function asset:object/2060.cross_thunder/tick/thunder

# 消滅
    execute if entity @s[scores={General.Object.Tick=30..}] run kill @s
