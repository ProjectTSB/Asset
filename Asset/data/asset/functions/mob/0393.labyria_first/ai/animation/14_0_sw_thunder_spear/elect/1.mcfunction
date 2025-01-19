#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/1
#
# ノーマル帯電方式（内側）
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/

# 1番目の帯電
    execute if score @s AX.AnimationTick matches 201 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 201 positioned ^ ^ ^8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 2番目の帯電
    execute if score @s AX.AnimationTick matches 231 positioned ^ ^ ^8 rotated ~135 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 231 positioned ^-8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 3番目の帯電
    execute if score @s AX.AnimationTick matches 261 positioned ^-8 ^ ^ rotated ~-135 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 261 positioned ^ ^ ^-8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 4番目の帯電
    execute if score @s AX.AnimationTick matches 291 positioned ^ ^ ^-8 rotated ~-45 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 291 positioned ^8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 帯電ダメージエリア表示
    execute if score @s AX.AnimationTick matches 340 positioned ^ ^ ^8 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal
    execute if score @s AX.AnimationTick matches 340 positioned ^ ^ ^-8 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal
    execute if score @s AX.AnimationTick matches 340 positioned ^8 ^ ^ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal
    execute if score @s AX.AnimationTick matches 340 positioned ^-8 ^ ^ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/normal

# 発動
    execute if score @s AX.AnimationTick matches 350 as @e[type=item_display,tag=2012.NormalElect,scores={ObjectID=2012},distance=..32] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal_cast
