#> asset:object/1050.call_fulstuka/tick/reset
#
#
#
# @within function asset:object/1050.call_fulstuka/tick/**

# 腕を戻す
    data modify entity @s Pose.LeftArm set value [0f,0f,340f]
    data modify entity @s Pose.RightArm set value [0f,0f,20f]
# アイテムも戻す
    item replace entity @s weapon.mainhand with stick{CustomModelData:20194}
    item replace entity @s weapon.offhand with stick{CustomModelData:20196}
    item replace entity @s armor.head with stick{CustomModelData:20190}

# スキル消す
    tag @s remove 1050.SkillGun
    tag @s remove 1050.SkillMelee

# スコアを戻す
    scoreboard players set @s 1050.ActionTime -10
