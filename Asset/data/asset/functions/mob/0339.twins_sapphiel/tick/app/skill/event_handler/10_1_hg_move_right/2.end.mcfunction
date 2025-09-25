#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_1_hg_move_right/2.end
#
# アニメーションのイベントハンドラ Hgステップ・右
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_1_hg_move_right/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Right

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 敵が近くにいる場合、引き撃ち
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] run tag @s add 9F.Skill.Hg.BackShot
# それ以外の場合、射撃
    execute unless entity @s[tag=9F.Skill.Hg.BackShot] run tag @s add 9F.Skill.Hg.Shot
