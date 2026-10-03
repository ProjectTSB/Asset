#> asset:object/1192.satelite_drop/tick/idle/
#
# 発射待機中の動き
#
# @within function asset:object/1192.satelite_drop/tick/

#> Private
# @private
    #declare score_holder $Angle

# 回転
    execute store result score $Angle Temporary run data get storage asset:context this.Angle
    execute store result storage asset:context this.Angle int 1 run scoreboard players add $Angle Temporary 4
# 角度をマクロにわたす
    execute positioned ~ ~0.75 ~ rotated ~ ~ run function asset:object/1192.satelite_drop/tick/idle/m with storage asset:context this
