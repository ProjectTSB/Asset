#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/2.end
#
# アニメーションのイベントハンドラ Hgステップ・右左
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_3_hg_move_right2left/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Right2Left

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 敵が近くにいる場合、引き撃ち
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run tag @s add 9F.Skill.Hg.BackShot
# それ以外の場合、ライダーキック
    execute unless entity @s[tag=9F.Skill.Hg.BackShot] run tag @s add 9F.Skill.Hg.Riderkick
