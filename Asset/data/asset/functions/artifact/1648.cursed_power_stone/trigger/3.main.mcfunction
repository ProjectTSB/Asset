#> asset:artifact/1648.cursed_power_stone/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1648.cursed_power_stone/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> private
# @private
    #declare score_holder $MP

# MPが0以上ならEffect427、そうでないならEffect428を付与
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP
    data modify storage api: Argument.ID set value 427
    execute if score $MP Temporary matches 0 run data modify storage api: Argument.ID set value 428

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 装備中タグ
    tag @s add 1648.Equipping

# リセット
    scoreboard players reset $MP Temporary
