#> asset:object/2077.distortion_teleporter/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2077/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 魔法陣表示までの遅延
    execute unless data storage asset:context this{Delay:-1} store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
    execute if data storage asset:context this{Delay:0} run function asset:object/2077.distortion_teleporter/tick/scale_up

# 回転させる
    execute if data storage asset:context this{Delay:-1} store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} unless score @s General.Object.Tick matches 30.. run function asset:object/2077.distortion_teleporter/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 16

# 敵を引き寄せ
    execute if score @s General.Object.Tick matches 20 run function asset:object/2077.distortion_teleporter/tick/teleport.m with storage asset:context this

# 魔法陣を見えなくする
    execute if score @s General.Object.Tick matches 30 run function asset:object/2077.distortion_teleporter/tick/disappear

# 消滅処理
    kill @s[scores={General.Object.Tick=35..}]
