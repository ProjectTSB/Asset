#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_4_stun/1.main
#
# スキルイベントハンドラ スタン
# 気絶する
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

# 気絶させる
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/05_stun/1.start
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/05_stun/1.start

# 終了
    execute if score @s 9E.SkillTimer matches 20.. run function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_4_stun/2.end
