#> asset:object/1061.azure_jelly/tick/turn/far_player_no_enemy
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

#> Private
# @private
    #declare score_holder $1061.MyY
    #declare score_holder $1061.OwnerY

# Rotation用のstorageを用意しておく
    # data modify storage asset:temp 1061.Rotation set value [0f,0f]

# Rotation[0]はテキトーな数値を入れる
    # execute store result storage asset:temp 1061.Rotation[0] float 0.01 run random value 0..35999

#say a

# 自身とプレイヤーのy座標を取得する
    execute store result score $1061.MyY Temporary run data get entity @s Pos[1] 100
    execute as @p[tag=1061.Owner] run function api:data_get/pos
    execute store result score $1061.OwnerY Temporary run data get storage api: Pos[1] 100

# 自身とプレイヤーのy座標の差を求める
    scoreboard players operation $1061.MyY Temporary -= $1061.OwnerY Temporary

# 差が-50..100ならRotation[1]は0とする
    execute if score $1061.MyY Temporary matches -50..100 run tp @s ~ ~ ~ ~ 0

# 差が101以上ならOwnerの方を向く
    execute if score $1061.MyY Temporary matches 101.. facing entity @p[tag=1061.Owner] feet run tp @s ~ ~ ~ ~ ~30

# -50未満は考慮しない

# リセット
    scoreboard players reset $1061.MyY Temporary
    scoreboard players reset $1061.OwnerY Temporary
