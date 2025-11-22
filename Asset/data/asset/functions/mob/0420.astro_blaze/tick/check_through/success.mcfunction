#> asset:mob/0420.astro_blaze/tick/check_through/success
#
# 成功
#
# @within function asset:mob/0420.astro_blaze/tick/check_through/recursive

# 成功判定
    data modify storage asset:temp Success set value true

# 自身のUserIDをFieldへ入れておく
    execute store result storage asset:context this.TargetID int 1 run scoreboard players get @s UserID
