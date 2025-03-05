#> asset:artifact/0258.cat_dream_pillow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0258.cat_dream_pillow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Random

# 演出
    particle dust 1000000000 -0.3 -0.2 1 ~ ~1.2 ~ 0.8 0.4 0.8 0 50

# 乱数生成
    execute store result score $Random Temporary run random value 0..2

# playsound
    execute if score $Random Temporary matches 0 run playsound entity.cat.ambient player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 1 run playsound entity.cat.purreow player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 2 run playsound entity.cat.stray_ambient player @a ~ ~ ~ 1 1 0

# ToとAmountsをコピー
    data modify storage asset:temp Temp.To set from storage asset:context Heal.To
    data modify storage asset:temp Temp.Amounts set from storage asset:context Heal.Amounts

# 回復対象へそれぞれの回復量の30%分のバリアを付与
    function asset:artifact/0258.cat_dream_pillow/trigger/give_barrier

# リセット
    scoreboard players reset $TempUserID Temporary
    scoreboard players reset $Random Temporary
    scoreboard players reset $BarrierAmount Temporary
    scoreboard players reset $CurrentBarrier Temporary
    scoreboard players reset $MaxHP30Per Temporary
    data remove storage asset:temp Temp
