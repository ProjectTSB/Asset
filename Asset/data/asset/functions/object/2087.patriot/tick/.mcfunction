#> asset:object/2087.patriot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2087/tick

# Tick加算
scoreboard players add @s General.Object.Tick 1

# 向きをボスへ向ける
execute facing entity @e[tag=Enemy.Boss,tag=!Uninterferable,distance=..128,limit=1] eyes run tp @s ~ ~ ~ ~ ~

#命中判定
execute at @s run function asset:object/super.tick

# 消滅処理
kill @s[scores={General.Object.Tick=1000..}]
