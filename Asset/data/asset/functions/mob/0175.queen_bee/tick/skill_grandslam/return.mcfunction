#> asset:mob/0175.queen_bee/tick/skill_grandslam/return
#
#
#
# @within function
#    asset:mob/0175.queen_bee/tick/skill_grandslam/main
#    asset:mob/0175.queen_bee/tick/skill_grandslam/block_hit

# モデル戻す
    item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
    data modify entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.Head set value [0f,0f,0f]
# リセット処理
    tag @s remove 4V.SkillGrandSlam
    scoreboard players set @s 4V.Tick -50
