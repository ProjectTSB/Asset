#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/turn
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# ランダム方向に回転
    execute store result entity @s Rotation[0] float 1 run random value -179..179
