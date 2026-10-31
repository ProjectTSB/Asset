#> asset:artifact/1607.dimension_gate/trigger/rapid_use/check
#
# 連続使用チェック
#
# @within function asset:artifact/1607.dimension_gate/trigger/3.main

#> Private
# @private
    #declare score_holder $GameTime

# 最後に使ってから何秒か判定し、N秒以下ならダメージを受ける
    execute store result score $GameTime Temporary run data get storage global Time
    scoreboard players operation $GameTime Temporary -= @s 18N.LatestUseTick
    execute if score $GameTime Temporary matches ..100 run function asset:artifact/1607.dimension_gate/trigger/rapid_use/self_damage
    scoreboard players reset $GameTime Temporary

# 記録
    execute store result score @s 18N.LatestUseTick run data get storage global Time
