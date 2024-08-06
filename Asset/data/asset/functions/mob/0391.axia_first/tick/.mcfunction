#> asset:mob/0391.axia_first/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0391.axia_first/_/tick

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=AV.ModelRoot,distance=..100,sort=nearest,limit=1] add AV.Root.This

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=AV.Root.This,distance=..100] ~ ~ ~ ~ ~

# タイマー計算
    scoreboard players add @s AV.AnimationTick 1

# スキル選択
    execute if score @s AV.AnimationTick matches 0 run function asset:mob/0391.axia_first/ai/general/4.select_skill

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1.. at @e[type=item_display,tag=AV.Root.This,distance=..100] run function asset:mob/0391.axia_first/ai/animation/

# 紐づけ終了
    tag @e[type=item_display,tag=AV.Root.This,distance=..100] remove AV.Root.This

# Projectile Tick処理
    # 斬撃エフェクト Tick処理
        execute as @e[type=item_display,tag=AV.SlashEffect,distance=..100] at @s run function asset:mob/0391.axia_first/ai/projectile/slash_effect/2.tick
        execute as @e[type=item_display,tag=AV.SlashEffectMini,distance=..100] at @s run function asset:mob/0391.axia_first/ai/projectile/slash_effect_mini/2.tick
    # 斬撃飛ばし Tick処理
        execute as @e[type=item_display,tag=AV.SlashSonic,distance=..100] at @s run function asset:mob/0391.axia_first/ai/projectile/slash_sonic/2.tick
    # ソニックブーム Tick処理
        execute as @e[type=item_display,tag=AV.SonicBoomEffect,distance=..100] at @s run function asset:mob/0391.axia_first/ai/projectile/sonic_boom/2.tick
