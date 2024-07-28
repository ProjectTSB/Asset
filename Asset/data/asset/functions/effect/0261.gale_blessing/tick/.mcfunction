#> asset:effect/0261.gale_blessing/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0261.gale_blessing/_/tick

# 戦闘中ならバフを解除
    execute if predicate lib:in_battle if entity @s[tag=!79.InBattle] run function asset:effect/0261.gale_blessing/modfier/remove
    execute if predicate lib:in_battle if entity @s[tag=!79.InBattle] run tag @s add 79.InBattle

# 戦闘が解除されたらバフを付与
    execute unless predicate lib:in_battle if entity @s[tag=79.InBattle] run function asset:effect/0261.gale_blessing/modfier/add
    execute unless predicate lib:in_battle if entity @s[tag=79.InBattle] run tag @s remove 79.InBattle
