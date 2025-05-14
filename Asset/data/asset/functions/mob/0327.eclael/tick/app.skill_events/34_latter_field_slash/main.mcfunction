#> asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/main
#
# アニメーションのイベントハンドラ 雷斗星刃・当流
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 中心点に移動
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_2
    # 移動
        execute if score @s 93.AnimationTimer matches 6 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 4 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 4 run particle flash ^3 ^ ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 9 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 9 run particle flash ^-3 ^ ^ 0 0 0 0 1

# 開始
    execute if score @s 93.AnimationTimer matches 34 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_0
    # 演出
        execute if score @s 93.AnimationTimer matches 38 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 119 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 119 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 119 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 120 positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 121 positioned ^ ^1 ^7 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump
        execute if score @s 93.AnimationTimer matches 122 positioned ^ ^1 ^11 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/particle_jump

# 攻撃
    execute if score @s 93.AnimationTimer matches 121 if predicate lib:random_pass_per/50 run tag @s add 93.Skill.FieldSlash.A
    # 三角形
        execute if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/easy rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/easy rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/easy rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    # 星
        execute if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/2_hard rotated ~ 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 122 if predicate api:global_vars/difficulty/2_hard rotated ~72 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/2_hard rotated ~144 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 124 if predicate api:global_vars/difficulty/2_hard rotated ~216 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/2_hard rotated ~288 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    # 二重三角形 外→中
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/min/3_blessless rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/min/3_blessless rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 171 if predicate api:global_vars/difficulty/min/3_blessless rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 173 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 175 if predicate api:global_vars/difficulty/min/3_blessless rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    # 二重三角形 中→外
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 121 if predicate api:global_vars/difficulty/min/3_blessless rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 123 if predicate api:global_vars/difficulty/min/3_blessless rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 125 if predicate api:global_vars/difficulty/min/3_blessless rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 171 if predicate api:global_vars/difficulty/min/3_blessless rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 173 if predicate api:global_vars/difficulty/min/3_blessless rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
        execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 175 if predicate api:global_vars/difficulty/min/3_blessless rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

# 無敵
    execute if score @s 93.AnimationTimer matches 34..600 run effect give @s resistance 1 10 true
    execute if score @s 93.AnimationTimer matches 601 run effect clear @s resistance

# 終了
    execute if score @s 93.AnimationTimer matches 600 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 130 run tp @s ~ ~2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 595 run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 600 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 600 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 600 run particle flash ~ ~3 ~ 0 0 0 0 1

# 終了
    execute if score @s 93.AnimationTimer matches 625.. run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/end
