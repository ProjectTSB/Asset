#> asset:mob/0059.jack_o_lantern/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0059.jack_o_lantern/_/death

# 偽物を抹消する
    kill @e[type=husk,scores={MobID=224},distance=..50]
