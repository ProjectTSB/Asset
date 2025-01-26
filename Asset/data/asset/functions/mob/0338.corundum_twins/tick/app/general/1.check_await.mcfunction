#> asset:mob/0338.corundum_twins/tick/app/general/1.check_await
#
# 共通処理 双子がAwaitになるまで待機する
#
# @within function asset:mob/0338.corundum_twins/tick/**

# タグ消去
    execute if entity @s[tag=9E.State.GetAwait.Sapphiel,tag=9E.State.GetAwait.Rubiel] run tag @s remove 9E.State.Await
    execute unless entity @s[tag=9E.State.Await] run tag @s remove 9E.State.GetAwait.Sapphiel
    execute unless entity @s[tag=9E.State.Await] run tag @s remove 9E.State.GetAwait.Rubiel

# タイマー増加
    execute unless entity @s[tag=9E.State.Await] run scoreboard players add @s 9E.SkillTimer 1
