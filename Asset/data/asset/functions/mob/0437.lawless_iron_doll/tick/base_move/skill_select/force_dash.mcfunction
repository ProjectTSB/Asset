#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/force_dash
#
# これを実行すると技が無理やりダッシュになる。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/


# 通常行動停止タグ付与
    tag @s add C5.InAction

# スコア調整
    scoreboard players set @s General.Mob.Tick 0
    scoreboard players reset @s C5.Count.Move

# ダッシュ！
    tag @s add C5.Skill.Charge
