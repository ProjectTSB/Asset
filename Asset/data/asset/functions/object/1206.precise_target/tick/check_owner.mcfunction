#> asset:object/1206.precise_target/tick/check_owner
#
# 所有者がスニーク中でメインハンドに持っている神器のIDを調べる
#
# @input as Object
# @output
#   score $Holding Temporary : 条件を満たす場合は所有者のメインハンドの神器ID、満たさない場合は0
#   tag PreCise.Owner : 所有者 (呼出側が外す)
# @within function
#   asset:object/1206.precise_target/tick/
#   asset:object/1207.big_precise/tick/

# 所有者を取得する (同じディメンションの16m以内にいなければ見つからない)
    scoreboard players set $Holding Temporary 0
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a[distance=..16] if score @s UserID = $UserID Temporary run tag @s add PreCise.Owner

# スニーク中の所有者のメインハンドの神器IDを取得する
    execute as @p[tag=PreCise.Owner,distance=..16,predicate=lib:is_sneaking] store result score $Holding Temporary run data get entity @s SelectedItem.tag.TSB.ID

# 対象の神器でなければ0にする
    execute unless score $Holding Temporary matches 1681..1682 run scoreboard players set $Holding Temporary 0

# リセット
    scoreboard players reset $UserID Temporary
