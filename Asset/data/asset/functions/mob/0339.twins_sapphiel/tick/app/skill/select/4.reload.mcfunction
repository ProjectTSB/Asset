#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/4.reload
#
# 弾を補充する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main

# 敵が一定距離以内にいる場合はバックステップを挟む
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..8] run tag @s add 9F.Skill.Hg.Step.Back

# それ以外の場合は直接リロードする
    execute if entity @s[tag=!9F.Skill.Hg.Step.Back] run tag @s add 9F.Skill.Hg.Reload

# 終了
    tag @s add 9F.Temp.Animated
