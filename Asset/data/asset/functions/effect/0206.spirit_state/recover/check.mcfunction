#> asset:effect/0206.spirit_state/recover/check
# @within function asset:effect/0206.spirit_state/recover/

#> Private
# @private
    #declare score_holder $5Q.Prev
    #declare score_holder $5Q.X
    #declare score_holder $5Q.Y
    #declare score_holder $5Q.Z

# 今の座標を拾う
    function api:data_get/dimension
    execute store success score $5Q.Failed Temporary run data modify storage asset:context this.PrevDim set from storage api: Dimension
    function api:data_get/pos
    data modify storage asset:context this.Pos set from storage api: Pos

# 距離の絶対値の2乗を計算する
    # x座標
        execute store result score $5Q.X Temporary run data get storage asset:context this.Pos[0] 10
        execute store result score $5Q.Prev Temporary run data get storage asset:context this.PrevPos[0] 10
        scoreboard players operation $5Q.X Temporary -= $5Q.Prev Temporary
        scoreboard players operation $5Q.X Temporary *= $5Q.X Temporary
    # y座標
        execute store result score $5Q.Y Temporary run data get storage asset:context this.Pos[1] 10
        execute store result score $5Q.Prev Temporary run data get storage asset:context this.PrevPos[1] 10
        scoreboard players operation $5Q.Y Temporary -= $5Q.Prev Temporary
        scoreboard players operation $5Q.Y Temporary *= $5Q.Y Temporary
    # z座標
        execute store result score $5Q.Z Temporary run data get storage asset:context this.Pos[2] 10
        execute store result score $5Q.Prev Temporary run data get storage asset:context this.PrevPos[2] 10
        scoreboard players operation $5Q.Z Temporary -= $5Q.Prev Temporary
        scoreboard players operation $5Q.Z Temporary *= $5Q.Z Temporary
    # 合算
        scoreboard players operation $5Q.X Temporary += $5Q.Y Temporary
        scoreboard players operation $5Q.X Temporary += $5Q.Z Temporary
# 距離が100m以上なら帰らぬ人になる
    execute if score $5Q.X Temporary matches 1000000.. run scoreboard players set $5Q.Failed Temporary 1

# リセット
    data remove storage asset:context this.Pos
    scoreboard players reset $5Q.Prev Temporary
    scoreboard players reset $5Q.X Temporary
    scoreboard players reset $5Q.Y Temporary
    scoreboard players reset $5Q.Z Temporary
