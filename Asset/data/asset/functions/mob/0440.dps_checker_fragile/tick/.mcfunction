#> asset:mob/0440.dps_checker_fragile/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/440/tick

# 付近に誰もいなかったら消える
    execute unless entity @a[distance=..128] run function api:mob/remove

# ゆっくりとこっちを向く
    execute on passengers if entity @s[type=item_display] facing entity @p[gamemode=!spectator,distance=..8] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-3 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ 0
