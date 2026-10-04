#> asset:effect/0375.charge_of_thunderflash/end/iai/
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
    function asset:effect/0375.charge_of_thunderflash/end/iai/recursive

# (MaxRange - Range) を計算
    execute store result score $Range Temporary run data get storage asset:context this.Range
    execute store result score $MaxRange Temporary run data get storage asset:context this.MaxRange
    scoreboard players operation $MaxRange Temporary -= $Range Temporary

# ((MaxRange - Range) != 0)なら攻撃用Objectを召喚
    execute unless score $MaxRange Temporary matches 0 run data modify storage api: Argument.ID set value 1167
    execute unless score $MaxRange Temporary matches 0 store result storage api: Argument.FieldOverride.Range int 1 run scoreboard players get $MaxRange Temporary
    execute unless score $MaxRange Temporary matches 0 run function api:object/summon

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
