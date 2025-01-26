#> asset:object/2051.lastboss_platform_attack_red/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2051/init

# 伸びる
#    data merge entity @s {start_interpolation:0,transformation:{scale:[5f,5f,1f]}}
#    data modify entity @s start_interpolation set value 0
#    data modify entity @s transformation.scale set value [5.0f,5.0f,0.01f]

# 演出
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 0.8
