#> asset:mob/0106.mini_shulker/tick/attack/shoot
# @within asset:mob/0106.mini_shulker/tick/attack/

# ターゲットの視認を試みる
    data modify storage asset:temp 2Y.Step set value 0.5d
    function asset:mob/0106.mini_shulker/tick/target.m with storage asset:temp 2Y
# 弾を召喚
    data modify storage api: Argument.ID set value 2138
    summon marker ~ ~ ~ {Tags:["2Y.Rotation"]}
    execute as @e[type=marker,tag=2Y.Rotation,limit=1] run data modify entity @s Rotation set from storage asset:context this.Rotation
    tellraw @a [{"storage":"asset:context","nbt":"this.Rotation"}]
    execute rotated as @e[type=marker,tag=2Y.Rotation,limit=1] run function api:object/summon

# リセット
    kill @e[type=marker,tag=2Y.Rotation,limit=1]
    data remove storage asset:temp 2Y
