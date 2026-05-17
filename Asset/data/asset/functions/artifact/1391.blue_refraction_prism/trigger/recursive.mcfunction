#> asset:artifact/1391.blue_refraction_prism/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1391.blue_refraction_prism/trigger/apply
#   asset:artifact/1391.blue_refraction_prism/trigger/recursive

# 最後尾の要素を取得
    execute store result score $TempID Temporary run data get storage asset:temp Temp.To[-1]

# 最後尾のIDが自身のUUIDと一致しているなら、ダメージをTempStorageに入れておく
    execute if score @s MobUUID = $TempID Temporary run data modify storage asset:temp Temp.Damage set from storage asset:temp Temp.Amounts[-1]

# 一致していないなら最後尾の要素を削除
    execute unless score @s MobUUID = $TempID Temporary run data remove storage asset:temp Temp.To[-1]
    execute unless score @s MobUUID = $TempID Temporary run data remove storage asset:temp Temp.Amounts[-1]

# 要素がある && 一致してないなら再帰
    execute if data storage asset:temp Temp.To[0] unless score @s MobUUID = $TempID Temporary run function asset:artifact/1391.blue_refraction_prism/trigger/recursive
