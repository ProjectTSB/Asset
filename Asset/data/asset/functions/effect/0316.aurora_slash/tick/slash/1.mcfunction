#> asset:effect/0316.aurora_slash/tick/slash/1
#
#
#
# @within function asset:effect/0316.aurora_slash/tick/

# 演出
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.9 1.8 0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.6 0.8

# 演出用Object召喚
    data modify storage api: Argument.ID set value 1128
    data modify storage api: Argument.FieldOverride.Count set value 1
    execute anchored eyes positioned ^ ^-0.2 ^1.5 run function api:object/summon

# ダメージ判定
# 前方に強めの判定
    execute positioned ^ ^ ^8 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..8] add 316.Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash1
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=316.Target,distance=..4.2] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=316.Target,distance=..16] remove 316.Target
