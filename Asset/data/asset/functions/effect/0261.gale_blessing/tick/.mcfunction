#> asset:effect/0261.gale_blessing/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0261.gale_blessing/_/tick

# 非戦闘中ならバフを付与
    execute unless predicate lib:in_battle if entity @s[tag=!79.NotInBattle] run function asset:effect/0261.gale_blessing/modfier/add
# 戦闘中ならバフを解除
    execute if predicate lib:in_battle if entity @s[tag=79.NotInBattle] run function asset:effect/0261.gale_blessing/modfier/remove
