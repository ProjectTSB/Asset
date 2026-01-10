#> asset:object/1019.voltage_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1019/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# MovePerStepが0なら元に戻しておく
    execute if data storage asset:context this{MovePerStep:0} run data modify storage asset:context this.MovePerStep set from storage asset:context this.SavedMPS

# ..5の時、前方にブロックがあればMovePerStepを0に
# 飛翔体抽象の実装の都合上、hit_blockメソッドでMovePerStepを0にしても進んでいってしまうため？
    execute if score @s General.Object.Tick matches ..5 unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context this.MovePerStep set value 0

# 13の時、敵の方を向く
    execute if score @s General.Object.Tick matches 13 run tp @s ~ ~ ~ facing entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes
    execute if score @s General.Object.Tick matches 13 run particle firework ~ ~ ~ 0 0 0 0.2 10 normal @a
    execute if score @s General.Object.Tick matches 13 run playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.6 2 0

# 6..13でなければ演出とsuper.tick
    execute unless score @s General.Object.Tick matches 6..13 run particle dust 5 20000000 3 1 ~ ~ ~ 0 0 0 0 1
    execute unless score @s General.Object.Tick matches 6..13 at @s run function asset:object/super.tick
