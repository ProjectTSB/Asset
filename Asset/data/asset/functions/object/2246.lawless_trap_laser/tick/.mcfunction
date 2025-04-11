#> asset:object/2246.lawless_trap_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2246/tick

#> インターバル用スコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick

# 数tickごとに攻撃判定とパーティクルが出現
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2246.lawless_trap_laser/common/recursive_laser

# タグを付与した相手にダメージ
    execute as @a[tag=2246.Hit,distance=..64] run function asset:object/2246.lawless_trap_laser/common/damage

# リセット
    scoreboard players reset $Interval Temporary

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
