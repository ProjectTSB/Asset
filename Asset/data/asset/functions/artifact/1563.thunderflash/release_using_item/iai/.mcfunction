#> asset:artifact/1563.thunderflash/release_using_item/iai/
#
#
#
# @within function asset:artifact/1563.thunderflash/release_using_item/3.main

# RangeへMaxRangeをコピー
    scoreboard players operation $Range Temporary = $MaxRange Temporary

# 再帰で行けるところまで行く
    function asset:artifact/1563.thunderflash/release_using_item/iai/recursive

# ダメージ
    function api:damage/single_damage_session/open
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..20] run function asset:artifact/1563.thunderflash/release_using_item/iai/damage
    function api:damage/single_damage_session/close

# MaxRange - Range
    scoreboard players operation $MaxRange Temporary -= $Range Temporary

# ((MaxRange - Range) != 0)なら攻撃用Objectを召喚
    execute unless score $MaxRange Temporary matches 0 run function asset:artifact/1563.thunderflash/release_using_item/iai/summon_object

# リセット
    scoreboard players reset $Range Temporary
