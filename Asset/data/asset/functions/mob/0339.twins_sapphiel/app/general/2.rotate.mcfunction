#> asset:mob/0339.twins_sapphiel/app/general/2.rotate
#
# 汎用処理 なめらかに対象の方を向く
#
# @within asset:mob/0339.twins_sapphiel/tick/**

# 滑らかに回転
    execute at @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
