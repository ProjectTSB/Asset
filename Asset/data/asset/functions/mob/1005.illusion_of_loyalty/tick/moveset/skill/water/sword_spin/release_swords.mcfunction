#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/release_swords
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/

# タグ付与
    tag @e[type=item_display,scores={ObjectID=2053},distance=..64] add 2053.Release

# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 1
