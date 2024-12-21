#> asset:effect/0604.logging_of_soul/modifier/add
#
# 補正を付与する
#
# @within function
#   asset:effect/0604.logging_of_soul/given/
#   asset:effect/0604.logging_of_soul/re-given/

#> Private
# @private
    #declare score_holder $Stack

# スタックに比例して最大体力を減少させる
# 10(1+Stack)%

# スタックを取得し、2を足し、storageへ代入
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result storage api: Argument.Amount float -0.1 run scoreboard players add $Stack Temporary 1

# modifierを付与
    data modify storage api: Argument.UUID set value [I;1,3,604,0]
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# リセット
    scoreboard players reset $Stack Temporary
