#> asset:object/1159.bread/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1159/kill

# 演出
    particle item stick{CustomModelData:20603} ~ ~ ~ 0 0 0 0.1 15 normal @a
    playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 2

# 消滅
    kill @s
