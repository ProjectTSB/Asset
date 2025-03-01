#> asset:mob/1004.tultaria/tick/skill/water/sword_rain/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/sword_rain/tick

# 演出
    particle dust 0.8 100000000 100000000 1.5 ~ ~1 ~ 0.3 0.7 0.3 1 50
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 1.5
    playsound ogg:block.respawn_anchor.charge1 hostile @a ~ ~ ~ 2 2
    playsound minecraft:item.trident.riptide_1 hostile @a ~ ~ ~ 2 1

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_left/tween {to_frame:0,duration:1}

# 行動をランダムに選択
    # フェイズ1
        execute if score @s RW.Phase matches 1 store result score $Random Temporary run random value 0..1
    # フェイズ2..
        execute if score @s RW.Phase matches 2.. store result score $Random Temporary run random value 0..2

# デバッグ用、実行する技を確定させる
#    scoreboard players set $Random Temporary 3

# タグ付与
    # 1
        execute if score $Random Temporary matches 0 run tag @s add RW.Skill.SwordRain.1
    # 2
        execute if score $Random Temporary matches 1 run tag @s add RW.Skill.SwordRain.2
    # 3
        execute if score $Random Temporary matches 2 run tag @s add RW.Skill.SwordRain.3
    # 4
        execute if score $Random Temporary matches 3 run tag @s add RW.Skill.SwordRain.4
