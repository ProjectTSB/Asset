#> asset:object/1176.arrow_of_yumeori/pre_hit/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1176/pre_hit

#> 継承元のtag
# @private
    #declare tag 1009.Player

# カウント用のエフェクトのスタックをチェック
    data modify storage api: Argument.ID set value 379
    execute as @a[tag=1009.Player] run function api:entity/mob/effect/get/from_id

# (Stack + 1 = MaxStack)か？
    execute store result storage api: Return.Effect.Stack int -1 run data get storage api: Return.Effect.Stack -1.0000000001
    execute store result storage asset:temp Success byte 1 run data modify storage api: Return.Effect.Stack set from storage asset:context this.Effect.Count.MaxStack

# 最大値なら曲射ができるようになるバフを付与
    execute if data storage asset:temp {Success:0b} as @a[tag=1009.Player] run function asset:object/1176.arrow_of_yumeori/pre_hit/give_buff

# 最大値でないならカウント+1
    execute if data storage asset:temp {Success:1b} as @a[tag=1009.Player] run function asset:object/1176.arrow_of_yumeori/pre_hit/add_count

# リセット
    data remove storage asset:temp Success
