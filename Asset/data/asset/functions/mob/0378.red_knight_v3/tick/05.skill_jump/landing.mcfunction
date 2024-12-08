#> asset:mob/0378.red_knight_v3/tick/05.skill_jump/landing
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/05.skill_jump/main


# アニメーション変更
    execute as @e[type=item_display,tag=AI.AJ,tag=AI.AJLink,sort=nearest,limit=1] run function animated_java:red_knight/animations/attack_fallstab_landing/play
# 演出
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 0.7
    particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 0 force @a[distance=..20]
    particle dust 1 0.616 0 2 ~ ~1 ~ 2 1 2 0 50
    particle dust 1 0.416 0 2 ~ ~1 ~ 2 1 2 0 50

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 45.0f
    # 第1属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第2属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] run function lib:damage/
# リセット
    function lib:damage/reset
