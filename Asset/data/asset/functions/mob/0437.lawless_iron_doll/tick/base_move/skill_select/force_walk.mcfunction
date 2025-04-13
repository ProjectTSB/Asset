#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/force_walk
#
# これを実行すると歩行になる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/

# 通常行動停止タグ付与
    tag @s add C5.InAction

# お疲れタグを削除
    tag @s remove C5.Exhausted

# スコア調整
    scoreboard players set @s General.Mob.Tick 0

# ダッシュ！
    tag @s add C5.Skill.Walk
