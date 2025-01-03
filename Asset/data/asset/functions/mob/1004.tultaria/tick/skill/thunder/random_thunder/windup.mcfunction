#> asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/windup
#
# 予備動作
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/random_thunder/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}

# 行動をランダムに選択
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # フェイズ1
        scoreboard players operation $Random Temporary %= $2 Const

# デバッグ用、実行する技を確定させる
    scoreboard players set $Random Temporary 3

# タグ付与
    # 1
        execute if score $Random Temporary matches 0 run tag @s add RW.Skill.Thunder.1
    # 2
        execute if score $Random Temporary matches 1 run tag @s add RW.Skill.Thunder.2
    # 3
        execute if score $Random Temporary matches 2 run tag @s add RW.Skill.Thunder.3
    # 4
        execute if score $Random Temporary matches 3 run tag @s add RW.Skill.Thunder.4
