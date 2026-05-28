#> asset:artifact/1314.topaz_broach/trigger/2.check_condition/barrier_is_max
#
# バリアが最大値か？
#
# @within function asset:artifact/1314.topaz_broach/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $MaxBarrier
    #declare score_holder $CurrentBarrier

# 計算に必要な値を取得
    execute store result score $MaxBarrier Temporary run data get storage api: Return.Effect.Field.MaxBarrier
    execute store result score $CurrentBarrier Temporary run data get storage api: Return.Effect.Field.Barrier

# バリア最大値 = 現在のバリアならCanUsedを削除
    execute if score $MaxBarrier Temporary = $CurrentBarrier Temporary run tag @s remove CanUsed

# リセット
    scoreboard players reset $MaxBarrier Temporary
    scoreboard players reset $CurrentBarrier Temporary
