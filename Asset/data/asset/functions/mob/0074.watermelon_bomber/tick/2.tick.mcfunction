#> asset:mob/0074.watermelon_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0074.watermelon_bomber/tick/1.trigger

# スイカ投げのためスコア
    scoreboard players add @s 22.Tick 1

# 自身に鈍足を付与し、投げ前演出
    execute if entity @s[scores={22.Tick=45}] run effect give @s slowness 1 3 true
    execute if entity @s[scores={22.Tick=45}] run item replace entity @s weapon.mainhand with melon{CustomModelData:20024}
    execute if entity @s[scores={22.Tick=45}] run playsound minecraft:entity.puffer_fish.blow_up hostile @a ~ ~ ~ 1 1

# スイカ投げ
    execute if entity @s[scores={22.Tick=60..}] if entity @p[distance=..25] run function asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon

# リセット
    execute if entity @s[scores={22.Tick=60..}] run scoreboard players reset @s 22.Tick
