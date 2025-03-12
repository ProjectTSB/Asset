#> asset:mob/0365.frestchika/tick/base_move/skill/select/cycle_reset
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/in_hostile

# 演出

# 通常行動停止タグ付与
    tag @s add A5.InAction

# タグ付与
#    tag @s add 1024.Skill.Landing

# スキルリストを再生
    data modify storage asset:context this.Skill.List set value [0,1,2]

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -20
