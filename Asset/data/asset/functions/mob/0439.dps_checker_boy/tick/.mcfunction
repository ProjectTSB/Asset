#> asset:mob/0439.dps_checker_boy/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/439/tick

execute if data storage asset:context this{Cooldown:0,IsAttacked:true} run function asset:mob/0439.dps_checker_boy/tick/dps_check/
execute unless data storage asset:context this{Cooldown:0} run function asset:mob/0439.dps_checker_boy/tick/cooldown/

# 付近に誰もいなかったら消える
    execute unless entity @a[distance=..24] run function api:mob/remove

# 角度を固定してしまう
    data modify entity @s Rotation[1] set value 0.0f
