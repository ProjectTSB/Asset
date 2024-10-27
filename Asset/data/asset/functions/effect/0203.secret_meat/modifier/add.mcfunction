#> asset:effect/0203.secret_meat/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/0203.secret_meat/given/

# 攻撃+20%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# MP回復+50%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    data modify storage api: Argument.Amount set value 0.5
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add

# 被回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add

# TODO：1.20.5以降になったらattributeにする
# 移動速度+20%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "203.Speed" 0.2 multiply

# ジャンプ力
    effect give @s jump_boost 30 0 true

# 採掘速度
    effect give @s haste 30 2 true
