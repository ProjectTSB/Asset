#> asset:mob/0104.mad_scientist/tick/summon/addition
#
# 追加でポーション投げる
#
# @within function asset:mob/0104.mad_scientist/tick/summon/

# 右を向く
    execute at @s run tp @s ~ ~ ~ ~30 ~

# 召喚する
    function asset:mob/0104.mad_scientist/tick/summon/summon

# 左を向く
    execute at @s run tp @s ~ ~ ~ ~-60 ~

# 召喚する
    function asset:mob/0104.mad_scientist/tick/summon/summon
