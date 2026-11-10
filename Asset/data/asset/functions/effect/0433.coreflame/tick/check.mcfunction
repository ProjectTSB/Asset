#> asset:effect/0433.coreflame/tick/check
#
# 所持バリアが一定以下かを確認する
#
# @within function asset:effect/0433.coreflame/tick/

#> Private
# @private
    #declare score_holder $C1.Barrier
    #declare score_holder $C1.Threshold

# 所持バリアの総量を取得(10倍)
    function oh_my_dat:please
    function api:entity/player/absorption/calc_amount
    execute store result score $C1.Barrier Temporary run data get storage api: Return.Absorption.Amount 10
    execute store result score $C1.Threshold Temporary run data get storage asset:context this.Threshold 10

# しきい値以下かつフェニックスシールドをオフハンドに持っているならバリアを付与
    execute if score $C1.Barrier Temporary <= $C1.Threshold Temporary if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TSB:{ID:1657}}}]}] run function asset:effect/0433.coreflame/tick/give_barrier

# リセット
    scoreboard players reset $C1.Barrier Temporary
    scoreboard players reset $C1.Threshold Temporary
