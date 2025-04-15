#> asset:mob/0436.landmine/tick/landing
#
# 
#
# @within function asset:mob/0436.landmine/tick/

# 動かないようにAIを消す
    data modify entity @s NoAI set value 1b

# 着地パーティクルが出ないようにOnGroundを消す
    data modify entity @s OnGround set value 0b

# 起動したことを示すタグ付け
    tag @s add C4.Active
