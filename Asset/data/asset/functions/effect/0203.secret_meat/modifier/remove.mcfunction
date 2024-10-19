#> asset:effect/0203.secret_meat/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0203.secret_meat/end/
#   asset:effect/0203.secret_meat/remove/

# 攻撃+20%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    function api:modifier/attack/base/remove

# MP回復+50%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    function api:modifier/mp_regen/remove

# 被回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,203,0]
    function api:modifier/receive_heal/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000
