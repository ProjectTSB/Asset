#> asset:artifact/0787.aurora_helm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0787.aurora_helm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} rotated ~ 0 positioned ~ ~1.7 ~ run function asset:artifact/0787.aurora_helm/trigger/4.vfx
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 2 0
    execute unless data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run playsound block.beacon.activate player @a ~ ~ ~ 0.5 2 0

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷攻撃
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# MP回復
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,1,787,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# フルセット検知
    execute if data storage asset:context id.all{head:787,chest:788,legs:789,feet:790} run function asset:artifact/0787.aurora_helm/trigger/fullset/equip
