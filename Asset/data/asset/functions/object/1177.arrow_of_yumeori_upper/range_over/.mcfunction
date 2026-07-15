#> asset:object/1177.arrow_of_yumeori_upper/range_over/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1177/range_over

# 消滅
    function asset:object/call.m {method:"kill"}

# 矢を降らす用のentityを召喚
    data modify storage api: Argument.ID set value 1178
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
    data modify storage api: Argument.FieldOverride.Count set from storage asset:context this.Count
    data modify storage api: Argument.FieldOverride.Delay set from storage asset:context this.Delay
    data modify storage api: Argument.FieldOverride.Pos set from storage asset:context this.Pos
    function api:object/summon
