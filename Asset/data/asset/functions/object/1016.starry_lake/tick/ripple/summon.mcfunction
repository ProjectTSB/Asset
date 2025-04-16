#> asset:object/1016.starry_lake/tick/ripple/summon
#
#
#
# @within function asset:object/1016.starry_lake/tick/ripple/set_pos

# 弾を召喚
    data modify storage api: Argument.ID set value 1017
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Ripple
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    function api:object/summon
