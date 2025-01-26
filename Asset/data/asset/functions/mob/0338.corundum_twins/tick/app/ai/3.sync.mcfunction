#> asset:mob/0338.corundum_twins/tick/app/ai/3.sync
#
# 双子に指示を出す シンクロ攻撃
#
# @within function asset:mob/0338.corundum_twins/tick/

# カウンター増加
    scoreboard players add @s 9E.ActionCount 1

# 交差攻撃
    execute if score @s 9E.ActionCount matches ..1 run function asset:mob/0338.corundum_twins/tick/app/skill/start/1.crossfire
# ぶん投げ
    execute if score @s 9E.ActionCount matches 2 run function asset:mob/0338.corundum_twins/tick/app/skill/start/2.throw
# ランチャー
    execute if score @s 9E.ActionCount matches 3.. run function asset:mob/0338.corundum_twins/tick/app/skill/start/3.launcher

# 終了
    execute if score @s 9E.ActionCount matches 3.. run scoreboard players set @s 9E.ActionCount 0
    scoreboard players set @s 9E.SyncTimer 0
    tag @s remove 9E.State.Phase.Sync.Reserve
    tag @s add 9E.State.Phase.Sync
