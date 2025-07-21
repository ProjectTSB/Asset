#> asset:mob/0338.corundum_twins/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/338/tick

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 対象が取れてるか確認
    # execute at @e[type=item_display,tag=9F.Target] run particle flame ~ ~1 ~ 0 2 0 0 5
    # execute at @e[type=item_display,tag=9G.Target] run particle flame ~ ~1 ~ 0 2 0 0 5

# タイマー増加
    execute unless entity @s[tag=9E.State.Phase.Sync] run scoreboard players add @s 9E.SyncTimer 1

# 待機タイマー減少
# 双子が同時に待機している場合のみ増加する
    execute if score @s 9E.IdleTimer matches 1.. run scoreboard players remove @s 9E.IdleTimer 1
    # 一定以上待機タイマーが溜まった場合、二人が何らかの原因で動けなくなっていると判断し、強制的にシンクロ攻撃を発動する
        execute if score @s 9E.IdleTimer matches 60.. run function asset:mob/0338.corundum_twins/tick/app/ai/3.sync
        execute if score @s 9E.IdleTimer matches 60.. run scoreboard players set @s 9E.IdleTimer 0

# シンクロ攻撃発動
    execute if score @s 9E.SyncTimer matches 900.. run tag @s add 9E.State.Phase.Sync.Reserve
    execute if entity @s[tag=9E.State.Phase.Sync.Reserve] if entity @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target,tag=9F.State.Await] if entity @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target,tag=9G.State.Await] run function asset:mob/0338.corundum_twins/tick/app/ai/3.sync

# AI
    execute if entity @s[tag=!9E.State.Phase.Sync.Reserve,tag=!9E.State.Phase.Sync] run function asset:mob/0338.corundum_twins/tick/app/ai/1.main

# スキル
    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 紐づけ終了
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target
