#> asset:artifact/1030.beauty_of_margins/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1030.beauty_of_margins/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $EmptyHotbarSlot

# 所持検知用Tagを付与
    tag @s add SM.Modifier

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

# スコアの値がプラスならバフ、マイナスならデバフを付与 0なら実行しない
    execute if score $EmptyHotbarSlot Temporary matches 1.. run data modify storage api: Argument.ID set value 226
    execute if score $EmptyHotbarSlot Temporary matches 1.. store result storage api: Argument.Stack int 1 run scoreboard players get $EmptyHotbarSlot Temporary
    #execute if score $EmptyHotbarSlot Temporary matches ..-1 run data modify storage api: Argument.ID set value 227
    #execute if score $EmptyHotbarSlot Temporary matches ..-1 store result storage api: Argument.Stack int -1 run scoreboard players get $EmptyHotbarSlot Temporary
    execute unless score $EmptyHotbarSlot Temporary matches 0 run function api:entity/mob/effect/give

# リセット
    scoreboard players reset $EmptyHotbarSlot Temporary
