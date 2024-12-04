#> asset:effect/0244.aurora_armor/fullset/equip
# @within function asset:effect/0244.aurora_armor/*given/

# 演出
    execute rotated ~ 0 positioned ~ ~0.3 ~ run function asset:effect/0244.aurora_armor/fullset/vfx
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.7 1.8 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.6 0

# 雷攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,3,244,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# MP回復+10%
    data modify storage api: Argument.UUID set value [I;1,3,244,0]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add
