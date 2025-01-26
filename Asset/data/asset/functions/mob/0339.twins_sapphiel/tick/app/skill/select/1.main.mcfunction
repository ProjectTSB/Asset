#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main
#
# 使用するスキルを決定する
#
# @within function asset:mob/0339.twins_sapphiel/tick/

# 待機通知
    execute unless entity @s[tag=9F.State.Await] run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/2.notify

# デバッグ用強制再生
    # execute if entity @s[tag=!9F.Skill.Hg.Start] run tag @s add 9F.Skill.Hg.Idle
# デバッグ用初期位置移動
    # tp @s -190 104.5 116

# なにも武器を持っていない場合、装備する
    execute if entity @s[tag=!9F.State.Weapon.Hg,tag=!9F.State.Weapon.Sg] run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/3.equip

# 弾がない場合、リロードモーション再生
    execute if entity @s[tag=9F.State.Weapon.Hg,tag=!9F.Temp.Animated] if score @s 9F.BulletCount.Hg matches 16.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/4.reload

# 待機モーション再生
    execute if entity @s[tag=9F.State.Weapon.Hg,tag=!9F.Temp.Animated] run tag @s add 9F.Skill.Hg.Idle

# 終了
    tag @s remove 9F.Temp.Animated
