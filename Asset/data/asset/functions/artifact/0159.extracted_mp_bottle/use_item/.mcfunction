#> asset:artifact/0159.extracted_mp_bottle/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/159/use_item/

#> Private
# @private
    #declare score_holder $Random

# ここから先は神器側の効果の処理を書く
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $6 Const
    scoreboard players set $Fluctuation Lib 30
    scoreboard players operation $Fluctuation Lib -= $Random Temporary
    tellraw @s ["[ ",{"score": {"name": "$Random","objective": "Temporary"},"color": "light_purple"},{"text": " ] MPが天使の取り分となり、[ ","color": "white"},{"score": {"name": "$Fluctuation","objective": "Lib"},"color": "green"},{"text": " ] MPが回復した！","color": "white"}]
    function lib:mp/fluctuation
    scoreboard players reset $Random
    execute anchored eyes run particle dust 1 0.31 0.91 0.3 ^ ^ ^ 0.4 0.4 0.4 0 20 normal @s
