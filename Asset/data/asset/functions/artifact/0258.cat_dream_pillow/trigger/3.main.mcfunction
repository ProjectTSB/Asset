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
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $3 Const

# playsound
    execute if score $Random Temporary matches 0 run playsound entity.cat.ambient player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 1 run playsound entity.cat.purreow player @a ~ ~ ~ 1 1 0
    execute if score $Random Temporary matches 2 run playsound entity.cat.stray_ambient player @a ~ ~ ~ 1 1 0

# 回復量の20%分をバリア数値としてフィールドへ代入
    execute store result storage api: Argument.FieldOverride.Barrier double 0.2 run data get storage asset:context Heal.Amount

# エフェクトを付与
    data modify storage api: Argument.ID set value 267
    function api:entity/mob/effect/give

# リセット
    scoreboard players reset $Random Temporary
