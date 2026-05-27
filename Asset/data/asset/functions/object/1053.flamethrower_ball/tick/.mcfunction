#> asset:object/1053.flamethrower_ball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1053/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle flame ~ ~ ~ 0 0 0 0 0

# 雪玉がいない場合ヒット
    execute unless predicate lib:is_vehicle run function asset:object/1053.flamethrower_ball/tick/hit

# 消滅処理
    execute if score @s General.Object.Tick matches 40.. run kill @e[type=snowball,tag=1053.Snowball,distance=..1,sort=nearest,limit=1]
    kill @s[scores={General.Object.Tick=40..}]
