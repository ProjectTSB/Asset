#> asset:mob/0123.lexiel_v3/tick/common/slash2
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**

# 周囲にいるプレイヤーにタグをつける
    tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 3F.SkillSwordDamageThis
# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^ 2 0 2 0 20
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 28.0f
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
