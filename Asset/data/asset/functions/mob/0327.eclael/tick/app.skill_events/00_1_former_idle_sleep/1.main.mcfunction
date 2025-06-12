#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main
#
# アニメーションのイベントハンドラ 前半・居眠り
# その場でうとうとする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 中心点から離れすぎている場合、中心に戻る
    execute if score @s 93.AnimationTimer matches 1 unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=..23] positioned as @e[type=marker,tag=93.Marker.SpawnPoint,distance=..30,sort=nearest,limit=1] run tp @s ~ ~-2 ~ ~ 0

## あくび
# animated javaアニメーション再生 (長さ：94tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.1.play_start_animation
    execute if score @s 93.AnimationTimer matches 45 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
    execute if score @s 93.AnimationTimer matches 65 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3

## 居眠り
# animated javaアニメーション再生 (長さ：65tick)
    execute if score @s 93.AnimationTimer matches 94 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.2.play_sleep_animation
# 攻撃されていない場合，引き続き眠る
    execute if entity @s[tag=!93.Temp.SleepDamage] if score @s 93.AnimationTimer matches 131 run scoreboard players set @s 93.AnimationTimer 65

## 起床
# animated javaアニメーション再生 (長さ：74tick)
    execute if score @s 93.AnimationTimer matches 159 run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.3.play_end_animation
    execute if score @s 93.AnimationTimer matches 164 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
    execute if score @s 93.AnimationTimer matches 210 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3

# 終了
    execute if score @s 93.AnimationTimer matches 235.. run function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/2.end
