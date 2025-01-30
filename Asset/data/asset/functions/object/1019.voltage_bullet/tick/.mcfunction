#> asset:object/1019.voltage_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1019/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 13の時、敵の方を向く
    execute if score @s General.Object.Tick matches 13 run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes
    execute if score @s General.Object.Tick matches 13 run particle firework ~ ~ ~ 0 0 0 0.2 10 normal @a
    execute if score @s General.Object.Tick matches 13 run playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.6 2 0

# 6..13でなければ演出とsuper.tick
    execute unless score @s General.Object.Tick matches 6..13 run particle dust 5 20000000 3 1 ~ ~ ~ 0 0 0 0 1
    execute unless score @s General.Object.Tick matches 6..13 at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
