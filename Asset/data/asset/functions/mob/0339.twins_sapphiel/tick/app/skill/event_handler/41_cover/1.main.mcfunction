#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/1.main
#
# アニメーションのイベントハンドラ 怯みかばい攻撃
# 相方の怯みをかばいつつ攻撃する
# 最後の下段回し蹴りはジャンプで回避可能
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：120tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/3.play_animation

# ライダーキック
# 移動
    execute if score @s 9F.AnimationTimer matches 1 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s 9F.AnimationTimer matches 13..33 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 13..23 at @s positioned ^ ^0.25 ^-0.5 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 13..23 if entity @a[tag=!PlayerShouldInvulnerable,distance=..18] at @s positioned ^ ^0.1 ^-0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 43..51 at @s positioned ^ ^ ^0.3 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 52..58 at @s positioned ^ ^ ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    # ベクトル計算移動
        execute if score @s 9F.AnimationTimer matches 32 at @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ^ ^0.1 ^-1 {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","9F.Temp.Target.Aec.0"]}
        execute if score @s 9F.AnimationTimer matches 33 if entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0] run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/4.calc_vector
        execute if score @s 9F.AnimationTimer matches 34..42 run function asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector
# 演出
    execute if score @s 9F.AnimationTimer matches 14 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 33 run particle explosion ~ ~ ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 33 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=nearest,limit=1] feet positioned ^ ^1 ^-0.5 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/6.1.particle_circle
    execute if score @s 9F.AnimationTimer matches 33 run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 2
    execute if score @s 9F.AnimationTimer matches 34..42 run particle firework ~ ~0.5 ~ 0.2 0.2 0.2 0.1 3
    execute if score @s 9F.AnimationTimer matches 34..42 run particle dust 1000000000 1000000000 100000000 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 10
    execute if score @s 9F.AnimationTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 43 run particle explosion ~ ~ ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 43 run particle campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.03 10
    execute if score @s 9F.AnimationTimer matches 43..48 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 9F.AnimationTimer matches 43..48 at @s run particle block sea_lantern ~ ~0.1 ~ 0.2 0 0.2 1 3
    execute if score @s 9F.AnimationTimer matches 49 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 43 rotated ~ -90 positioned ~ ~0.5 ~ run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/6.2.particle_circle_single
# 攻撃
    execute if score @s 9F.AnimationTimer matches 34..42 if score @s 9F.DamageCooldown matches ..0 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.1.damage_rider

# 中段回し蹴り
# 移動
    execute if score @s 9F.AnimationTimer matches 51..62 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 51..62 at @s run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 51..60 at @s positioned ^ ^ ^0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 54..62 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 63..66 at @s positioned ^ ^0.1 ^0.2 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 67..73 at @s positioned ^ ^-0.05 ^0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
# 演出
    execute if score @s 9F.AnimationTimer matches 51 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 61 at @s rotated ~-120 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 61 at @s rotated ~-60 ~ positioned ^ ^0.7 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 62 at @s rotated ~0 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 62 at @s rotated ~60 ~ positioned ^ ^0.8 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 63 at @s rotated ~120 ~ positioned ^ ^0.9 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 61 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 61 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
# 攻撃
    execute if score @s 9F.AnimationTimer matches 63 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.2.damage_spin

# 下段回し蹴り
# 移動
    execute if score @s 9F.AnimationTimer matches 65..76 at @s positioned ^ ^-0.1 ^ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 65..76 unless entity @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s positioned ^ ^ ^0.4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 106..115 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 106..115 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
# 演出
    execute if score @s 9F.AnimationTimer matches 61 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 9F.AnimationTimer matches 75 at @s rotated ~-120 ~ positioned ^ ^0.3 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 75 at @s rotated ~-60 ~ positioned ^ ^0.3 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 76 at @s rotated ~0 ~ positioned ^ ^0.4 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 76 at @s rotated ~60 ~ positioned ^ ^0.4 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 77 at @s rotated ~120 ~ positioned ^ ^0.4 ^2 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/6.1.particle_kick
    execute if score @s 9F.AnimationTimer matches 76 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.65
    execute if score @s 9F.AnimationTimer matches 76 run playsound ogg:entity.player.attack.sweep1 hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 105 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.2
# 攻撃
    execute if score @s 9F.AnimationTimer matches 77 at @s run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/5.3.damage_low
# 移動演出
    execute if score @s 9F.AnimationTimer matches 120 run playsound item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 9F.AnimationTimer matches 120 run particle flash ~ ~1 ~ 0 0 0 0 1
    execute if score @s 9F.AnimationTimer matches 120 run particle firework ~ ~1 ~ 0.2 0.2 0.2 0.1 10
    execute if score @s 9F.AnimationTimer matches 121 at @s positioned ^ ^ ^-6 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport
    execute if score @s 9F.AnimationTimer matches 121 at @s positioned ^ ^ ^-4 run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 怯み受け付け
    execute if score @s 9F.AnimationTimer matches 85 run tag @s add 9F.State.IsDamage
    execute if score @s 9F.AnimationTimer matches 120 run tag @s remove 9F.State.IsDamage

# 終了
    execute if score @s 9F.AnimationTimer matches 126.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/41_cover/2.end
