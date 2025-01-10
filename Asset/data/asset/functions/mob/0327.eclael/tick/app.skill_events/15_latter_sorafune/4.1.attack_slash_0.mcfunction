#> asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
#
# アニメーションのイベントハンドラ 後半・宙船
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 35f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
# リセット
    function api:damage/reset
