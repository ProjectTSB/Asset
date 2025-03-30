#> asset:mob/0365.frestchika/tick/base_move/skill/select/cycle_reset
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/


# タグ削除
    tag @s remove A5.CycleReset

# 第2形態だとダウンする
    tag @s[scores={A5.Phase=2..}] add A5.InAction
    tag @s[scores={A5.Phase=2..}] add A5.Skill.OverHeat

# スキルリストを再生
    data modify storage asset:context this.Skill.List set value [0,1,2,3,4,5]

# スコアを0に戻す
    scoreboard players set @s General.Mob.Tick -10
