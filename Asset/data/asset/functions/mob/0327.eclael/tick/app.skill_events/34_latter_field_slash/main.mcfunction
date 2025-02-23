#> asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/main
#
# アニメーションのイベントハンドラ 移動斬り
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 開始
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_0
    # 移動
        execute if score @s 93.AnimationTimer matches 1 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 5 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 67 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 86 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 86 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 86 run particle flash ~ ~1 ~ 0 0 0 0 1

# 攻撃
    execute if score @s 93.AnimationTimer matches 88 if predicate lib:random_pass_per/50 run tag @s add 93.Skill.FieldSlash.A
    execute if score @s 93.AnimationTimer matches 88 if predicate api:global_vars/difficulty/easy rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 90 if predicate api:global_vars/difficulty/easy rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 92 if predicate api:global_vars/difficulty/easy rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

    execute if score @s 93.AnimationTimer matches 88 if predicate api:global_vars/difficulty/normal rotated ~ 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 89 if predicate api:global_vars/difficulty/normal rotated ~72 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 90 if predicate api:global_vars/difficulty/normal rotated ~144 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 91 if predicate api:global_vars/difficulty/normal rotated ~216 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if score @s 93.AnimationTimer matches 92 if predicate api:global_vars/difficulty/normal rotated ~288 0 positioned ~ ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 88 if predicate api:global_vars/difficulty/min/hard rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 90 if predicate api:global_vars/difficulty/min/hard rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 92 if predicate api:global_vars/difficulty/min/hard rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 138 if predicate api:global_vars/difficulty/min/hard rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 140 if predicate api:global_vars/difficulty/min/hard rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    execute unless entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 142 if predicate api:global_vars/difficulty/min/hard rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1

    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 88 if predicate api:global_vars/difficulty/min/hard rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 90 if predicate api:global_vars/difficulty/min/hard rotated ~120 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 92 if predicate api:global_vars/difficulty/min/hard rotated ~240 0 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_1
    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 138 if predicate api:global_vars/difficulty/min/hard rotated ~60 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 140 if predicate api:global_vars/difficulty/min/hard rotated ~180 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0
    execute if entity @s[tag=93.Skill.FieldSlash.A] if score @s 93.AnimationTimer matches 142 if predicate api:global_vars/difficulty/min/hard rotated ~300 0 positioned ~ ~-2 ~ run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/attack_0

# 終了
    execute if score @s 93.AnimationTimer matches 500 run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 100 run tp @s ~ ~2 ~ ~ 0
        execute if score @s 93.AnimationTimer matches 495 run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 500 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 500 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 500 run particle flash ~ ~3 ~ 0 0 0 0 1

# 終了
    execute if score @s 93.AnimationTimer matches 518.. run function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/end
