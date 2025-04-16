#> asset:mob/0380.haruclaire_v3/tick/event/ice_laser/turn
#
# アイスレーザー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_laser/

# ターゲットが左右どちらにいるか確認
    execute facing entity @p[tag=AK.MainTarget,distance=..80] feet rotated ~ 0 positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add AK.Temp.Right

# 回転
    execute unless entity @s[tag=AK.Temp.Right] run tp @s ~ ~ ~ ~-0.3 ~
    execute if entity @s[tag=AK.Temp.Right] run tp @s ~ ~ ~ ~0.3 ~

# レーザーの角度と位置変更
    execute unless entity @s[tag=AK.Temp.Right] positioned ^ ^0.8 ^1.6 as @e[type=item_display,tag=2155.Object,sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~-0.3 ~
    execute if entity @s[tag=AK.Temp.Right] positioned ^ ^0.8 ^1.6 as @e[type=item_display,tag=2155.Object,sort=nearest,limit=1] rotated as @s run tp @s ~ ~ ~ ~0.3 ~

# 終了
    tag @s remove AK.Temp.Right
