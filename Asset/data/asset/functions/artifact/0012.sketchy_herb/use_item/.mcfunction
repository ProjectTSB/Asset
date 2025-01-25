#> asset:artifact/0012.sketchy_herb/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/12/use_item/


# エフェクト効果
    effect give @s minecraft:strength 60 10 true
    effect give @s minecraft:resistance 60 1 true
    effect give @s minecraft:nausea 60 0 true
    effect give @s minecraft:poison 15 3 true
    effect give @s minecraft:instant_damage 1 1 true

# 演出
    particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 500 force @s
    playsound minecraft:block.honey_block.fall player @s ~ ~ ~ 1 0.1
    tellraw @s [{"text":"気分が不安定になってゆく……","color":"dark_green","italic":true}]
