#> asset:mob/0058.divide_haze/tick/mob_count
#
#
#
# @within function asset:mob/0058.divide_haze/tick/

#> Private
# @private
    #declare score_holder $MobCount

# 数をチェック
    execute store result score $MobCount Temporary if entity @e[type=skeleton,scores={MobID=58},distance=..32,limit=3]

# 2体以下なら数を増やす
    execute if score $MobCount Temporary matches ..2 run function asset:mob/0058.divide_haze/tick/divide

# スコアリセット
    scoreboard players reset @s General.Mob.Tick
    scoreboard players reset $MobCount Temporary
