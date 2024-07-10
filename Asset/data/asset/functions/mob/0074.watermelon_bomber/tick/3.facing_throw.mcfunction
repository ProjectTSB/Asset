#> asset:mob/0074.watermelon_bomber/tick/3.facing_throw
#
# プレイヤーの方向へ投げる
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.throw

# スイカ召喚を1000ブロック上で実行
    data modify storage api: Argument.ID set value 75
    execute anchored eyes positioned ^-0.6 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon

# プレイヤーの方へ投げる
    execute positioned ~ ~1000 ~ as @e[type=block_display,scores={MobID=75},distance=..5,limit=1] at @s positioned ~ ~-1000 ~ facing entity @p eyes run tp @s ~ ~ ~ ~ ~-2
