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
    execute if score @s General.Object.Tick matches 2 run data modify storage asset:context this.Speed set value 2
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.Speed set value 1

# 一定Tickでサウンド
    # 実行時間を移す
        scoreboard players operation $Interval Temporary = @s General.Object.Tick
    # 2tickおきに実行
        scoreboard players operation $Interval Temporary %= $5 Const
    # ダメージ実行
        execute if score $Interval Temporary matches 0 run playsound minecraft:item.trident.throw neutral @a ~ ~ ~ 1 0.7
    # リセット
        scoreboard players reset $Interval Temporary

# Super
    function asset:object/super.tick
