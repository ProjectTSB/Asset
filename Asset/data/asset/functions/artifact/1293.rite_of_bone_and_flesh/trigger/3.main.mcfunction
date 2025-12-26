#> asset:artifact/1293.rite_of_bone_and_flesh/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1293.rite_of_bone_and_flesh/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 使用時刻を記録
    execute store result score @s ZX.LatestUseTick run data get storage global Time
# 連続使用回数の設定
    # 初回なら残り回数を定義
        execute unless score @s ZX.RemainingCount matches 1.. run scoreboard players set @s ZX.RemainingCount 10
    # 残り回数を１減算
        scoreboard players remove @s ZX.RemainingCount 1

# 回復処理
    # 最大体力を取得
        function api:modifier/max_health/get
        execute store result storage api: Argument.Amount double 0.01 run data get storage api: Return.MaxHealth 1.0
    # 回復
        function api:heal/modifier
        function api:heal/
        function api:heal/reset
