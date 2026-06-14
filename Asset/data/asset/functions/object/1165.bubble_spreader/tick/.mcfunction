#> asset:object/1165.bubble_spreader/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1165/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 16..の時、常時追尾
    execute if score @s General.Object.Tick matches 16.. run tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes

# super.tick
    function asset:object/super.tick
