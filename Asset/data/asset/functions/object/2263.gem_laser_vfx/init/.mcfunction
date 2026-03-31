#> asset:object/2263.gem_laser_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2263/init

# 左右
    execute if data storage asset:context this{IsRight:true} run tag @s add 2263.IsRight

# 射撃系演出用
    execute if data storage asset:context this{IsShot:true} run tag @s add 2263.IsShot
    execute if data storage asset:context this{IsUpperShot:true} run tag @s add 2263.IsUpperShot
