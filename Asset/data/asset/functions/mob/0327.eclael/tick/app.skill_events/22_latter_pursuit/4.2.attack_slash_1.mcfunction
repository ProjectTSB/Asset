#> asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/**
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 45f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..2.7] run function api:damage/
# リセット
    function api:damage/reset
