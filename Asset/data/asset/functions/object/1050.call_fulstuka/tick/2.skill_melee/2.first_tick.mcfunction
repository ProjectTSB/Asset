#> asset:object/1050.call_fulstuka/tick/2.skill_melee/2.first_tick
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/2.skill_melee/1.skill_melee

# 武器変更
    item replace entity @s weapon.mainhand with stick{CustomModelData:20195}
# 腕変更
    data modify entity @s Pose.RightArm set value [38f,197f,296f]
    data modify entity @s Pose.LeftArm set value [48f,16f,0f]

# 敵の付近にテレポート
    execute at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..20,sort=nearest,limit=1] positioned ~ ~0.5 ~ run function asset:object/1050.call_fulstuka/tick/spread_teleport

    execute at @s run tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1]
