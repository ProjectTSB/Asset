#> asset:mob/1004.tultaria/tick/base_move/element_select/change/light
#
# ハード限定で、三属性を一周した場合にこれになる
#
# @within function asset:mob/1004.tultaria/tick/base_move/element_select/tags

# 演出
    particle dust 1 1 1 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    particle minecraft:end_rod ~ ~1 ~ 0.7 1 0.7 0 25
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 2
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:item.trident.thunder2 hostile @a ~ ~ ~ 2 2

# 周囲に演出兼ねた暗闇を展開
    effect give @a[distance=..64] darkness 2 0 true

# タグ付与
    tag @s add RW.Mode.Light
