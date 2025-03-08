#> asset:object/2212.eclael_upper_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2212/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=1..70}] run function asset:object/2212.eclael_upper_shot/tick/prediction_text
    execute if entity @s[scores={General.Object.Tick=70}] run data modify entity @s text set value '{"text":""}'

# 攻撃
    execute if entity @s[scores={General.Object.Tick=90}] run tp @s ^8 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=130}] run tp @s ^8 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=170}] run tp @s ^8 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=210}] run tp @s ^8 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=250}] run tp @s ^8 ^ ^ ~ ~
    execute if entity @s[scores={General.Object.Tick=290}] run tp @s ^8 ^ ^ ~ ~

    execute if entity @s[scores={General.Object.Tick=90}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=130}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=170}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=210}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=250}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction
    execute if entity @s[scores={General.Object.Tick=290}] at @s run function asset:object/2212.eclael_upper_shot/tick/prediction

    execute if entity @s[scores={General.Object.Tick=70}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=110}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=150}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=190}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=230}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=270}] run function asset:object/2212.eclael_upper_shot/tick/attack
    execute if entity @s[scores={General.Object.Tick=310}] run function asset:object/2212.eclael_upper_shot/tick/attack

    execute if entity @s[scores={General.Object.Tick=68}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=108}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=148}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=188}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=228}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=268}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=308}] run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=73}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=113}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=153}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=193}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=233}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=273}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start
    execute if entity @s[scores={General.Object.Tick=313}] rotated ~180 ~ positioned ^2 ^ ^ run function asset:object/2212.eclael_upper_shot/tick/effect_start

    execute if entity @s[scores={General.Object.Tick=68..85}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=108..125}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=148..165}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=188..205}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=228..245}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=268..285}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect
    execute if entity @s[scores={General.Object.Tick=308..325}] as @e[type=area_effect_cloud,tag=2212.EffectPos,distance=..50,sort=random,limit=3] at @s rotated ~ ~-90 run function asset:object/2212.eclael_upper_shot/tick/effect

# 消滅処理
    kill @s[scores={General.Object.Tick=326..}]
