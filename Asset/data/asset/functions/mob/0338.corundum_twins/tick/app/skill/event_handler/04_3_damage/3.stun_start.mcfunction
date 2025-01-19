#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/3.stun_start
#
# シンクロスキル開始 スタン
#
# @within
#    function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_3_damage/1.main

# 初期化
    function asset:mob/0338.corundum_twins/tick/app/skill/1.cancel
    scoreboard players set @s 9E.SkillTimer 0
    tag @s add 9E.Skill.Stun
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sapphiel
    tag @s remove 9E.State.GetAwait.Rubiel

# 演出
    playsound entity.item.break hostile @a ~ ~ ~ 2 0.5
    playsound entity.player.attack.knockback hostile @a ~ ~ ~ 2 0.6
    playsound entity.player.attack.knockback hostile @a ~ ~ ~ 2 0.8
    playsound entity.player.attack.knockback hostile @a ~ ~ ~ 2 0.6
    playsound entity.player.attack.knockback hostile @a ~ ~ ~ 2 0.8
    particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 2
    execute at @e[type=wither_skeleton,tag=9G.Target] run particle explosion ~ ~1 ~ 0.3 0.3 0.3 0 2
