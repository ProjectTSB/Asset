#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_4_hg_move_left2right/2.end
#
# アニメーションのイベントハンドラ Hgステップ・左右
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_4_hg_move_left2right/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Left2Right

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 敵が近くにいる場合、引き撃ち
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run tag @s add 9F.Skill.Hg.BackShot
# それ以外の場合、ライダーキック
    execute unless entity @s[tag=9F.Skill.Hg.BackShot] run tag @s add 9F.Skill.Hg.Riderkick
