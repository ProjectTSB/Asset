#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/7.damage
#
# ダメージを与える
#
# @within function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot

# 演出
    execute at @e[type=#lib:living,tag=Target,distance=..20,limit=1] run particle firework ~ ~1.2 ~ 0 0 0 0.3 10

# ダメージ設定
    data modify storage api: Argument.Damage set value 100
    data modify storage api: Argument.AttackType set value "Physical"
    execute as @p[tag=Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..20] run function api:damage/
    function api:damage/reset
