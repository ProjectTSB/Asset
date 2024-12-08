#> asset:mob/0104.mad_scientist/tick/reset
#
# リセット
#
# @within function asset:mob/0104.mad_scientist/tick/throw_potion

# スコアリセット
    scoreboard players set @s General.Mob.Tick -100

# 持つポーションの色を再度設定
    function asset:mob/0104.mad_scientist/tick/random_element_select
