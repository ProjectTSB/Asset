#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/main
#
# アニメーションのイベントハンドラ 残心
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# ターゲット保持
    function asset:mob/0327.eclael/tick/app.general/check_target
    function asset:mob/0327.eclael/tick/app.general/update_target

# 開始
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/animation_0
    # 中心点を挟んで反対側に移動
        # execute if score @s 93.AnimationTimer matches 1 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] facing entity @p[tag=!PlayerShouldInvulnerable] feet positioned as @s run tp @s ~ ~ ~ ~ 0
        execute if score @s 93.AnimationTimer matches 1 positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] facing entity @p[tag=93.Temp.Target] feet positioned as @s run tp @s ~ ~ ~ ~ 0
        execute if score @s 93.AnimationTimer matches 1 at @s as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] positioned as @s run tp @s ~ ~ ~ ~0 0
        execute if score @s 93.AnimationTimer matches 5 at @e[type=marker,tag=93.Marker.SpawnPoint,distance=..80,sort=nearest,limit=1] run tp @s ^ ^-2.3 ^-10 ~ 0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 6..101 run tag @s add 93.Temp.Me
        # execute if score @s 93.AnimationTimer matches 6..101 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
        execute if score @s 93.AnimationTimer matches 6..101 as @a[tag=93.Temp.Target,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 演出
        execute if score @s 93.AnimationTimer matches 1 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 1 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 1 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 6 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 6 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 6 run particle flash ^ ^1 ^5 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 19 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 1 positioned ^ ^1 ^-3 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/particle_jump
        execute if score @s 93.AnimationTimer matches 6 positioned ^ ^1 ^5 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/particle_jump

# 攻撃
    execute if score @s 93.AnimationTimer matches 31 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/animation_1
    execute if score @s 93.AnimationTimer matches 49 positioned ^ ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_0
    execute if score @s 93.AnimationTimer matches 61 positioned ^ ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_1
    execute if score @s 93.AnimationTimer matches 75 positioned ^ ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_2
    execute if score @s 93.AnimationTimer matches 94 positioned ^ ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_3
    execute if score @s 93.AnimationTimer matches 101 positioned ^ ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_4
    # 演出
        execute if score @s 93.AnimationTimer matches 127 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 147 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1
    # 移動
        execute if score @s 93.AnimationTimer matches 147..156 at @s run tp @s ^ ^0.03 ^ ~ 0

# ターゲット解放
    tag @a remove 93.Temp.Target

# 終了
    execute if score @s 93.AnimationTimer matches 170.. run function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/end
