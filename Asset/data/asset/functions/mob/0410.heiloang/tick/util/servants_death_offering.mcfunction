#> asset:mob/0410.heiloang/tick/util/servants_death_offering
#
# 汎用処理 眷属討伐時
#
# @within asset:mob/0410.heiloang/tick/util/servants_death

# 一定時間後にソウルオファリング開始
    function asset:mob/0410.heiloang/tick/act/
    scoreboard players set @s BE.ActCount 20
