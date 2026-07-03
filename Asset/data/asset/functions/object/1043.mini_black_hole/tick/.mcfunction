#> asset:object/1043.mini_black_hole/tick/
#
#
#
# @within function asset:object/alias/1043/tick

#> Val
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute store result storage asset:temp Args.Num int 1 run scoreboard players get @s General.Object.Tick
    function asset:object/1043.mini_black_hole/tick/vfx/m with storage asset:temp Args
    data remove storage asset:temp Args

# 4tick毎にダメージ
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run function asset:object/1043.mini_black_hole/tick/damage/

# 音（常時）
    execute if score $Interval Temporary matches 0 run playsound entity.enderman.teleport neutral @a[distance=..32] ~ ~ ~ 1 0

# 敵吸い込み
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Immovable,tag=!Uninterferable,distance=..15] run function asset:object/1043.mini_black_hole/tick/enemy_suction

# リセット
    scoreboard players reset $Interval Temporary

# 消滅
    execute if score @s General.Object.Tick matches 80.. run kill @s
