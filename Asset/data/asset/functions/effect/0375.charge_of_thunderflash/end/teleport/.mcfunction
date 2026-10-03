#> asset:effect/0375.charge_of_thunderflash/end/teleport/
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/

#> Private
# @private
    #declare score_holder $Range
    #declare score_holder $MaxRange

# RangeをMaxRangeへコピー
    data modify storage asset:context this.MaxRange set from storage asset:context this.Range

# 再帰で行けるところまで行く
    function asset:effect/0375.charge_of_thunderflash/end/teleport/recursive

# (MaxRange - Range) をObjectに渡す
    execute store result score $Range Temporary run data get storage asset:context this.Range
    execute store result score $MaxRange Temporary run data get storage asset:context this.MaxRange
    execute store result storage api: Argument.FieldOverride.Range int 1 run scoreboard players operation $MaxRange Temporary -= $Range Temporary

#
    tellraw @a {"storage":"api:","nbt":"Argument.FieldOverride"}

# 攻撃用Objectを召喚
    data modify storage api: Argument.ID set value 1167
    function api:object/summon

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
