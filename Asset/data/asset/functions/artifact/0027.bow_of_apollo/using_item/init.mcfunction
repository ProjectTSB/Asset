#> asset:artifact/0027.bow_of_apollo/using_item/init
# @within function asset:artifact/0027.bow_of_apollo/using_item/3.main

#> private
# @private
    #declare score_holder $Diff

# 現在時刻を取得
    execute store result score $Diff Temporary run data get storage global Time
# 最終使用時刻から2t経過していたらリセット
    scoreboard players operation $Diff Temporary -= @s R.LatestChargeTick
    execute if score $Diff Temporary matches 2.. run tag @s remove R.LockCharge
    execute if score $Diff Temporary matches 2.. run scoreboard players reset @s R.MPCharge
# リセット
    scoreboard players reset $Diff Temporary
