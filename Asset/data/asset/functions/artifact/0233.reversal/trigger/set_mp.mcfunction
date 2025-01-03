#> asset:artifact/0233.reversal/trigger/set_mp
#
#
#
# @within function asset:artifact/0233.reversal/trigger/3.main

#> private
# @private
    #declare score_holder $6H.MP
    #declare score_holder $6H.SetMP

# MPを取得
    function api:mp/get_current
    function api:mp/get_max
# 変動量を計算
    execute store result score $6H.MP Temporary run data get storage api: Return.CurrentMP
    execute store result score $6H.SetMP Temporary run data get storage api: Return.MaxMP
    execute store result storage api: Argument.MP int 1 run scoreboard players operation $6H.SetMP Temporary -= $6H.MP Temporary
# MPをセット
    function api:mp/set

# 後処理
    scoreboard players reset $6H.MP Temporary
    scoreboard players reset $6H.SetMP Temporary
