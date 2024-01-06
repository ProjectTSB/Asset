#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main
#
# 使用するスキルを決定する
#
# @within function asset:mob/0339.twins_sapphiel/tick/2.tick

# デバッグ用強制再生
    tag @s add 9F.Skill.Hg.Idle
# デバッグ用初期位置移動
    # tp @s -190 104.5 116

# Await時はつねに待機モーション再生
    # execute if entity @s[tag=9F.State.Await] run tag @s add 9F.Skill.Hg.Idle
