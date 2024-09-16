#> asset:artifact/1057.great_demon_head/trigger/tick/2.heal
#
# 再生付与
#
# @within function asset:artifact/1057.great_demon_head/trigger/tick/1.trigger

#> val
# @private
    #declare score_holder $TD.Temp

# ゲーム時間取得
    execute store result score $TD.Temp Temporary run time query gametime
    scoreboard players operation $TD.Temp Temporary %= $40 Const

# 再生Ⅲ付与
    execute if score $TD.Temp Temporary matches 0 run effect give @s regeneration 3 2 true

# リセット
    scoreboard players reset $TD.Temp Temporary