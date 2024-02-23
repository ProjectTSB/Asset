#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/2.end
#
# アニメーションのイベントハンドラ Hgステップ・後
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/10_5_hg_move_back/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Step.Back

# 弾数が一定以下の場合、リロード
    execute if score @s 9F.BulletCount.Hg matches 16.. run tag @s add 9F.Skill.Hg.Reload

# タイマーリセット
    execute if entity @s[tag=9F.Skill.Hg.Reload] run scoreboard players set @s 9F.AnimationTimer 0
    execute if entity @s[tag=!9F.Skill.Hg.Reload] run scoreboard players set @s 9F.AnimationTimer -1
