#> asset:object/1081.barrel/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1081/kill

# 演出
    particle block barrel ~ ~ ~ 0.3 0.3 0.3 1 20
    playsound block.wood.break neutral @a ~ ~ ~ 1.0 1.0
    playsound block.fence_gate.close neutral @a ~ ~ ~ 1.0 1.3

# 消滅
    kill @s
