#> asset:object/1066.knife/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1066/tick

execute if entity @s[tag=1066.API.TimeStop] run function asset:object/1066.knife/tick/check_owner.m with storage asset:context this
execute if entity @s[tag=!1066.API.TimeStop] run function asset:object/super.tick
