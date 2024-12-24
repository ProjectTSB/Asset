#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/release_sword
#
# 剣を解き放つ
#
# @within function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

# タグ付与
    tag @e[type=item_display,scores={ObjectID=2053},distance=..64] add 2053.Release


# 演出
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 1
