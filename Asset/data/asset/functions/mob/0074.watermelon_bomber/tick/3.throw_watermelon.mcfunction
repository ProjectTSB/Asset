#> asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
#
# スイカを投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.tick

#> Private
# @private
    #declare tag 22.Already

# スイカ投げを1000ブロック上で実行
# そもそもプレイヤーが周囲にいなければ召喚しない
# 向き合わせをして、1000ブロック下にtpさせる
    data modify storage api: Argument.ID set value 75
    execute if entity @p[distance=..20] anchored eyes positioned ^-0.4 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon
    execute positioned ~ ~1000 ~ as @e[type=block_display,scores={MobID=75},distance=..5,limit=1] at @s positioned ~ ~-1000 ~ facing entity @p eyes run tp @s ~ ~ ~ ~ ~-2

# スコアリセット
    scoreboard players reset @s 22.Tick
