#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3
#
# ハード帯電方式（内側）
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/

# ランダム変数の調整
    execute if score @s AX.AnimationTick matches 201 run scoreboard players set $AX.Temp Temporary 0
    execute if score @s AX.AnimationTick matches 201 store result score $AX.Temp Temporary run random value 0..1
    execute if score @s AX.AnimationTick matches 201 run scoreboard players operation @s AX.ThunderSpear += $AX.Temp Temporary
    execute if score @s AX.AnimationTick matches 201 run scoreboard players reset $AX.Temp Temporary

# 1番目の帯電
    execute if score @s AX.AnimationTick matches 201 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 201 positioned ^ ^ ^8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 2番目の帯電
    execute if score @s AX.AnimationTick matches 221 positioned ^ ^ ^8 rotated ~135 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 221 positioned ^-8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 3番目の帯電
    execute if score @s AX.AnimationTick matches 241 positioned ^-8 ^ ^ rotated ~-135 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 241 positioned ^ ^ ^-8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 4番目の帯電
    execute if score @s AX.AnimationTick matches 261 positioned ^ ^ ^-8 rotated ~-45 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 261 positioned ^8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 5番目の帯電
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 30 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 30 positioned ^ ^ ^8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 30 rotated ~180 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 30 positioned ^ ^ ^-8 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 31 rotated ~90 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 31 positioned ^-8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 31 rotated ~270 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute if score @s AX.AnimationTick matches 281 if score @s AX.ThunderSpear matches 31 positioned ^8 ^ ^ as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard

# 帯電ダメージエリア表示
    execute if score @s AX.AnimationTick matches 340 if score @s AX.ThunderSpear matches 30 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3_0
    execute if score @s AX.AnimationTick matches 340 if score @s AX.ThunderSpear matches 31 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/3_1

# 発動
    execute if score @s AX.AnimationTick matches 350 as @e[type=item_display,tag=2012.NormalElect,scores={ObjectID=2012},distance=..32] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal_cast
    execute if score @s AX.AnimationTick matches 350 as @e[type=item_display,tag=2012.HardElect,scores={ObjectID=2012},distance=..32] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard_cast
