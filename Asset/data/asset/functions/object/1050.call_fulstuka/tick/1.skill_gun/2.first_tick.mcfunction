#> asset:object/1050.call_fulstuka/tick/1.skill_gun/2.first_tick
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/1.skill_gun/1.skill_gun

# 腕を変える
    data modify entity @s Pose.RightArm set value [270f,0f,0f]
    data modify entity @s Pose.LeftArm set value [267f,46f,0f]
# 頭も
    item replace entity @s armor.head with stick{CustomModelData:20191}

# 向きかえる
    tp @s ~ ~ ~ facing entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..30,sort=nearest,limit=1]
