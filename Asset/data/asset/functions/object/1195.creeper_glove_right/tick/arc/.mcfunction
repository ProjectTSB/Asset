#> asset:object/1195.creeper_glove_right/tick/arc/
#
# 進行度の割合$1195.ArcT (0..1000) から円弧上の位置と向きを求めて移動する
#
# @within function
#   asset:object/1195.creeper_glove_right/tick/swing/idle
#   asset:object/1195.creeper_glove_right/tick/swing/out
#   asset:object/1195.creeper_glove_right/tick/swing/back
#   asset:object/1195.creeper_glove_right/tick/swing/cooldown

#> Private
# @private
    #declare score_holder $T
    #declare score_holder $U
    #declare score_holder $Side
    #declare score_holder $OwnerYaw
    #declare score_holder $OwnerPitch
    #declare score_holder $Value
    #declare score_holder $Calc

# t, u (×1000) と所有者の向き (度×1000)
    scoreboard players operation $T Temporary = $1195.ArcT Temporary
    scoreboard players set $U Temporary 1000
    scoreboard players operation $U Temporary -= $T Temporary
    execute store result score $Side Temporary run data get storage asset:context this.Side
    execute store result score $OwnerYaw Temporary run data get entity @p[tag=1195.Owner,distance=..64] Rotation[0] 1000
    execute store result score $OwnerPitch Temporary run data get entity @p[tag=1195.Owner,distance=..64] Rotation[1] 1000

# 角度 Theta
    scoreboard players set $Value Temporary 90
    scoreboard players operation $Value Temporary *= $U Temporary
    scoreboard players operation $Value Temporary *= $Side Temporary
    execute store result storage asset:temp 1195.Arc.Theta double 0.001 run scoreboard players get $Value Temporary
# 見た目のyaw = 所有者のyaw − Side × FinishYaw × t (待機で所有者と同じ向き、到達時に内側へFinishYaw度)
    execute store result score $Value Temporary run data get storage asset:context this.FinishYaw 1000
    scoreboard players operation $Value Temporary *= $T Temporary
    scoreboard players operation $Value Temporary /= $1000 Const
    scoreboard players operation $Value Temporary *= $Side Temporary
    scoreboard players operation $Calc Temporary = $OwnerYaw Temporary
    scoreboard players operation $Calc Temporary -= $Value Temporary
    execute store result storage asset:temp 1195.Arc.Yaw double 0.001 run scoreboard players get $Calc Temporary

# 半径 r
    execute store result score $Value Temporary run data get storage asset:context this.Reach 1000
    execute store result score $Calc Temporary run data get storage asset:context this.OffsetSide 1000
    scoreboard players operation $Value Temporary -= $Calc Temporary
    scoreboard players operation $Value Temporary *= $T Temporary
    scoreboard players operation $Value Temporary /= $1000 Const
    scoreboard players operation $Value Temporary += $Calc Temporary
    execute store result storage asset:temp 1195.Arc.R double 0.001 run scoreboard players get $Value Temporary
# 前のずれ f
    execute store result score $Value Temporary run data get storage asset:context this.OffsetForward 1000
    scoreboard players operation $Value Temporary *= $U Temporary
    scoreboard players operation $Value Temporary /= $1000 Const
    execute store result storage asset:temp 1195.Arc.F double 0.001 run scoreboard players get $Value Temporary
# 高さ h
    execute store result score $Value Temporary run data get storage asset:context this.OffsetUp 1000
    scoreboard players operation $Value Temporary *= $U Temporary
    scoreboard players operation $Value Temporary /= $1000 Const
    execute store result storage asset:temp 1195.Arc.H double 0.001 run scoreboard players get $Value Temporary

# 円弧のpitch
    scoreboard players operation $Value Temporary = $OwnerPitch Temporary
    scoreboard players operation $Value Temporary *= $T Temporary
    scoreboard players operation $Value Temporary /= $1000 Const
    execute store result storage asset:temp 1195.Arc.Pitch double 0.001 run scoreboard players get $Value Temporary
# 見た目のpitch
    execute store result storage asset:temp 1195.Arc.VisPitch double 0.001 run scoreboard players get $OwnerPitch Temporary

# 先読み補正がなければ0にする
    execute unless data storage asset:temp 1195.Arc.DX run data modify storage asset:temp 1195.Arc merge value {DX:0d,DY:0d,DZ:0d}

# 移動する
    function asset:object/1195.creeper_glove_right/tick/arc/tp.m with storage asset:temp 1195.Arc

# リセット
    data remove storage asset:temp 1195.Arc
    scoreboard players reset $T Temporary
    scoreboard players reset $U Temporary
    scoreboard players reset $Side Temporary
    scoreboard players reset $OwnerYaw Temporary
    scoreboard players reset $OwnerPitch Temporary
    scoreboard players reset $Value Temporary
    scoreboard players reset $Calc Temporary
