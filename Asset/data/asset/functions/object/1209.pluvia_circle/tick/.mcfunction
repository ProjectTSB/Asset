#> asset:object/1209.pluvia_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1209/tick

# Tick加算
   scoreboard players add @s General.Object.Tick 1

# ある程度までは追尾させる
    execute if score @s General.Object.Tick matches ..3 if data storage asset:context this.MobUUID run function asset:object/1209.pluvia_circle/tick/facing.m with storage asset:context this

# 召喚
    execute if score @s General.Object.Tick matches 4 at @s run function asset:object/1209.pluvia_circle/tick/laser/

# super.tick
    execute at @s run function asset:object/super.tick
