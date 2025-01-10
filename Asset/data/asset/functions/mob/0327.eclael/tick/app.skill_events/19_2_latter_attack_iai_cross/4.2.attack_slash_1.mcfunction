#> asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 後半・居合斬り
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/**
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^1 rotated ~90 ~-65 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai
    execute positioned ^ ^1 ^3 rotated ~90 ~-65 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 50f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ^ ^ ^3 as @a[tag=!PlayerShouldInvulnerable,distance=..4.5] run function api:damage/
# リセット
    function api:damage/reset
