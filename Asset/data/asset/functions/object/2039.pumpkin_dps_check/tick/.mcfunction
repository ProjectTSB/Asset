#> asset:object/2039.pumpkin_dps_check/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2039/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# めっちゃでかくなる
    execute unless data storage asset:context this{BlowUpEnded:true} run function asset:object/2039.pumpkin_dps_check/tick/blow_up

# 回転
    execute if data storage asset:context this{BlowUpEnded:true} if score @s General.Object.Tick matches 40.. run function asset:object/2039.pumpkin_dps_check/tick/beginning_spin

# 迫ってくる
    execute unless data storage asset:context this.InterpolationList[0] run function asset:object/2039.pumpkin_dps_check/tick/move/

# 消滅処理
    kill @s[scores={General.Object.Tick=390..}]
