#> asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
#
# オブジェクトID割り当て
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 割り当て
    execute store result storage api: Argument.FieldOverride.ObjectId int 1 run scoreboard players add @s CO.ObjectId 1
