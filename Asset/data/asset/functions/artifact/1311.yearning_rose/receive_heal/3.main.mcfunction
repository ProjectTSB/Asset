#> asset:artifact/1311.yearning_rose/receive_heal/3.main
#
#
#
# @within function asset:artifact/1311.yearning_rose/receive_heal/2.check_condition

# 演出
    


# 調整班用数値設定箇所
# 効果時間は長めがいいな～とか
    # 効果時間
        data modify storage api: Argument.Duration set value 300
    # 攻撃補正
        data modify storage api: Argument.FieldOverride.AttackModifier set value 0.1
    # 与回復補正
        data modify storage api: Argument.FieldOverride.HealModifier set value 0.1

# バフ
    data modify storage api: Argument.ID set value 340
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset @s 10F.HealSum
