#> asset:object/1023.star/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1023/tick

#> Private
# @private
    #declare tag Target

# StartDelay 減少
    execute store result storage asset:context this.StartDelay int 0.9999999999 run data get storage asset:context this.StartDelay 1

# vfx
    execute as @a[distance=..32] facing entity @s eyes run function asset:object/1023.star/tick/vfx

# 前方の敵に誘導する
    execute if data storage asset:context this{StartDelay:0} positioned ^ ^ ^15 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..15] add Target
    execute if data storage asset:context this{StartDelay:0} facing entity @e[type=#lib:living,tag=Target,distance=..30,sort=nearest,limit=1] eyes positioned ^ ^ ^-80 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if data storage asset:context this{StartDelay:0} run tag @e[type=#lib:living,tag=Target,distance=..30] remove Target

# super.tick
    execute if data storage asset:context this{StartDelay:0} at @s run function asset:object/super.tick
