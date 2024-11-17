#> asset:mob/0104.mad_scientist/tick/summon/
#
# ポーションを召喚
#
# @within function asset:mob/0104.mad_scientist/tick/throw_potion

# 実行者はマーカー

# プレイヤーの方を向く
    execute facing entity @p eyes run tp @s ~ ~ ~ ~ ~-5

# 召喚する
    function asset:mob/0104.mad_scientist/tick/summon/summon

# ハード以上なら追加で投げる
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0104.mad_scientist/tick/summon/addition

# 消滅
    kill @s
