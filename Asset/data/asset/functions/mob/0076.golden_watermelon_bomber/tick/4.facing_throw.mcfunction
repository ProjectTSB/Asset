#> asset:mob/0076.golden_watermelon_bomber/tick/4.facing_throw
#
#
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/3.throw_watermelon

# スイカ召喚を1000ブロック上で実行
    data modify storage api: Argument.ID set value 77
    execute anchored eyes positioned ^-0.6 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon

# プレイヤーの方へ投げる
    execute positioned ~ ~1000 ~ as @e[type=block_display,scores={MobID=77},distance=..5,limit=1] at @s positioned ~ ~-1000 ~ facing entity @p eyes run tp @s ~ ~ ~ ~ ~-2
