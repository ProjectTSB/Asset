#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_cross
#
# 交差転がし(交差ナシ)の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

#> Private
# @private
    #declare score_holder $Temp

# 配列の要素数を取得
    execute store result score $Temp Temporary if data storage asset:context this.List

# 乱数
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $Temp Temporary

# 要素を代入
    execute if score $Random Temporary matches 0 store result score $Random2 Temporary run data get storage asset:context this.List[0]
    execute if score $Random Temporary matches 1 store result score $Random2 Temporary run data get storage asset:context this.List[1]
    execute if score $Random Temporary matches 2 store result score $Random2 Temporary run data get storage asset:context this.List[2]
    execute if score $Random Temporary matches 3 store result score $Random2 Temporary run data get storage asset:context this.List[3]

# カボチャを転がす
    execute if score $Random2 Temporary matches 0 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/1
    execute if score $Random2 Temporary matches 1 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/2
    execute if score $Random2 Temporary matches 2 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/3
    execute if score $Random2 Temporary matches 3 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/cross/4

# データ削除
    execute if score $Random2 Temporary matches 0 run data remove storage asset:context this.List[0]
    execute if score $Random2 Temporary matches 1 run data remove storage asset:context this.List[1]
    execute if score $Random2 Temporary matches 2 run data remove storage asset:context this.List[2]
    execute if score $Random2 Temporary matches 3 run data remove storage asset:context this.List[3]

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Random2 Temporary
    scoreboard players reset $Temp Temporary
