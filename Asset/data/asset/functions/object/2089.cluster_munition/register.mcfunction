#> asset:object/2089.cluster_munition/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2089/register

# 継承(オプション)
    # data modify storage asset:object Extends append value 
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value 
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value 

# ID (int)
    data modify storage asset:object ID set value 2089
# フィールド(オプション)
    data modify storage asset:object Field.DetonateTime set value 20
    data modify storage asset:object Field.MobUUID set value 0
