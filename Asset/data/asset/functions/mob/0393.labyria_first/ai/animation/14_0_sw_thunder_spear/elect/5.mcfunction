#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/5
#
# ハード帯電方式（特殊型１）
#
# @within function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/

# ランダム変数の調整
    execute if score @s AX.AnimationTick matches 201 run scoreboard players set $AX.Temp Temporary 0
    execute if score @s AX.AnimationTick matches 201 store result score $AX.Temp Temporary run random value 0..4
    execute if score @s AX.AnimationTick matches 201 run scoreboard players operation @s AX.ThunderSpear += $AX.Temp Temporary
    execute if score @s AX.AnimationTick matches 201 run scoreboard players reset $AX.Temp Temporary

# 0-0-0-0-0を持ってきて基底向きを決定
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
    execute if score @s AX.ThunderSpear matches 51 run tp 0-0-0-0-0 ^ ^ ^ ~90 ~
    execute if score @s AX.ThunderSpear matches 52 run tp 0-0-0-0-0 ^ ^ ^ ~180 ~
    execute if score @s AX.ThunderSpear matches 53 run tp 0-0-0-0-0 ^ ^ ^ ~270 ~

# 1番目の帯電
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 201 rotated ~45 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 201 positioned ^-12.728 ^ ^12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 2番目の帯電
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 221 positioned ^-12.728 ^ ^12.728 rotated ~180 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 221 positioned ^-12.728 ^ ^-12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 3番目の帯電
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 241 positioned ^-12.728 ^ ^-12.728 rotated ~270 ~ positioned ^ ^ ^0.6 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 241 positioned ^12.728 ^ ^-12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/normal

# 4番目の帯電
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 rotated ~45 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 positioned ^-12.728 ^ ^12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 rotated ~135 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 positioned ^-12.728 ^ ^-12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 rotated ~225 ~ run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/vfx/
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 261 positioned ^12.728 ^ ^-12.728 as @e[type=item_display,scores={ObjectID=2012},distance=..0.01] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard

# 帯電ダメージエリア表示
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 340 positioned ^-12.728 ^ ^12.728 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 340 positioned ^-12.728 ^ ^-12.728 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard
    execute at 0-0-0-0-0 if score @s AX.AnimationTick matches 340 positioned ^12.728 ^ ^-12.728 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/summon_area/hard

# 発動
    execute if score @s AX.AnimationTick matches 350 as @e[type=item_display,tag=2012.HardElect,scores={ObjectID=2012},distance=..32] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/hard_cast

# マーカーを元に戻す
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
