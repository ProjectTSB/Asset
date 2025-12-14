#> asset:object/1145.throwing_ark/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1145/tick

#> private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 移動
    execute if score @s General.Object.Tick matches 2 run data modify storage asset:context this.StepPerTick set value 2
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.StepPerTick set value 1
    execute if score @s General.Object.Tick matches 10 run data modify storage asset:context this.MovePerStep set value 0.08

# パーティクル
    particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.05 1 force @a[distance=..32]
    particle minecraft:crit ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]

# 一定Tickでサウンド
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 数tickおきに実行
        scoreboard players operation $Interval Temporary %= $5 Const
    # インターバルで発生するイベント
        execute if score $Interval Temporary matches 0 run playsound minecraft:item.trident.throw neutral @a ~ ~ ~ 1 0.7
    # リセット
        scoreboard players reset $Interval Temporary

# Super
    function asset:object/super.tick
