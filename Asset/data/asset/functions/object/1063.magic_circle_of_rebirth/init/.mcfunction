#> asset:object/1063.magic_circle_of_rebirth/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1063/init

#> private
# @private
    #declare score_holder $TJ.Distance

# 音
    playsound minecraft:entity.blaze.death neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.iron_golem.death neutral @a ~ ~ ~ 1 0

# General.Mob.Tickに代入
    execute store result score @s General.Object.Tick run data get storage asset:context this.ChargeTime -1

# 角度設定
# 暫く魔法陣を表示しないのでマクロ召喚は不要
    data modify entity @s Rotation[0] set from storage asset:context this.Yaw

# ターゲット距離設定
# 出来る限り広範囲を拾えるように、それでいてあまり被らないように
    # Min = MagicID * 2
        execute store result score $TJ.Distance Temporary run data get storage asset:context this.MagicID
        execute store result storage asset:context this.Distance.Min int 1 run scoreboard players operation $TJ.Distance Temporary *= $2 Const
    # Diameter = 20 + MagicID * 10
    # Radius = (20 + MagicID * 10) / 2
        execute store result score $TJ.Distance Temporary run data get storage asset:context this.MagicID
        scoreboard players operation $TJ.Distance Temporary *= $10 Const
        execute store result storage asset:context this.Distance.Diameter int 1 run scoreboard players operation $TJ.Distance Temporary += $20 Const
        execute store result storage asset:context this.Distance.Radius int 1 run scoreboard players operation $TJ.Distance Temporary /= $2 Const

# リセット
    scoreboard players reset $TJ.Distance Temporary
