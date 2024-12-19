#> asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/
#
# ディザスター・ディバイン
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AX.AnimationTick matches 1..35 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/10_1_sw_disaster_divine/play

# 前へとワープ
    execute if score @s AX.AnimationTick matches 40..46 run function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/forward

# 慣性
    execute if score @s AX.AnimationTick matches 47..51 run function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/inertia

# ディバイン発射
    execute if score @s AX.AnimationTick matches 75 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=40},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 78 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=41},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 81 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=42},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 84 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=43},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 87 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=44},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 90 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=45},distance=..100] add 2008.ShotReadyManual
    execute if score @s AX.AnimationTick matches 93 run tag @e[type=item_display,scores={ObjectID=2008,AX.AnimationTick=46},distance=..100] add 2008.ShotReadyManual

# 終了処理
    execute if score @s AX.AnimationTick matches 110 run function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/end

# バリアント
    execute if score @s AX.AnimationTick matches 65 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/mabataki/apply
    execute if score @s AX.AnimationTick matches 75 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/variants/normal/apply
