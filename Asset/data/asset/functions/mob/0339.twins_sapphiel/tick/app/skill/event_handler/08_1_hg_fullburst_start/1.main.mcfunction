#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/1.main
#
# アニメーションのイベントハンドラ Hgフルバースト
# 全弾まとめて射撃する、開始動作
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/1.switch

# アニメーション再生 (長さ：41tick)
    execute if score @s 9F.AnimationTimer matches 1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/3.play_animation

# 移動
    execute if score @s 9F.AnimationTimer matches 1..41 run function asset:mob/0339.twins_sapphiel/app/general/2.rotate
    execute if score @s 9F.AnimationTimer matches 1..5 positioned ~ ~0.1 ~ run function asset:mob/0339.twins_sapphiel/app/general/3.teleport

# 演出
    execute if score @s 9F.AnimationTimer matches 5 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 15 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 25 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1
    execute if score @s 9F.AnimationTimer matches 35 run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 2 1

# 攻撃準備
    execute if score @s 9F.AnimationTimer matches 39 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.0"]}
    execute if score @s 9F.AnimationTimer matches 41 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:7,Tags:["Object","9F.Temp.Target.Aec.1"]}

# 終了
    execute if score @s 9F.AnimationTimer matches 42.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_1_hg_fullburst_start/2.end
