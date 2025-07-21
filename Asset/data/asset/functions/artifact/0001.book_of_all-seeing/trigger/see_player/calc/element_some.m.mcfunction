#> asset:artifact/0001.book_of_all-seeing/trigger/see_player/calc/element_some.m
# @input args
#   Type: string
#   IsReverse: boolean
#   AttackType : String (Physical | Magic)
#   ElementType : String (Fire | Water | Thunder)
# @within function asset:artifact/0001.book_of_all-seeing/trigger/see_player/

#> Private
# @private
    #declare score_holder $Modifier
    #declare score_holder $Type1
    #declare score_holder $Type2
    #declare score_holder $Decimal

# 各パラメータを取得 (e3)
    $execute store result score $Modifier Temporary run data get storage api: Return.$(Type).Base 1000
    $execute store result score $Type1 Temporary run data get storage api: Return.$(Type).$(AttackType) 1000
    $execute store result score $Type2 Temporary run data get storage api: Return.$(Type).$(ElementType) 1000

# 計算する Base * (AttackType + ElementType - 1)

# X(e3) = (AttackType(e3) + ElementType(e3) - 1(e3))
    scoreboard players operation $Type1 Temporary += $Type2 Temporary
    scoreboard players remove $Type1 Temporary 1000
# X(e3) = Base(e3) * X(e3) / 1(e3)
    scoreboard players operation $Modifier Temporary *= $Type1 Temporary
    scoreboard players operation $Modifier Temporary /= $1000 Const
    scoreboard players remove $Modifier Temporary 1000

# IsReverse が true なら反転する
    $execute if data storage global Boolean.$(IsReverse) run scoreboard players operation $Modifier Temporary *= $-1 Const

# storage(e2) = X(e3) / 1(e1)
    execute store result storage asset:temp 01.Value int 0.1 run scoreboard players get $Modifier Temporary
# storage(e0) = X(e3) % 10(e1)
    scoreboard players operation $Decimal Temporary = $Modifier Temporary
    execute store result storage asset:temp 01.Decimal int 1 run scoreboard players operation $Decimal Temporary %= $10 Const
    $data modify storage asset:temp 01.Type set value "$(Type).$(AttackType).$(ElementType)"

# %の形に整える
    execute if score $Modifier Temporary matches 1.. run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/plus.m with storage asset:temp 01
    execute if score $Modifier Temporary matches 0 run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/neutral.m with storage asset:temp 01
    execute if score $Modifier Temporary matches ..-1 run function asset:artifact/0001.book_of_all-seeing/trigger/see_player/value_to_per/minus.m with storage asset:temp 01

# リセット
    scoreboard players reset $Modifier Temporary
    scoreboard players reset $Type1 Temporary
    scoreboard players reset $Type2 Temporary
