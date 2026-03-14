#> asset:object/1078.gun/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1078/tick

#> Private
# @private
#declare score_holder $TickInterval

# 敵を狙う
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] at @e[tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1] positioned ~ ~1 ~ facing entity @s eyes positioned ^ ^ ^100 rotated as @s positioned ^ ^ ^-300 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 敵いないとプレイヤー見る
    execute unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Tick % 20 == 0 で発射
    scoreboard players operation $TickInterval Temporary = @s General.Object.Tick
    scoreboard players operation $TickInterval Temporary %= $20 Const
    execute if score $TickInterval Temporary matches 0 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30] run function asset:object/1078.gun/tick/shot/

# 消滅処理
    execute if score @s General.Object.Tick matches 200.. run kill @s

# リセット
    scoreboard players reset $TickInterval Temporary
