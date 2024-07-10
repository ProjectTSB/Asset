#> asset:mob/0076.golden_watermelon_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/1.trigger

# スコア
    scoreboard players add @s 24.Tick 1

# 投げ前演出
# ノーマル以下なら自身に鈍足を付与する
    execute if entity @s[scores={24.Tick=55}] if predicate api:global_vars/difficulty/max/normal run effect give @s slowness 1 3 true
    execute if entity @s[scores={24.Tick=55}] run item replace entity @s weapon.mainhand with melon{CustomModelData:20024,Enchantments:[{}]}
    execute if entity @s[scores={24.Tick=55}] run playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 1 1

# スイカ投げ
    execute if entity @s[scores={24.Tick=70..}] if entity @p[distance=..25] run function asset:mob/0076.golden_watermelon_bomber/tick/3.throw_watermelon

# リセット
    execute if entity @s[scores={24.Tick=70..}] run scoreboard players reset @s 24.Tick
