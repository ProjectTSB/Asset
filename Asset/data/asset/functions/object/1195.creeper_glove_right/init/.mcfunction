#> asset:object/1195.creeper_glove_right/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1195/init

#> Private
# @private
    #declare score_holder $UserID

#vfx
    particle explosion ~ ~1 ~ 1.5 1 1.5 0 15 force
    playsound entity.generic.explode player @a ~ ~ ~ 1 1

# 所有者の今のyaw(度×100)を振り検出の基準にする
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a[distance=..16] if score @s UserID = $UserID Temporary store result storage asset:context this.PrevYaw int 1 run data get entity @s Rotation[0] 100
    scoreboard players reset $UserID Temporary
