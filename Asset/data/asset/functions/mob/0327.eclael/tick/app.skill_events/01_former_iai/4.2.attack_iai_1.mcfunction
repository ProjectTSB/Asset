#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.2.attack_iai_1
#
# アニメーションのイベントハンドラ 前半・居合斬り 2段目攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
#   function asset:mob/0327.eclael/debug_damage

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-30 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 42f
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
