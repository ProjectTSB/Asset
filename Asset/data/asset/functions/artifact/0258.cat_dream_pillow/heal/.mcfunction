#> asset:artifact/0258.cat_dream_pillow/heal/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/258/heal/

#> Private
# @private
    #declare score_holder $Random

# 演出
    particle dust 1000000000 -0.3 -0.2 1 ~ ~1.2 ~ 0.8 0.4 0.8 0 50

# 乱数生成
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# playsound
    execute if score $Random Temporary matches 0 run playsound entity.cat.ambient player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 1 run playsound entity.cat.purreow player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 2 run playsound entity.cat.stray_ambient player @a ~ ~ ~ 1 1 0

# ToとAmountsをコピー
    data modify storage asset:temp Temp.To set from storage asset:context Heal.To
    data modify storage asset:temp Temp.Amounts set from storage asset:context Heal.Amounts

# 回復対象へそれぞれの回復量の30%分のバリアを付与
    function asset:artifact/0258.cat_dream_pillow/heal/give_barrier

# リセット
    scoreboard players reset $TempUserID Temporary
    scoreboard players reset $Random Temporary
    scoreboard players reset $BarrierAmount Temporary
    scoreboard players reset $CurrentBarrier Temporary
    scoreboard players reset $MaxHP30Per Temporary
    data remove storage asset:temp Temp
