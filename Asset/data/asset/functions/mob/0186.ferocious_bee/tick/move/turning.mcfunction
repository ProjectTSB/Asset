#> asset:mob/0186.ferocious_bee/tick/move/turning
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# 追尾
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~

# 移動
    function asset:mob/0186.ferocious_bee/tick/move/
