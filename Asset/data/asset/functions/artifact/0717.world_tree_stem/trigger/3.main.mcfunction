#> asset:artifact/0717.world_tree_stem/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0717.world_tree_stem/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    execute rotated ~ 0 positioned ^ ^0.5 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~90 0 positioned ^ ^0.5 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~180 0 positioned ^ ^0.5 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute rotated ~270 0 positioned ^ ^0.5 ^0.4 run function asset:artifact/0715.world_tree_crown/trigger/leaf_vfx
    execute positioned ~ ~0.5 ~ run function asset:artifact/0715.world_tree_crown/trigger/circle_vfx

    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.6 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.4 0
    playsound ogg:block.amethyst.step2 player @a ~ ~ ~ 0.5 1.2 0

# 移動速度+5％
    # attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-02cd00000004 "0717.Speed" 0.05 multiply_base

# 回復量
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,717,4]
    data modify storage api: Argument.Amount set value 0.075
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 魔法攻撃
    # data modify storage api: Argument.UUID set value [I;1,1,717,4]
    # data modify storage api: Argument.Amount set value 0.05
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/attack/magic/add

# 攻撃力
    # data modify storage api: Argument.UUID set value [I;1,1,717,4]
    # data modify storage api: Argument.Amount set value -0.025
    # data modify storage api: Argument.Operation set value "multiply_base"
    # function api:modifier/attack/base/add
