#> asset:artifact/0159.extracted_mp_bottle/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/159/use_item/

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $Fluctuation

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
