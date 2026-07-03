#> asset:effect/0342.prayer_amidst_blight/modifier/remove
#
#
#
# @within function
#   asset:effect/0342.prayer_amidst_blight/end/
#   asset:effect/0342.prayer_amidst_blight/remove/

# 攻撃補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/attack/base/remove

# 回復補正
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:modifier/heal/remove
