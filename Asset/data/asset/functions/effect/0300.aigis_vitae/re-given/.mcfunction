#> asset:effect/0300.aigis_vitae/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0300.aigis_vitae/_/re-given

# バリアを取得
    data modify storage api: Argument.UUID set value [I;1,3,300,0]
    function api:entity/player/absorption/get
    execute store result score $8C.Temp1 Temporary run data get storage api: Return.Absorption.Amount 100
# 消費分を計算
    execute store result score $8C.Temp2 Temporary run data get storage asset:context PreviousField.Barrier 100
    scoreboard players operation $8C.Temp2 Temporary -= $8C.Temp1 Temporary
# 追加するバリア
    execute store result score $8C.Temp1 Temporary run data get storage asset:context this.Barrier 100
    scoreboard players operation $8C.Temp1 Temporary -= $8C.Temp2 Temporary

# $BC.Temp1 <= 0: 削除
    data modify storage api: Argument.UUID set value [I;1,3,300,0]
    function api:entity/player/absorption/remove
    execute if score $8C.Temp1 Temporary matches ..0 run data modify storage asset:context Duration set value -1
# $BC.Temp1 > 0: 再付与
    execute if score $8C.Temp1 Temporary matches 1.. run function asset:effect/0300.aigis_vitae/re-given/add

# リセット
    scoreboard players reset $8C.Temp1 Temporary
    scoreboard players reset $8C.Temp2 Temporary
