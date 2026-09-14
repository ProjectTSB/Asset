#> asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/get_damage/recursive
#
#
#
# @within function
#   asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/get_damage/pre
#   asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/get_damage/recursive

# 最後尾の要素を取得
    execute store result score $TempID Temporary run data get storage asset:temp Temp.To[-1]

# 最後尾のIDが自身のUUIDと一致しているなら、ダメージとIDを配列に追加
    execute if score @s MobUUID = $TempID Temporary run data modify storage asset:temp Temp.Main.Amounts append from storage asset:temp Temp.Amounts[-1]
    execute if score @s MobUUID = $TempID Temporary run data modify storage asset:temp Temp.Main.To append from storage asset:temp Temp.To[-1]

# 一致していないなら最後尾の要素を削除
    execute unless score @s MobUUID = $TempID Temporary run data remove storage asset:temp Temp.To[-1]
    execute unless score @s MobUUID = $TempID Temporary run data remove storage asset:temp Temp.Amounts[-1]

# 要素がある && 一致してないなら再帰
    execute if data storage asset:temp Temp.To[0] unless score @s MobUUID = $TempID Temporary run function asset:artifact/1392.yellow_refraction_prism/trigger/2.check_condition/get_damage/recursive
