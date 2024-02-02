#> asset:mob/0155.immorality/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0155.immorality/tick/1.trigger

# スコアを増やします
    scoreboard players add @s 4B.ShotTime 1

# 発砲準備で位置と向きを固定
    execute if entity @s[scores={4B.ShotTime=87}] run function asset:mob/0155.immorality/tick/3.ready

# 発砲します
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=97}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=99}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=101}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=103}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=105}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=107}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=109}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=111}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=113}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=115}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=117}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=119}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=121}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=123}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot
    execute if entity @p[distance=..20] if entity @s[scores={4B.ShotTime=125}] anchored eyes positioned ^-0.3 ^ ^0.35 run function asset:mob/0155.immorality/tick/4.shot

# 終了します
    execute if score @s 4B.ShotTime matches 125 run function asset:mob/0155.immorality/tick/7.reset