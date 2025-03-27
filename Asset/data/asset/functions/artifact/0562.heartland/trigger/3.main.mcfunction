#> asset:artifact/0562.heartland/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0562.heartland/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

#> private
# @private
    #declare score_holder $FM.Temp

# 1秒に1回
    execute store result score $FM.Temp Temporary run data get storage global Time
    scoreboard players operation $FM.Temp Temporary -= @s FM.LatestFullEffect
    execute if score $FM.Temp Temporary matches 20.. as @a[distance=..5] run function asset:artifact/0562.heartland/trigger/foreach
    execute if score $FM.Temp Temporary matches 20.. store result score @s FM.LatestFullEffect run data get storage global Time
    scoreboard players reset $FM.Temp Temporary
