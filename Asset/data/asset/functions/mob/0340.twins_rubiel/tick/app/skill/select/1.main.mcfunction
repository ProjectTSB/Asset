#> asset:mob/0340.twins_rubiel/tick/app/skill/select/1.main
#
# 使用するスキルを決定する
#
# @within function asset:mob/0340.twins_rubiel/tick/

# 待機通知
    execute unless entity @s[tag=9G.State.Await] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/2.notify

# デバッグ用強制再生
    # tag @s add 9G.Skill.Kt.Idle
    # tag @s add 9G.Skill.Sc.Idle
    tag @s add 9G.Skill.Kt.JumpSlash
# デバッグ用初期位置移動
    # tp @s -190 104.5 116

# なにも武器を持っていない場合、装備する
    # execute if entity @s[tag=!9G.State.Weapon.Kt,tag=!9G.State.Weapon.Sc] run function asset:mob/0340.twins_rubiel/tick/app/skill/select/3.equip

# 待機モーション再生
    # execute if entity @s[tag=9G.State.Weapon.Kt,tag=!9G.Temp.Animated] run tag @s add 9G.Skill.Kt.Idle
    # execute if entity @s[tag=9G.State.Weapon.Sc,tag=!9G.Temp.Animated] run tag @s add 9G.Skill.Sc.Idle

# 終了
    tag @s remove 9G.Temp.Animated
