#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/windup
#
# 予備動作
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# 行動をランダムに選択
    # フェイズ 1
        execute if entity @s[scores={RW.Phase=1}] store result score $Random Temporary run random value 0..1
    # フェイズ 2
        execute if entity @s[scores={RW.Phase=2}] store result score $Random Temporary run random value 0..2
    # フェイズ 3
        execute if entity @s[scores={RW.Phase=3}] store result score $Random Temporary run random value 2..3

# タグ付与
    # 1
        execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Thunder.1
    # 2
        execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Thunder.2
    # 3
        execute if score $Random Temporary matches 2 run tag @s add RW.Skill.Thunder.3
    # 4
        execute if score $Random Temporary matches 3 run tag @s add RW.Skill.Thunder.4

# アイテム指定
    item replace entity @e[type=item_display,tag=RW.Model.RightHandItem,sort=nearest,limit=1] container.0 with minecraft:stick{CustomModelData:20075}
