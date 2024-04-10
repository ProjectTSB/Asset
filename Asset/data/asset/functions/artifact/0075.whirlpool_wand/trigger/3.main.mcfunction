#> asset:artifact/0075.whirlpool_wand/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0075.whirlpool_wand/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出(水中)
    execute at @e[type=#lib:living,tag=Enemy,predicate=lib:is_in_water/include_flowing,distance=..5] run function asset:artifact/0075.whirlpool_wand/trigger/vfx/inside_water
# 演出(水中ではない)
    execute at @e[type=#lib:living,tag=Enemy,predicate=!lib:is_in_water/include_flowing,distance=..5] run function asset:artifact/0075.whirlpool_wand/trigger/vfx/outside_water

# ダメージ(水中)
    data modify storage lib: Argument.Damage set value 100f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,predicate=lib:is_in_water/include_flowing,distance=..5] run function lib:damage/
    function lib:damage/reset

# ダメージ(水中ではない)
    data modify storage lib: Argument.Damage set value 200f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,predicate=!lib:is_in_water/include_flowing,distance=..5] run function lib:damage/
    function lib:damage/reset
