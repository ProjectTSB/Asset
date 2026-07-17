#> asset:object/1178.yumeori_falling_arrow_manager/tick/summon
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos

# 攻撃用Object召喚
    data modify storage api: Argument.ID set value 1179
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.Delay set from storage asset:context this.Delay
    function api:object/summon
