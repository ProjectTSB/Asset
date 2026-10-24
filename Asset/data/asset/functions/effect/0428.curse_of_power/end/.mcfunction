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

# 演出(装備している場合のみ)
    execute if entity @s[tag=1648.Equipping] run playsound block.respawn_anchor.set_spawn player @a ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $Count Temporary
