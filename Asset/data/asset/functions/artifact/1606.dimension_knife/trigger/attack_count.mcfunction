#> asset:artifact/1606.dimension_knife/trigger/attack_count
#
#
#
# @within function asset:artifact/1606.dimension_knife/trigger/3.main

#> Private
# @private
    #declare score_holder $GameTime

# 最後に攻撃してからNtick経過してたらAttackCountをリセット
    execute store result score $GameTime Temporary run data get storage global Time
    scoreboard players operation $GameTime Temporary -= @s 18M.LatestAttackTick
    execute if score $GameTime Temporary matches 60.. run scoreboard players reset @s 18M.AttackCount
    scoreboard players reset $GameTime Temporary

# AttackCount +1
    scoreboard players add @s 18M.AttackCount 1

# 更新
    execute store result score @s 18M.LatestAttackTick run data get storage global Time
