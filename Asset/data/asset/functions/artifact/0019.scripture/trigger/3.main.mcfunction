#> asset:artifact/0019.scripture/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0019.scripture/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Random

# 0~9の乱数を取り、0~2の間なら各効果を発動
    execute store result score $Random Temporary run random value 0..9
    execute if score $Random Temporary matches 0 run function asset:artifact/0019.scripture/trigger/effect/clear_debuff
    execute if score $Random Temporary matches 1 run function asset:artifact/0019.scripture/trigger/effect/heal
    execute if score $Random Temporary matches 2 run function asset:artifact/0019.scripture/trigger/effect/mp_heal

# 0~2の範囲ならSuccessとする
    execute if score $Random Temporary matches 0..2 run data modify storage api: Argument.FieldOverride.Success set value true

# 聖典ギャンブル(ID:324)を付与
    #data modify storage api: Argument.FieldOverride.Heal set value 15
    data modify storage api: Argument.ID set value 324
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Random Temporary
