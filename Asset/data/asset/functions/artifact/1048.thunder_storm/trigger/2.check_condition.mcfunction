#> asset:artifact/1048.thunder_storm/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1048.thunder_storm/trigger/1.trigger

#> val
# @private
    #declare score_holder $MPMaxValue
    #declare score_holder $MPValue

# MP減少率を計算
# 最大MPを取得する
    execute store result score $MPMaxValue Temporary run function lib:mp/get_max
# 使用直前のMPを取得する
    execute store result score $MPValue Temporary run function lib:mp/get

# MP現在量を100倍する
    scoreboard players operation $MPValue Temporary *= $100 Const

# 割る
    scoreboard players operation $MPValue Temporary /= $MPMaxValue Temporary
    scoreboard players operation $MPValue Temporary -= $100 Const

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1048.thunder_storm/trigger/3.main

# リセット
    scoreboard players reset $MPValue Temporary
    scoreboard players reset $MPMaxValue Temporary