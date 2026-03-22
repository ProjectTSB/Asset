#> asset:mob/0421.silver_turret/tick/check_count
#
#
#
# @within function asset:mob/0421.silver_turret/tick/

# シミシミバレットの数が一定数以下なら成功
# 何故か return run scoreboard players resetすると、if functionがtrueを返すため、リセットが不要な実装を行う

# 数を取得
    execute store result storage asset:context this.Count int 1 if entity @e[type=silverfish,scores={MobID=422},distance=..32,limit=10]

# 失敗
    execute if data storage asset:context this{Count:10} run return 0

# 成功
    return 1
