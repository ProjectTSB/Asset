#> asset:object/1061.azure_jelly/tick/move/collision/calc_pos.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/check_collision.m

#> Private
# @private
    #declare tag TempMarker
    #declare score_holder $1061.MyX
    #declare score_holder $1061.MyY
    #declare score_holder $1061.MyZ
    #declare score_holder $1061.TargetX
    #declare score_holder $1061.TargetY
    #declare score_holder $1061.TargetZ

# 自身の座標をstorageへ
    data modify storage asset:temp 1061.MyPos set from entity @s Pos

# 移動先にMarkerを召喚し、その座標をstorageへ
    $summon marker ^ ^ ^$(Speed) {Tags:["TempMarker"]}
    execute as @e[type=marker,tag=TempMarker,distance=..3] run data modify storage asset:temp 1061.TargetPos set from entity @s Pos

# 自身の座標と移動先のx,y,zをそれぞれ取得
    execute store result score $1061.MyX Temporary run data get storage asset:temp 1061.MyPos[0] 100
    execute store result score $1061.MyY Temporary run data get storage asset:temp 1061.MyPos[1] 100
    execute store result score $1061.MyZ Temporary run data get storage asset:temp 1061.MyPos[2] 100

    execute store result score $1061.TargetX Temporary run data get storage asset:temp 1061.TargetPos[0] 100
    execute store result score $1061.TargetY Temporary run data get storage asset:temp 1061.TargetPos[1] 100
    execute store result score $1061.TargetZ Temporary run data get storage asset:temp 1061.TargetPos[2] 100

# 差を比較し、storageへ突っ込む
    execute store result storage asset:temp 1061.X float 0.01 run scoreboard players operation $1061.TargetX Temporary -= $1061.MyX Temporary
    execute store result storage asset:temp 1061.Y float 0.01 run scoreboard players operation $1061.TargetY Temporary -= $1061.MyY Temporary
    execute store result storage asset:temp 1061.Z float 0.01 run scoreboard players operation $1061.TargetZ Temporary -= $1061.MyZ Temporary

# Speedをstorageに入れておく
    # $data modify storage asset:temp 1061.Speed $(Speed)

# マクロでstorageに突っ込んだxyzでそれぞれ現座標に+したとき、埋まってないならそのまま移動
    function asset:object/1061.azure_jelly/tick/move/collision/move with storage asset:temp 1061

# リセット
    kill @e[type=marker,tag=TempMarker,distance=..3]
    scoreboard players reset $1061.MyX Temporary
    scoreboard players reset $1061.MyY Temporary
    scoreboard players reset $1061.MyZ Temporary
    scoreboard players reset $1061.TargetX Temporary
    scoreboard players reset $1061.TargetY Temporary
    scoreboard players reset $1061.TargetZ Temporary
