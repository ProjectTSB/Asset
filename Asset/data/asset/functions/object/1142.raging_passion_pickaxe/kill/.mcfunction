#> asset:object/1142.raging_passion_pickaxe/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1142/kill

# 演出
    particle flame ~ ~ ~ 0 0 0 0.18 30
    playsound entity.item.break neutral @a ~ ~ ~ 0.6 1

# 消滅
    kill @s
