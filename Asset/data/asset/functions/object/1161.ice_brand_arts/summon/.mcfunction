#> asset:object/1161.ice_brand_arts/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1161/summon

# 元となるEntityを召喚する

    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    data modify storage asset:temp Args.LeftRotation set from storage asset:context this.LeftRotation
    data modify storage asset:temp Args.Weapon set from storage asset:context this.Weapon
    data modify storage asset:temp Args.Model set from storage asset:context this.Model
    data modify storage asset:temp Args.Id set from storage asset:context this.Id
    function asset:object/1161.ice_brand_arts/summon/m with storage asset:temp Args
   # tellraw @a {"storage":"asset:temp","nbt":"Args"}
    #tellraw @a {"storage":"asset:context","nbt":"this"}
    data remove storage asset:temp Args
