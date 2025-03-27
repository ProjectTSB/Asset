#> asset:mob/1004.tultaria/tick/base_move/skill_select/tags
#
#
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/skill_select/get.m
#   asset:mob/1004.tultaria/tick/base_move/skill_select/only_one_skill

# デバッグ用処理: 技を名指しで指定
# TODO: ちゃんと消すんだよ！
#    tag @s add RW.Skill.HomingShot
#    return fail

# 技を選択、属性ごとに違う
    # 火
        execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.Meteor
        execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.BlazingCombo
        execute if entity @s[tag=RW.Mode.Fire] if data storage asset:context this.Skill{Get:2} run tag @s add RW.Skill.MoveShot
    # 水
        execute if entity @s[tag=RW.Mode.Water] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.SpinSlash
        execute if entity @s[tag=RW.Mode.Water] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.HomingShot
    # 雷
        execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.AimingLaser
        execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.LightningStab
        execute if entity @s[tag=RW.Mode.Thunder] if data storage asset:context this.Skill{Get:2} run tag @s add RW.Skill.Thunder
    # 光
        execute if entity @s[tag=RW.Mode.Light] if data storage asset:context this.Skill{Get:0} run tag @s add RW.Skill.Starfury
        execute if entity @s[tag=RW.Mode.Light] if data storage asset:context this.Skill{Get:1} run tag @s add RW.Skill.Starfury
        execute if entity @s[tag=RW.Mode.Light] if data storage asset:context this.Skill{Get:2} run tag @s add RW.Skill.Starfury
