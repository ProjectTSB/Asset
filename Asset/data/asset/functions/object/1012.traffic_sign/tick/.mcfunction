#> asset:object/1012.traffic_sign/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1012/tick

#> Private
# @private
    #declare score_holder $UserID
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 動き
    execute if score @s General.Object.Tick matches 2 run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{translation:[0f,1.5f,0f]}}

# 音
    execute if score @s General.Object.Tick matches 5 run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.5 2
    execute if score @s General.Object.Tick matches 5 run particle item anvil ~ ~0.5 ~ 2 2 2 0.1 60

# VFX
    function asset:object/1012.traffic_sign/tick/vfx

# 使用者取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# 12Tick毎に速度に応じてダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $12 Const
    execute if score $Interval Temporary matches 0 run function api:damage/single_damage_session/open
    execute if score $Interval Temporary matches 0 as @e[type=#lib:living_without_player,tag=!Uninterferable,distance=..4] at @s run function asset:object/1012.traffic_sign/tick/damage/
    execute if score $Interval Temporary matches 0 run function api:damage/single_damage_session/close

# 3.25 秒経過したらキル
    execute if score @s General.Object.Tick matches 66.. run kill @s

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Interval Temporary
    tag @p[tag=Owner] remove Owner
