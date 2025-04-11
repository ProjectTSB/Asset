#> asset:mob/0410.heiloang/tick/util/servants_death_offering
#
# 汎用処理 眷属討伐時
#
# @within asset:mob/0410.heiloang/tick/util/servants_death

# 一定時間後にソウルオファリング開始
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 6
    scoreboard players set @s BE.ActCount 21
