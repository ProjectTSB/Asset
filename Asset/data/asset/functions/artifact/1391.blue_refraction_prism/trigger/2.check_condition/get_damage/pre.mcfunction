#> asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/get_damage/pre
#
#
#
# @within function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/check_damage

# 自身にtagをつけておく
    tag @s add Target

# 配列コピー
    data modify storage asset:temp Temp.To set from storage asset:context Attack.To
    data modify storage asset:temp Temp.Amounts set from storage asset:context Attack.Amounts

# 自身へのダメージ量を取得
    function asset:artifact/1391.blue_refraction_prism/trigger/2.check_condition/get_damage/recursive

# リセット
    scoreboard players reset $TempID Temporary
