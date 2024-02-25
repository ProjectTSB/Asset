#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/2.end
#
# アニメーションのイベントハンドラ Kt移動斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.Moveslash

# 特定タイミングでは必ず移動突きを使用
    execute if score @s 9G.ActionCount matches 4 run tag @s add 9G.Skill.Kt.MoveToSpear
    execute if score @s 9G.ActionCount matches 0 run tag @s add 9G.Skill.Kt.MoveToSpear

# それ以外はランダムで真空斬りを使用
    execute unless entity @s[tag=9G.Skill.Kt.MoveToSpear] if predicate lib:random_pass_per/35 run tag @s add 9G.Skill.Kt.MoveToSpear
    execute unless entity @s[tag=9G.Skill.Kt.MoveToSpear] run tag @s add 9G.Skill.Kt.VacuSlash

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
