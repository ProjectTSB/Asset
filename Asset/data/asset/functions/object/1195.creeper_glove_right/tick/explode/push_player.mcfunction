#> asset:object/1195.creeper_glove_right/tick/explode/push_player
#
# 爆発から遠ざかる向きへプレイヤーを吹き飛ばす
#
# @within function asset:object/1195.creeper_glove_right/tick/explode/

#> Private
# @private
    #declare score_holder $Distance
    #declare score_holder $Power
    #declare score_holder $Rest

# 距離 d (×1000)
    function lib:distance/as_to_at
    execute store result score $Distance Temporary run data get storage lib: Return.Distance 1000
    data remove storage lib: Return.Distance

# 強さ (×1000)
    execute store result score $Power Temporary run data get storage asset:context this.PlayerKnockback 1000
    scoreboard players set $Rest Temporary 4000
    scoreboard players operation $Rest Temporary -= $Distance Temporary
    scoreboard players operation $Power Temporary *= $Rest Temporary
    scoreboard players operation $Power Temporary /= $4000 Const
    execute if score $Power Temporary matches 1.. store result storage lib: Argument.VectorMagnitude double 0.001 run scoreboard players get $Power Temporary

# 爆発から遠ざかる水平の向きから20°上へ飛ばす
    execute if score $Power Temporary matches 1.. if score $Distance Temporary matches 100.. facing entity @s feet rotated ~ -20 run function lib:motion/looking
# 近すぎて向きが決まらないときは所有者の前方から20°上へ飛ばす
    execute if score $Power Temporary matches 1.. if score $Distance Temporary matches ..99 rotated as @p[tag=1195.Owner,distance=..64] rotated ~ -20 run function lib:motion/looking

# リセット
    scoreboard players reset $Distance Temporary
    scoreboard players reset $Power Temporary
    scoreboard players reset $Rest Temporary
