#> asset:artifact/1620.satelite_drop/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1620.satelite_drop/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 既にチャージ済みでないならEffect395を付与
    function asset:artifact/1620.satelite_drop/trigger/charge

# 演出
    playsound entity.boat.paddle_water player @a ~ ~ ~ 2 0.5
    playsound block.conduit.activate player @a ~ ~ ~ 1 1.5
