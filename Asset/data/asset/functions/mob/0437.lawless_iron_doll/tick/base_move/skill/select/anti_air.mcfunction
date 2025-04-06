#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/select/anti_air
#
# 対空攻撃を選択してみる
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# 通常行動停止タグ付与
    tag @s add C5.InAction

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick 0
    scoreboard players reset @s C5.ChickenCount

# 落下攻撃
    tag @s add C5.Skill.TeleportSlam
