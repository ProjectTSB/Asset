#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/01_crossfire/1.main
#
# スキルイベントハンドラ 交差攻撃
# 二人で相手を囲うように移動しつつ、交互に攻撃を行う
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/1.switch

## 武器召喚
# 双子に指示

# 終了まで待機

## 移動射撃
# 双子に指示
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] at @s run function asset:mob/0339.twins_sapphiel/app/call_from_root/skill/01_crossfire/1.start
    execute if score @s 9E.SkillTimer matches 1 as @e[type=wither_skeleton,tag=9G.Root,tag=9G.Target] at @s run function asset:mob/0340.twins_rubiel/app/call_from_root/skill/01_crossfire/1.start

# 待機
    execute if score @s 9E.SkillTimer matches 2 run tag @s add 9E.State.Await
    execute if score @s 9E.SkillTimer matches 2 run function asset:mob/0338.corundum_twins/tick/app/general/1.check_await

## 斬り上げ
# ルビィ側で勝手にやるので、処理は無い

## 追撃
# ルビィから通知が来た場合、サフィに指示
    execute if entity @s[tag=9E.Skill.Crossfire.Ruby.Hit] if score @s 9E.SkillTimer matches 2

# 終了
