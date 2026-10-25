#> asset:object/1100.conviction_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1100/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    particle dust 0.455 0.027 0.027 2 ~ ~ ~ 0.1 0.1 0.1 5 2 force

# 周囲に敵がいなければ、MovePerStepを0.25に戻す
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run data modify storage asset:context this.MovePerStep set value 0.25

# 周囲に敵がいれば追尾 & MovePerStepを0.5に変更
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run data modify storage asset:context this.MovePerStep set value 0.5

# 前方に壁があればMovePerStepを0に変更
    execute at @s run function asset:object/1100.conviction_shot/tick/check_forward_block with storage asset:context this

# 4Tickごとにダメージ間隔用Tagを付与
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run tag @s add 1100.Damage
    scoreboard players reset $Interval Temporary

# super.tick
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=1100.Damage] remove 1100.Damage
