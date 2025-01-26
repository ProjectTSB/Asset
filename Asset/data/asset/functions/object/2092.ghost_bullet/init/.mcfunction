#> asset:object/2092.ghost_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2092/init

# 演出
    particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.03 20
    playsound block.sculk_sensor.clicking neutral @a ~ ~ ~ 2 0
    playsound block.fire.ambient neutral @a ~ ~ ~ 2 0.8

# StartDelay
    execute store result score @s General.Object.Tick run data get storage asset:context this.StartDelay -1

# TargetID
    execute store result score @s 2092.TargetID run data get storage asset:context this.TargetID

# 継承
    function asset:object/super.init
