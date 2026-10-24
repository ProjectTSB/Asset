#> asset:effect/0428.curse_of_power/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0428.curse_of_power/_/end

#> private
# @private
    #declare score_holder $Count

# modifier削除
    function asset:effect/0428.curse_of_power/modifier/remove

# まだ装備しているなら、バフを再付与
    data modify storage api: Argument.ID set value 427
    execute if entity @s[tag=1648.Equipping] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Count Temporary
