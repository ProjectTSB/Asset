#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/6.glow
#
# 偽物を消して発光する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# 発光
    item replace entity @s armor.head with jack_o_lantern{CustomModelData:20017}
    effect clear @s slowness
    effect clear @s weakness
    effect give @s speed 5 6 true

# NoGravityの解除
    data modify entity @s NoGravity set value 0b

# 演出
    particle witch ~ ~1 ~ 0 0 0 0.7 100
    particle flame ~ ~1.8 ~ 0 0 0 0.2 50 normal @a
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5 0
    playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 0.5 1.5
    playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2

# ノーマル以下ならキル
    execute if predicate api:global_vars/difficulty/max/normal run tp @e[type=husk,scores={MobID=224},distance=..30,limit=8] ~ -100 ~
