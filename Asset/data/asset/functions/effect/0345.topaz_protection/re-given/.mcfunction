#> asset:effect/0345.topaz_protection/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0345.topaz_protection/_/re-given

#> Private
# @private
    #declare score_holder $MaxBarrier
    #declare score_holder $CurrentBarrier
    #declare score_holder $Add

# バリア量取得
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    function api:entity/player/absorption/get

# 各値取得
    execute store result score $MaxBarrier Temporary run data get storage asset:context this.MaxBarrier 10
    execute store result score $CurrentBarrier Temporary run data get storage api: Return.Absorption.Amount 10
    execute store result score $Add Temporary run data get storage asset:context this.Barrier 10

    #tellraw @a {"storage":"api:","nbt":"Return.Absorption"}

# 計算してフィールドに入れておく
    scoreboard players operation $CurrentBarrier Temporary += $Add Temporary
    execute store result storage asset:context this.Barrier float 0.1 run scoreboard players operation $CurrentBarrier Temporary < $MaxBarrier Temporary

# リセット
    scoreboard players reset $MaxBarrier Temporary
    scoreboard players reset $CurrentBarrier Temporary
    scoreboard players reset $Add Temporary

# バリアを更新
    function asset:effect/0345.topaz_protection/barrier/remove
    function asset:effect/0345.topaz_protection/barrier/add
