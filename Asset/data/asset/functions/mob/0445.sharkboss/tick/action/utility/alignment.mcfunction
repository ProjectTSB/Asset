#> asset:mob/0445.sharkboss/tick/action/utility/alignment
#
# mobがターゲットに軸合わせをする処理
#
# @within function asset:mob/0445.sharkboss/tick/action**


execute facing entity @a[tag=CD.Target,sort=nearest,limit=1] feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^2 facing entity @s feet facing ^ ^ ^-1 positioned as @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~
