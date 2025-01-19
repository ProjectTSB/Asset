#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/1.main
#
# アニメーションのイベントハンドラ Hgフルバースト・射撃
# 全弾まとめて射撃する、射撃動作
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：5tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..5 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate

# 攻撃
    execute if score @s 9F.AnimationTimer matches 2 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 5 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","9F.Temp.Target.Aec.1"]}
    execute if score @s 9F.AnimationTimer matches 1 positioned ^0.2 ^1.2 ^0.8 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.0,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot_weak
    execute if score @s 9F.AnimationTimer matches 3 positioned ^-0.2 ^1.2 ^0.8 facing entity @e[type=area_effect_cloud,tag=9F.Temp.Target.Aec.1,sort=arbitrary,limit=1] feet run function asset:mob/0339.twins_sapphiel/app/attack/1.shot

# 終了
    execute if score @s 9F.AnimationTimer matches 5.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_2_hg_fullburst_main/2.end
