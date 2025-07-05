#> asset:mob/0378.red_knight_v3/tick/06.skill_jump2/landing
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/main


# アニメーション変更
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_fallstab_landing/play

# 画面エフェクト
    title @a[distance=..40] times 5 8 10
    title @a[distance=..40] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}

# でっかいでっかいパーティクル
    execute positioned ~-16 ~-8 ~-16 run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/particle

# 演出 音は普通に音量を上げるとやかましいので、範囲内のヤツに対して直接鳴らす
    execute at @a[distance=..40] run playsound minecraft:entity.wither.ambient hostile @p ~ ~ ~ 1 1.5
    execute at @a[distance=..40] run playsound minecraft:entity.generic.explode hostile @p ~ ~ ~ 1 1
    execute at @a[distance=..40] run playsound minecraft:entity.generic.explode hostile @p ~ ~ ~ 1 1.2
    execute at @a[distance=..40] run playsound minecraft:item.trident.thunder hostile @p ~ ~ ~ 1 1.5
    execute at @a[distance=..40] run playsound minecraft:item.trident.thunder hostile @p ~ ~ ~ 1 1.7
    particle explosion_emitter ~ ~0.5 ~ 10 0 10 0 20 force @a[distance=..30]
    particle dust 0.5 0 0 2 ~ ~3 ~ 10 10 10 0 500
    particle dust 0.8 0 0 2 ~ ~3 ~ 10 10 10 0 500



# 判定
    # ダメージ設定
    # 与えるダメージ
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.Damage set value 9999.9f
        execute unless predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.Damage set value 80.0f
    # 第1属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第2属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..16] run function api:damage/
# リセット
    function api:damage/reset
