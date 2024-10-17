#> asset:mob/1004.tultaria/tick/base_move/skill_select/get.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_select/roll.m

# Skill.Listの要素を番号で指定
    $data modify storage asset:context this.Skill.Get set from storage asset:context this.Skill.List[-$(Roll)]

# 技を選択、属性ごとに違う
    # 火
        execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.Meteor
        #execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.
        #execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:2} run tag @s add RW.Skill.
    # 水
        execute if entity @s[tag=RW.Mode.Water] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.SpreadShot
        execute if entity @s[tag=RW.Mode.Water] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.HomingShot
    # 雷
        execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.AimingLaser
        execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.Thunder
        #execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:2} run tag @s add RW.Skill.


# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add RW.Skill.

# リセット
    data remove storage asset:context this.Skill.Roll
    data remove storage asset:context this.Skill.Get
