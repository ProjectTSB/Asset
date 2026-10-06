#> asset:effect/0360.calamity_bind/modifier/remove
#
#
#
# @within function
#   asset:effect/0360.calamity_bind/end/
#   asset:effect/0360.calamity_bind/remove/

# 攻撃
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/base/remove

# MP回復
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/mp_heal/remove
