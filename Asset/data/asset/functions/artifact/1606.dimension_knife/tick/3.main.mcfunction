#> asset:artifact/1606.dimension_knife/tick/3.main
#
#
#
# @within function asset:artifact/1606.dimension_knife/tick/2.check_condition

#> Private
# @private
    #declare score_holder $VectorX
    #declare score_holder $VectorZ

# ベクトル取得
    execute store result score $VectorX Temporary run data get storage api: Return.Vector[0] 100
    execute store result score $VectorZ Temporary run data get storage api: Return.Vector[2] 100

# どちらかのベクトルの絶対値が100を超えてるなら計算に含まない
    execute unless score $VectorX Temporary matches -10000..10000 run data modify storage asset:temp NotInclude set value true
    execute unless score $VectorZ Temporary matches -10000..10000 run data modify storage asset:temp NotInclude set value true

#
    # execute unless data storage api: Return{Vector:[0d,0d,0d]} run tellraw @a {"storage":"api:","nbt":"Return.Vector"}

# abs
    execute if score $VectorX Temporary matches ..-1 run scoreboard players operation $VectorX Temporary *= $-1 Const
    execute if score $VectorZ Temporary matches ..-1 run scoreboard players operation $VectorZ Temporary *= $-1 Const

# 加算
    execute unless data storage asset:temp {NotInclude:true} run scoreboard players operation $VectorX Temporary += $VectorZ Temporary
    execute unless data storage asset:temp {NotInclude:true} run scoreboard players operation @s 18M.MoveSum += $VectorX Temporary

# 値が一定以上なら発動
    execute if score @s 18M.MoveSum matches 4000.. run function asset:artifact/1606.dimension_knife/tick/give_buff

# リセット
    data remove storage asset:temp NotInclude
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorZ Temporary
