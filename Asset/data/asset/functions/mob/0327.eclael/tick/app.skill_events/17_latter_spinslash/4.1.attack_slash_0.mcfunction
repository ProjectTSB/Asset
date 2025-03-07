#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.1.attack_slash_0
#
# アニメーションのイベントハンドラ 後半・回転斬り 追撃部分
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/**
#   function asset:mob/0327.eclael/debug_damage

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute positioned ~ ~1 ~ rotated ~80 ~5 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.3.particle_slash_1

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 20f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# リセット
    function api:damage/reset
    tag @a remove 93.Temp.AttackTarget
