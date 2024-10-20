#> asset:mob/0284.lexiel/tick/skill/fireball/
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill_active

# ポーズ
    execute if score @s 7W.Tick matches 0 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/skill/fireball/first

# ふる
    execute if score @s 7W.Tick matches 10 run data modify entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.LeftArm set value [342f,217f,0f]
    execute if score @s 7W.Tick matches 10 run data modify entity @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [326f,0f,324f]
    execute if score @s 7W.Tick matches 10 run execute as @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] run tp @s ~ ~ ~ ~-50 ~

# たまだす
    execute if score @s 7W.Tick matches 10 run function asset:mob/0284.lexiel/tick/skill/fireball/summon
    execute if score @s 7W.Tick matches 15 rotated ~20 ~ run function asset:mob/0284.lexiel/tick/skill/fireball/summon
    execute if score @s 7W.Tick matches 20 rotated ~-20 ~ run function asset:mob/0284.lexiel/tick/skill/fireball/summon

# リセット
    execute if score @s 7W.Tick matches 50 run function asset:mob/0284.lexiel/tick/reset
