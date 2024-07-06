#> asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
#
# スイカを投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.tick

# スイカ投げを1000ブロック上で実行
# スイカProjectile側で1000ブロック下にtpさせる
    data modify storage api: Argument.ID set value 75
    execute anchored eyes positioned ^0.5 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon

# スコアリセット
    scoreboard players reset @s 22.Tick
