#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3_1
#
# ハード帯電方式（内側） ダメージエリア表示
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3

# 帯電ダメージエリア表示
    execute positioned ^ ^ ^8 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal
    execute positioned ^ ^ ^-8 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal
    execute positioned ^8 ^ ^ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard
    execute positioned ^-8 ^ ^ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard
