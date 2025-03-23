#> asset:artifact/0615.censored/trigger/attack
#
# 通常攻撃
#
# @within function asset:artifact/0615.censored/trigger/3.main

# 演出
    execute positioned ~ ~1.5 ~ rotated 0 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 45 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 90 90 run function asset:artifact/0615.censored/trigger/particle.1
    execute positioned ~ ~1.5 ~ rotated 135 90 run function asset:artifact/0615.censored/trigger/particle.1
    playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 0

# ダメージ
    data modify storage api: Argument.Damage set value 330.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run function api:damage/
    function api:damage/reset
