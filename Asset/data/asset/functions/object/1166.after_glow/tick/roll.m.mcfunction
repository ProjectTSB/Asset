#> asset:object/1166.after_glow/tick/roll.m
#
# 成功か失敗かの判定
#
# @within asset:object/1166.after_glow/tick/check_hotbar
#> Private
# @private
    #declare tag 14E.Success

# 抽選(成功ならタグ)
    $execute store result score @s Temporary run random value 1..$(Chance)
    execute if score @s Temporary matches 1 run tag @s add 14E.Success

# スコアのリセット
    scoreboard players reset @s Temporary
