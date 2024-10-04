#> asset:object/2041.lastboss_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2041/init

# 一回だけ演出が見える
    execute rotated 0 0 run function asset:object/2041.lastboss_thunder/init/shape

# サウンド
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 1 2

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
