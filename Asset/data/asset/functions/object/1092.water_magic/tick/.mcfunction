#> asset:object/1092.water_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1092/tick

#> Private
# @private
    #declare score_holder $Interval

# vfx
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1092.water_magic/tick/vfx

# ダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1092.water_magic/tick/damage

# リセット
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]
