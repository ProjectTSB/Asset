#> asset:mob/0338.corundum_twins/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0338.corundum_twins/tick/1.trigger

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 対象が取れてるか確認
    # execute at @e[type=item_display,tag=9F.Target] run particle flame ~ ~1 ~ 0 2 0 0 5
    # execute at @e[type=item_display,tag=9G.Target] run particle flame ~ ~1 ~ 0 2 0 0 5

# スキル
    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 紐づけ終了
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target
