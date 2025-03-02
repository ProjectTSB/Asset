#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main
#
# アニメーションのイベントハンドラ 点睛
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 攻撃
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/animation_0
    # 移動
        execute if score @s 93.AnimationTimer matches 31 run function asset:mob/0327.eclael/tick/app.general/move_to_ground
        execute if score @s 93.AnimationTimer matches 31 at @s run tp @s ~ ~0.5 ~
        execute if score @s 93.AnimationTimer matches 60..64 run tp @s ~ ~0.09 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 29 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 0.7
        execute if score @s 93.AnimationTimer matches 35 run playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.4
        execute if score @s 93.AnimationTimer matches 33 positioned ^ ^0.6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/particle_jump
        execute if score @s 93.AnimationTimer matches 36 positioned ^ ^0.6 ^ rotated ~ ~-90 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/particle_jump
        execute if score @s 93.AnimationTimer matches 51 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 87 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 1.7

# 攻撃
    execute if score @s 93.AnimationTimer matches 33 run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_0

# 終了
    execute if score @s 93.AnimationTimer matches 142.. run function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/end
