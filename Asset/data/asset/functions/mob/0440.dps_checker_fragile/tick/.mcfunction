#> asset:mob/0440.dps_checker_fragile/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/440/tick

# 付近に誰もいなかったら消える
    execute unless entity @a[distance=..128] run function api:mob/remove
