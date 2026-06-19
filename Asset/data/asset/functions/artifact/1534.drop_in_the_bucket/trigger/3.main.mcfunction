#> asset:artifact/1534.drop_in_the_bucket/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1534.drop_in_the_bucket/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

#> Private
# @private
    #declare score_holder $Count

# 個数取得
    execute store result score $Count Temporary if data storage asset:context Items.hotbar[{tag:{TSB:{ID:1534}}}]
    scoreboard players operation $Count Temporary < $3 Const
    
# 個数の値だけMPを回復する
    execute store result storage api: Argument.Fluctuation int 1 run scoreboard players get $Count Temporary
    function api:mp/fluctuation

# vfx(装備個数の分だけパーティクルの表示量が増える)
    execute store result storage asset:temp 16M.count int 1 run scoreboard players get $Count Temporary
    function asset:artifact/1534.drop_in_the_bucket/trigger/vfx with storage asset:temp 16M
    data remove storage asset:temp 16M

# リセット
    scoreboard players reset $Count Temporary
