#> asset:artifact/0159.extracted_mp_bottle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0159.extracted_mp_bottle/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $Fluctuation

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# 演出
    execute anchored eyes run particle dust 1 0.31 0.91 0.3 ^ ^ ^ 0.4 0.4 0.4 0 20 normal @s
# MP回復量を計算
    execute store result score $Random Temporary run random value 0..5
    scoreboard players set $Fluctuation Temporary 30
    execute store result storage api: Argument.Fluctuation int 1 run scoreboard players operation $Fluctuation Temporary -= $Random Temporary

# 通知
    tellraw @s ["[ ",{"score": {"name": "$Random","objective": "Temporary"},"color": "light_purple"},{"text": " ] MPが天使の取り分となり、[ ","color": "white"},{"storage":"api:","nbt":"Argument.Fluctuation","color": "green"},{"text": " ] MPが回復した！","color": "white"}]

# 回復
    function api:mp/fluctuation

# リセット
    scoreboard players reset $Random
    scoreboard players reset $Fluctuation
