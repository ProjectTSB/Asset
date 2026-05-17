#> asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/check_over_heal
#
#
#
# @within function
#   asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition
#   asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/check_over_heal

# 超過回復量の最後尾の要素をコピー
    data modify storage asset:temp Temp set from storage asset:temp Heal.Amounts[-1]

# 超過回復量が0でない場合、該当プレイヤーに既にそれ以上のバリアが付与されていなければ配列に追加する
    execute unless data storage asset:temp {Temp:0} run function asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/compare
    data remove storage asset:temp Temp

# 最後尾の要素を削除
    data remove storage asset:temp Heal.To[-1]
    data remove storage asset:temp Heal.Over[-1]

# 要素がまだあれば再帰
    execute if data storage asset:temp Heal.To[0] run function asset:artifact/1191.petals_of_spring_herald/trigger/2.check_condition/check_over_heal
