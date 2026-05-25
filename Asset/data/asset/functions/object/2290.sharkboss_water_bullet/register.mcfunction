#> asset:object/2290.sharkboss_water_bullet/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2290/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value 

# ID (int)
    data modify storage asset:object ID set value 2290
# フィールド(オプション)
    data modify storage asset:object Field set value {Speed:3,Range:30,MovePerStep:0.5}
    #data modify storage api: Argument.FieldOverride set value {Speed:10,Range:30,MovePerStep:0.5}
    # データ指定
    #data modify storage api: Argument.FieldOverride set value {Speed:10,Range:30,MovePerStep:0.5}
