#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/1.main
#
# アニメーションのイベントハンドラ Hg足払い
# 下段蹴りで周囲のプレイヤーを転ばせる
# ジャンプで回避可能
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：100tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..35 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..20 at @s positioned ^ ^-0.05 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 25..31 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.9 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 32..38 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..2] at @s positioned ^ ^ ^0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 45..60 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 51..55 at @s positioned ^ ^0.3 ^-0.8 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 56..60 at @s positioned ^ ^-0.2 ^-0.7 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 61..70 at @s positioned ^ ^-0.1 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 85..100 at @s positioned ^ ^0.04 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 34 at @s rotated ~-120 ~ positioned ^ ^0.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 34 at @s rotated ~-60 ~ positioned ^ ^0.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 35 at @s rotated ~0 ~ positioned ^ ^0.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 35 at @s rotated ~60 ~ positioned ^ ^0.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 36 at @s rotated ~120 ~ positioned ^ ^0.1 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 34 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 34 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 26..41 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 51 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 61 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1

# 攻撃
    execute if score @s 9F.AnimationTimer matches 35 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/5.damage

# 遷移
    execute if score @s 9F.AnimationTimer matches 41 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/4.change_to_stepshot

# 終了
    execute if score @s 9F.AnimationTimer matches 101.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/2.end
