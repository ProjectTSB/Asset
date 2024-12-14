#> asset:object/1060.medic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1060/tick

#> private
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1


# 40tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 40tickおきに実行
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1060.medic/tick/heal
# リセット
    scoreboard players reset $Interval

# 4tickおきに実行するやつ
# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
# 4tickおきに実行
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 rotated ~ 0 positioned ~ ~0.4 ~ run function asset:object/1060.medic/tick/circle
# リセット
    scoreboard players reset $Interval


# 消滅処理
    execute if score @s General.Object.Tick matches 400.. run function asset:object/1060.medic/tick/remove
