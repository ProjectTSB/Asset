#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main
#
# アニメーションのイベントハンドラ 天泣
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# ジャンプ
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 1..15 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 1..15 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # プレイヤー位置に移動
        execute if score @s 93.AnimationTimer matches 29 at @r[tag=!PlayerShouldInvulnerable,distance=..40] run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/move_to_player
        execute if score @s 93.AnimationTimer matches 59 run tp @s ~ ~-3 ~
     # 演出
        execute if score @s 93.AnimationTimer matches 10 run particle end_rod ~ ~6 ~ 0.3 10 0.3 0.1 50
        execute if score @s 93.AnimationTimer matches 10 positioned ~ ~6 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        execute if score @s 93.AnimationTimer matches 11 positioned ~ ~12 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        execute if score @s 93.AnimationTimer matches 12 positioned ~ ~18 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        # 演出
            execute if score @s 93.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
            execute if score @s 93.AnimationTimer matches 10 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
            execute if score @s 93.AnimationTimer matches 10 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
            execute if score @s 93.AnimationTimer matches 10 run particle flash ~ ~1 ~ 0 0 0 0 1

# 落下
    execute if score @s 93.AnimationTimer matches 60 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_1
    # 攻撃
        execute if score @s 93.AnimationTimer matches 39 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_fall
    # 演出
        execute if score @s 93.AnimationTimer matches 69 run particle end_rod ~ ~6 ~ 0.3 10 0.3 0.1 50
        execute if score @s 93.AnimationTimer matches 67 positioned ~ ~18 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        execute if score @s 93.AnimationTimer matches 68 positioned ~ ~12 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        execute if score @s 93.AnimationTimer matches 69 positioned ~ ~6 ~ run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/particle_jump
        # 演出
            execute if score @s 93.AnimationTimer matches 67 run particle flash ~ ~6 ~ 0.3 10 0.3 0.1 50
            execute if score @s 93.AnimationTimer matches 67 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
            execute if score @s 93.AnimationTimer matches 67 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
            execute if score @s 93.AnimationTimer matches 75 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1

# 無敵
    execute if score @s 93.AnimationTimer matches 3..60 run effect give @s resistance 1 10 true
    execute if score @s 93.AnimationTimer matches 61 run effect clear @s resistance

# 回転斬り
    execute if score @s 93.AnimationTimer matches 119 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/animation_2
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 105..146 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 105..146 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 攻撃
        execute if score @s 93.AnimationTimer matches 129 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/prediction
        execute if score @s 93.AnimationTimer matches 174 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_spin
        execute if score @s 93.AnimationTimer matches 176 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 177 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
    # 落雷
        execute if score @s 93.AnimationTimer matches 170 run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/summon_attack_pos
        execute if score @s 93.AnimationTimer matches 172 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..11] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 197 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..16] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 222 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..21] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
        execute if score @s 93.AnimationTimer matches 247 as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..26] at @s run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/attack_check
    # 演出
        execute if score @s 93.AnimationTimer matches 119 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 159 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 210 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# 終了
    execute if score @s 93.AnimationTimer matches 264.. run function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/end
