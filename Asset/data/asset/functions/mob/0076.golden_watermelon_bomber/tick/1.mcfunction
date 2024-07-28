#> asset:mob/0076.golden_watermelon_bomber/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/_/tick

# スイカ投げのためスコア
    scoreboard players add @s 24.Tick 1

# 投げ前演出
# ノーマル以下なら自身に鈍足を付与する
    execute if entity @s[scores={24.Tick=0}] if predicate api:global_vars/difficulty/max/normal run effect give @s slowness 1 3 true
    execute if entity @s[scores={24.Tick=0}] run item replace entity @s weapon.mainhand with melon{CustomModelData:20024,Enchantments:[{}]}
    execute if entity @s[scores={24.Tick=0}] run playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 1 1

# スイカ投げ
    execute if entity @s[scores={24.Tick=15..}] if entity @p[distance=..25] run function asset:mob/0076.golden_watermelon_bomber/tick/2.throw

# リセット
    execute if entity @s[scores={24.Tick=15..}] run function asset:mob/0076.golden_watermelon_bomber/tick/6.reset
