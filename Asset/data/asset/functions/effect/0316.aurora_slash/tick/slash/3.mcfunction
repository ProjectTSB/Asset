#> asset:effect/0316.aurora_slash/tick/slash/3
#
#
#
# @within function asset:effect/0316.aurora_slash/tick/

# 演出
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 1.9 0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.4 0.8
    execute anchored eyes positioned ^ ^-0.2 ^1.5 run function asset:effect/0316.aurora_slash/tick/vfx/slash3

# ダメージ判定
# 前方に強めの判定
    execute positioned ^ ^ ^8 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..8] add 316.Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash3
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=316.Target,distance=..4.5] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=316.Target,distance=..16] remove 316.Target
