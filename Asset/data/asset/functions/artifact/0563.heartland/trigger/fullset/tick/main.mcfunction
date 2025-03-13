#> asset:artifact/0563.heartland/trigger/fullset/tick/main
#
# フルセット時の効果
#
# @within function asset:artifact/0563.heartland/trigger/fullset/tick/trigger

#> private
# @private
    #declare score_holder $FN.Temp

# 1秒に1回
    execute store result score $FN.Temp Temporary run data get storage global Time
    scoreboard players operation $FN.Temp Temporary -= @s FN.LatestFullEffect
    execute if score $FN.Temp Temporary matches 20.. as @a[distance=..5] run function asset:artifact/0563.heartland/trigger/fullset/tick/foreach
    execute if score $FN.Temp Temporary matches 20.. store result score @s FN.LatestFullEffect run data get storage global Time
    scoreboard players reset $FN.Temp Temporary
