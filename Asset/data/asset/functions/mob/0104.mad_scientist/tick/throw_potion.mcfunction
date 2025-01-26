#> asset:mob/0104.mad_scientist/tick/throw_potion
#
# ポーション投げるタイミングの処理
#
# @within function asset:mob/0104.mad_scientist/tick/

# 音
    playsound entity.splash_potion.throw hostile @a ~ ~ ~ 1 0.5 0

# バックステップ
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[gamemode=!spectator] feet rotated ~180 ~-10 run function lib:motion/
    data remove storage lib: Argument

# 薬品投げ
    execute facing entity @p[gamemode=!spectator,distance=..32] feet anchored eyes positioned ^ ^-0.35 ^ rotated ~ ~-10 run function asset:mob/0104.mad_scientist/tick/summon/

# リセット
    function asset:mob/0104.mad_scientist/tick/reset
