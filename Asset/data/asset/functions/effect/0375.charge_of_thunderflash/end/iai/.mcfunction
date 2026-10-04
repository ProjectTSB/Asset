#> asset:effect/0375.charge_of_thunderflash/end/iai/
#
#
#
# @within function asset:effect/0375.charge_of_thunderflash/end/

#> Private
# @private

# RangeをMaxRangeへコピー
    data modify storage asset:context this.MaxRange set from storage asset:context this.Range

# 再帰で行けるところまで行く
    function asset:effect/0375.charge_of_thunderflash/end/iai/recursive

# ダメージ
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..20] run function asset:effect/0375.charge_of_thunderflash/end/iai/damage.m with storage asset:context this.Damage.First
    function api:damage/single_damage_session/close

# (MaxRange - Range) を計算
    execute store result score $Range Temporary run data get storage asset:context this.Range
    execute store result score $MaxRange Temporary run data get storage asset:context this.MaxRange
    scoreboard players operation $MaxRange Temporary -= $Range Temporary

# ((MaxRange - Range) != 0)なら攻撃用Objectを召喚
    execute unless score $MaxRange Temporary matches 0 run function asset:effect/0375.charge_of_thunderflash/end/iai/summon_object

# リセット
    scoreboard players reset $Range Temporary
    scoreboard players reset $MaxRange Temporary
