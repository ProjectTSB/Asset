#> asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/vfx/
#
# VFX 表示
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick

#> Score
# @private
    #declare score_holder $AW.VFX

# スコアを代入
    scoreboard players operation $AW.Temp Temporary = @s AW.ProjectileTick
    scoreboard players operation $AW.VFX Temporary = @s AW.ProjectileTick

# 2Tick毎に起動するように
    scoreboard players operation $AW.VFX Temporary %= $2 Const

# 180Tick周期でVFXを回転させる
    scoreboard players operation $AW.Temp Temporary %= $90 Const
    execute store result storage asset:temp AW.X int 1 run scoreboard players operation $AW.Temp Temporary *= $4 Const
    execute if score $AW.VFX Temporary matches 0 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/vfx/m with storage asset:temp AW

# リセット
    data remove storage asset:temp AW.X
    scoreboard players reset $AW.Temp Temporary
    scoreboard players reset $AW.VFX Temporary
