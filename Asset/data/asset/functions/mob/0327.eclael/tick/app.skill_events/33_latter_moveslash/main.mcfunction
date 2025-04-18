#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main
#
# アニメーションのイベントハンドラ 移動斬り
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 開始
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_0
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 1..65 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 1..65 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # プレイヤー位置に移動
        execute if score @s 93.AnimationTimer matches 65 at @p[tag=!PlayerShouldInvulnerable,distance=..40] facing entity @s feet rotated ~ 0 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/set_move_position
        execute if score @s 93.AnimationTimer matches 69 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/move_to_player
    # 移動
        execute if score @s 93.AnimationTimer matches 5..10 at @s positioned ^ ^ ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 11..15 at @s positioned ^ ^ ^-0.4 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 16..20 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    # 演出
        execute if score @s 93.AnimationTimer matches 5 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 20 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 2 0.7
        execute if score @s 93.AnimationTimer matches 47 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 68 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 68 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 68 run particle flash ~ ~1 ~ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 71 at @s positioned ^ ^1 ^-18 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 71 at @s positioned ^ ^1 ^-12 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 72 at @s positioned ^ ^1 ^-6 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 72 at @s positioned ^ ^1 ^ run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
    # 攻撃
        execute if score @s 93.AnimationTimer matches 75 at @s positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_0
        execute if score @s 93.AnimationTimer matches 76 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 77 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7

# X字斬り
    execute if score @s 93.AnimationTimer matches 90 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/animation_1
    # プレイヤーの方を向く
        execute if score @s 93.AnimationTimer matches 90..100 run tag @s add 93.Temp.Me
        execute if score @s 93.AnimationTimer matches 90..100 as @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    # 移動
        execute if score @s 93.AnimationTimer matches 95..105 at @s unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 110..125 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
        execute if score @s 93.AnimationTimer matches 126..135 at @s positioned ^ ^ ^-0.07 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    # 演出
        execute if score @s 93.AnimationTimer matches 95 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 97 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 2 1
        execute if score @s 93.AnimationTimer matches 100 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 100 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 100 run particle flash ^ ^1 ^2 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 104 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 104 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 104 run particle flash ^4 ^1 ^ 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 108 run playsound entity.wither.shoot hostile @a[distance=..30] ~ ~ ~ 0.5 1.8 0.5
        execute if score @s 93.AnimationTimer matches 108 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.8
        execute if score @s 93.AnimationTimer matches 108 run particle flash ^-2 ^1 ^6 0 0 0 0 1
        execute if score @s 93.AnimationTimer matches 100 at @s positioned ^-1 ^1 ^1 rotated ~-80 ~20 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 101 at @s positioned ^3 ^1 ^5 rotated ~-80 ~-10 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 105 at @s positioned ^4 ^1.5 ^ rotated ~90 ~10 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 106 at @s positioned ^1 ^1.5 ^ rotated ~90 ~ run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 110 at @s positioned ^-2 ^2 ^6 rotated ~30 ~20 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
        execute if score @s 93.AnimationTimer matches 111 at @s positioned ^0 ^2 ^3 rotated ~30 ~-24 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/particle_jump
    # 攻撃
        execute if score @s 93.AnimationTimer matches 102 at @s positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_1
        execute if score @s 93.AnimationTimer matches 107 at @s positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_2
        execute if score @s 93.AnimationTimer matches 111 at @s positioned ^ ^1 ^3 run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/attack_3
        execute if score @s 93.AnimationTimer matches 103 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 108 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 112 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
        execute if score @s 93.AnimationTimer matches 104 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
        execute if score @s 93.AnimationTimer matches 109 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
        execute if score @s 93.AnimationTimer matches 113 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7

# 終了
    execute if score @s 93.AnimationTimer matches 155.. run function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/end
