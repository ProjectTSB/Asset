#> asset:mob/0104.mad_scientist/tick/summon/
#
# ポーションを召喚
#
# @within function asset:mob/0104.mad_scientist/tick/throw_potion

# 召喚する
    function asset:mob/0104.mad_scientist/tick/summon/summon

# ハード以上なら追加で投げる
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~30 ~ run function asset:mob/0104.mad_scientist/tick/summon/summon
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~-30 ~ run function asset:mob/0104.mad_scientist/tick/summon/summon
