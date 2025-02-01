#> asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/4.1.attack_iai_0
#
# アニメーションのイベントハンドラ 前半・居合
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    # execute positioned ^ ^1 ^2 rotated ~90 ~10 run function asset:mob/0327.eclael/tick/app.skill_events/02_rod_attack/5.1.particle_swing

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 24f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
