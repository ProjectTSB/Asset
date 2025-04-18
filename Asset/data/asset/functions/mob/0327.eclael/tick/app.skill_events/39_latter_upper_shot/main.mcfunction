#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main
#
# アニメーションのイベントハンドラ 曲射
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 開始
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/animation_0
    # 中心点を挟んで反対側に移動
        execute if score @s 93.AnimationTimer matches 1 facing entity @p[tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ 0
        execute if score @s 93.AnimationTimer matches 1 at @s as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] positioned as @s run tp @s ~ ~ ~ ~0 0
        execute if score @s 93.AnimationTimer matches 5 at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ^ ^-2.3 ^-18 ~ 0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 71..105 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 71..105 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 演出
        execute if score @s 93.AnimationTimer matches 1 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 1 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 1 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 6 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 6 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 6 run particle flash ^ ^1 ^5 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 26 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 2 1.3
        execute if score @s 93.AnimationTimer matches 27..35 run playsound item.crossbow.loading_middle hostile @a ~ ~ ~ 2 1.3
        execute if score @s 93.AnimationTimer matches 78 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 2 1.3
        execute if score @s 93.AnimationTimer matches 79..100 run playsound item.crossbow.loading_middle hostile @a ~ ~ ~ 2 1.3
        execute if score @s 93.AnimationTimer matches 1 positioned ^ ^1 ^-3 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump
        execute if score @s 93.AnimationTimer matches 6 positioned ^ ^1 ^5 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_jump

# 攻撃
    execute if score @s 93.AnimationTimer matches 10 at @s run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/attack_0
    execute if score @s 93.AnimationTimer matches 52 positioned ^ ^3 ^1 rotated ~ -60 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/particle_shot
    execute if score @s 93.AnimationTimer matches 105 at @s run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/prediction
    execute if score @s 93.AnimationTimer matches 120 at @s run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/attack_1

# 難易度分岐
    execute if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_normal
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main_hard

# 終了
    execute if score @s 93.AnimationTimer matches 200 run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/animation_1
    # 移動
        execute if score @s 93.AnimationTimer matches 195 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ~ ~-2 ~ ~ 0
    # 演出
        execute if score @s 93.AnimationTimer matches 200 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 200 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 200 run particle flash ~ ~3 ~ 0 0 0 0 1

# 終了
    execute if score @s 93.AnimationTimer matches 225.. run function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/end
