#> asset:effect/0226.margins/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0226.margins/_/end

# 効果時間が終了しても、再度付与する

# 一度バフを削除する
    function asset:effect/0226.margins/modifier/remove

# プレイヤーのインベントリのデータを取得
    function api:data_get/inventory

# ホットバーのデータがないならスコアを加算
    execute unless data storage api: Inventory[{Slot:0b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:1b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:2b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:3b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:4b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:5b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:6b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:7b}] run scoreboard players add $EmptyHotbarSlot Temporary 1
    execute unless data storage api: Inventory[{Slot:8b}] run scoreboard players add $EmptyHotbarSlot Temporary 1

# スコアから4を引く
    scoreboard players remove $EmptyHotbarSlot Temporary 4

# スコアの値が1以上ならバフ、0以下ならデバフを付与
    execute if score $EmptyHotbarSlot Temporary matches 1.. run data modify storage api: Argument.ID set value 226
    execute if score $EmptyHotbarSlot Temporary matches 1.. store result storage api: Argument.Stack int 1 run scoreboard players get $EmptyHotbarSlot Temporary
    execute if score $EmptyHotbarSlot Temporary matches ..0 run data modify storage api: Argument.ID set value 227
    execute if score $EmptyHotbarSlot Temporary matches ..0 store result storage api: Argument.Stack int -1 run scoreboard players get $EmptyHotbarSlot Temporary
    execute unless score $EmptyHotbarSlot Temporary matches 0 run function api:entity/mob/effect/give

    data modify storage api: Argument.ID set value 226
    function api:entity/mob/effect/give

    say 余白 end

# リセット
    scoreboard players reset $EmptyHotbarSlot Temporary
