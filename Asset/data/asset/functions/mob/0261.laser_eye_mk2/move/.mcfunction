#> asset:mob/0261.laser_eye_mk2/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/261/move

# プレイヤーが遠い場合は、壁貫通を気にせずそのまま直進
    execute if data storage asset:context this{Distance:" Far"} run function asset:mob/0261.laser_eye_mk2/move/m with storage asset:context this

# プレイヤーが近い場合は後ろのブロックを気にしつつ後退
    execute anchored eyes positioned ^ ^ ^ if block ^ ^ ^-1 #lib:no_collision/ if block ~ ~-0.25 ~ #lib:no_collision/ anchored feet at @s run function asset:mob/0261.laser_eye_mk2/move/m with storage asset:context this
