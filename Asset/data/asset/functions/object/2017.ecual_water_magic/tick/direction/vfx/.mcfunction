#> asset:object/2017.ecual_water_magic/tick/direction/vfx/
#
# VFX表示（マクロ準備）
#
# @within function asset:object/2017.ecual_water_magic/tick/

#> Score
# @private
    #declare score_holder $2017.VFX

# スコアを代入
    scoreboard players operation $2017.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2017.VFX Temporary = @s General.Object.Tick

# 2Tick毎に起動するように
    scoreboard players operation $2017.VFX Temporary %= $2 Const

# 180Tick周期でVFXを回転させる
    scoreboard players operation $2017.Temp Temporary %= $90 Const
    execute store result storage asset:temp 2017.X int 1 run scoreboard players operation $2017.Temp Temporary *= $4 Const
    execute if score $2017.VFX Temporary matches 0 run function asset:object/2017.ecual_water_magic/tick/direction/vfx/m with storage asset:temp 2017

# 音
    scoreboard players operation $2017.VFX Temporary = @s General.Object.Tick
    scoreboard players operation $2017.VFX Temporary %= $4 Const
    execute if score $2017.VFX Temporary matches 0 run playsound entity.player.swim hostile @a[distance=..16] ~ ~ ~ 0.5 1 0

# リセット
    data remove storage asset:temp 2017.X
    scoreboard players reset $2017.Temp Temporary
    scoreboard players reset $2017.VFX Temporary
