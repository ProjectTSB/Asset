#> asset:object/1068.icicle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1068/tick

# 演出
    particle dust 1 1000000000 1000000000 1 ~ ~0.03 ~ 0.1 0.1 0.1 0 1

# WaitingTick デクリメント
    execute unless data storage asset:context this{WaitingTick:-1} unless data storage asset:context this{WaitingTick:0} store result storage asset:context this.WaitingTick int 0.9999999999 run data get storage asset:context this.WaitingTick 1
# WaitingTick が 0 になったら動くようにする
    execute if data storage asset:context this{WaitingTick:0} run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 2
    execute if data storage asset:context this{WaitingTick:0} run data modify storage asset:context this.WaitingTick set value -1
    execute if data storage asset:context this{WaitingTick:-1} run function asset:object/super.tick
