#> asset:mob/0074.watermelon_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0074.watermelon_bomber/tick/1.trigger

# スイカ投げのためスコア
    scoreboard players add @s 22.Tick 1

# スイカ投げを1000ブロック上で実行
# スイカProjectile側で1000ブロック下にtpさせる
    execute if entity @s[scores={22.Tick=60..}] anchored eyes positioned ^0.5 ^-0.35 ^ positioned ~ ~1000 ~ run function asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
