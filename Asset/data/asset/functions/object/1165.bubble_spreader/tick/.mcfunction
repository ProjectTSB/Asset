#> asset:object/1165.bubble_spreader/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1165/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# MovePerStepが0なら元に戻しておく
    execute if data storage asset:context this{MovePerStep:0} run data modify storage asset:context this.MovePerStep set from storage asset:context this.SavedMPS

# ..15の時、前方にブロックがあればMovePerStepを0に
# 飛翔体抽象の実装の都合上、hit_blockメソッドでMovePerStepを0にしても進んでいってしまうため？
    execute if score @s General.Object.Tick matches ..15 unless block ^ ^ ^0.5 #lib:no_collision/ run data modify storage asset:context this.MovePerStep set value 0

# 16..の時、常時追尾
    execute if score @s General.Object.Tick matches 16.. run tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] eyes

# super.tick
    function asset:object/super.tick
