#> asset:mob/0204.infernal_watcher/init/
# @within asset:mob/alias/204/init

execute as @s facing entity @a[distance=..64,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 速度・追尾力を適用
    data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set from storage asset:context this.Move._.Speed
    data modify storage asset:context this.Rotate set from storage asset:context this.Move._.Rotate
