#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/1.main
#
# スキルイベントハンドラ 同時怯み
# 同時に怯んだ場合の処理
# 双子同士で激突した場合、気絶してスタン時間が増加する
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 激突検知
    execute if score @s 9E.SkillTimer matches 1..20 at @e[type=wither_skeleton,tag=9F.Target] if entity @e[type=wither_skeleton,tag=9G.Target,distance=..1.6] run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/3.stun_start

# 終了
    execute if score @s 9E.SkillTimer matches 20.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/2.end
