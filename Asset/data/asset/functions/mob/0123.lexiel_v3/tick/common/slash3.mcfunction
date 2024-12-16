#> asset:mob/0123.lexiel_v3/tick/common/slash3
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**

# 斬撃エフェクト（これ実行する前に設定いれろよ！いれるんだぞ！！）
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^-0.5 ^ positioned ^ ^ ^2 rotated ~ 0 run function api:object/summon

# 前方にいるプレイヤーにタグをつける
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 3F.SkillSwordDamageThis

# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 25.37f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute as @a[tag=3F.SkillSwordDamageThis] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=3F.SkillSwordDamageThis] remove 3F.SkillSwordDamageThis
