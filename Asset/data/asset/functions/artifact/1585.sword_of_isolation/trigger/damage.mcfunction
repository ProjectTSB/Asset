#> asset:artifact/1585.sword_of_isolation/trigger/damage
#
#
#
# @within function asset:artifact/1585.sword_of_isolation/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 1500
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    #プレイヤーの攻撃補正だけを無視
    data modify storage api: Argument.FixedDamage set value true
    execute as @p[tag=this] run function api:damage/modifier
    #敵の耐性もろもろは計算する
    data modify storage api: Argument.FixedDamage set value false
    data modify storage api: Argument.BypassModifier set value false
    function api:damage/
    function api:damage/reset

# 演出
    particle ash ~ ~-0.5 ~ 0.1 0.5 0.1 0.1 45
    particle trial_spawner_detection ~ ~-1.5 ~ 0.1 0.5 0.1 0.0 20
