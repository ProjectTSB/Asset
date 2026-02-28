#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/1.main
#
# アニメーションのイベントハンドラ Sync交差攻撃・斬り上げ
# 二刀を構え、敵をかちあげる
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：65tick)
    execute if score @s 9G.AnimationTimer matches 1 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/3.play_animation

# 移動
    execute if score @s 9G.AnimationTimer matches 1..4 run function asset:mob/0340.twins_rubiel/app/general/2.rotate
    execute if score @s 9G.AnimationTimer matches 1..10 at @s run function asset:mob/0340.twins_rubiel/app/general/7.update_altitude_to_player
    execute if score @s 9G.AnimationTimer matches 1..8 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^1.5 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 1..11 at @s positioned ^ ^ ^0.2 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 34..46 at @s positioned ^ ^0.1 ^-0.08 run function asset:mob/0340.twins_rubiel/app/general/3.teleport
    execute if score @s 9G.AnimationTimer matches 47..66 at @s positioned ^ ^-0.03 ^-0.02 run function asset:mob/0340.twins_rubiel/app/general/3.teleport

# 演出
    execute if score @s 9G.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 34 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
    execute if score @s 9G.AnimationTimer matches 42 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 0.8
    execute if score @s 9G.AnimationTimer matches 42 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 0.8

# 斬撃演出
    execute if score @s 9G.AnimationTimer matches 9 at @s positioned ^ ^1 ^1.2 rotated ~90 ~-80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 10 at @s positioned ^ ^2 ^0.9 rotated ~90 ~-80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/6.2.particle_slash_blue
    execute if score @s 9G.AnimationTimer matches 9 at @s positioned ^ ^1 ^1.2 rotated ~90 ~-80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/6.1.particle_slash_red
    execute if score @s 9G.AnimationTimer matches 10 at @s positioned ^ ^2 ^0.9 rotated ~90 ~-80 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/6.1.particle_slash_red

# 攻撃
    execute if score @s 9G.AnimationTimer matches 10 at @s positioned ^ ^1 ^2 if score @s 9G.DamageCooldown matches ..0 run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/5.damage

# 状態更新
    execute if score @s 9G.AnimationTimer matches 1 run tag @s add 9G.State.Weapon.Kt

# 怯み受け付け
    execute if score @s 9G.AnimationTimer matches 10 run tag @s add 9G.State.IsDamage
    execute if score @s 9G.AnimationTimer matches 40 run tag @s remove 9G.State.IsDamage

# 終了
    execute if score @s 9G.AnimationTimer matches 66.. run function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/31_2_sync_crossfire_upper/2.end
