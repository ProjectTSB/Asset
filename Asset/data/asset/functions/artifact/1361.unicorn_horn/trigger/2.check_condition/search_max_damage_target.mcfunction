#> asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target
#
# 最もダメージを与えた対象を探す
#
# @within function
#   asset:artifact/1361.unicorn_horn/trigger/2.check_condition
#   asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target

#> Private
# @private
    #declare score_holder $Damage

# 配列の最後尾のダメージ量をコピー
    execute store result score $Damage Temporary run data get storage asset:temp _.Amounts[-1] 10

# 最大ダメージ量と同じならマクロでtagを付与 distanceで広範囲検索するよりは軽そうと思ったから
    execute if score $Damage Temporary = $MaxDamage Temporary run data modify storage asset:temp _.TargetMobUUID set from storage asset:temp _.To[-1]
    execute if score $Damage Temporary = $MaxDamage Temporary run function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/add_tag.m with storage asset:temp _

# 最後尾の要素を削除
    data remove storage asset:temp _.To[-1]
    data remove storage asset:temp _.Amounts[-1]

# リセット
    scoreboard players reset $Damage Temporary

# 要素がまだあれば再帰
    execute if data storage asset:temp _.To[0] run function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target
