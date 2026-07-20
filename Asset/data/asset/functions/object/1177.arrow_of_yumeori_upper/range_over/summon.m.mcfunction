#> asset:object/1177.arrow_of_yumeori_upper/range_over/summon.m
#
#
#
# @within function asset:object/1177.arrow_of_yumeori_upper/range_over/

# 召喚
    data modify storage api: Argument.ID set value 1178
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.Count set from storage asset:context this.Count
    data modify storage api: Argument.FieldOverride.Delay set from storage asset:context this.Delay

# rangeだけ半分にして渡す
    execute store result storage api: Argument.FieldOverride.Range double 0.005 run data get storage asset:context this.Range 100
    $execute positioned $(X) $(Y) $(Z) run function api:object/summon
