#> asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 予兆
    execute if score @s BE.EventTimer matches 1 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_attack_position
    execute if score @s BE.EventTimer matches 20 as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_circle_0
    execute if score @s BE.EventTimer matches 60 as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_circle_1
    execute if score @s BE.EventTimer matches 100 as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_circle_2

# 連続ダイブ
    # 移動
        execute if score @s BE.EventTimer matches 210 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] run tp @s ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 250 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB] run tp @s ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 290 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC] run tp @s ~ ~ ~ ~ 0
    # 予兆
        execute if score @s BE.EventTimer matches 110 if predicate api:global_vars/difficulty/max/normal as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_0_long
        execute if score @s BE.EventTimer matches 150 if predicate api:global_vars/difficulty/max/normal as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB] at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_1_long
        execute if score @s BE.EventTimer matches 190 if predicate api:global_vars/difficulty/max/normal as @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC] at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_2_long
        execute if score @s BE.EventTimer matches 210 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_0
        execute if score @s BE.EventTimer matches 250 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_1
        execute if score @s BE.EventTimer matches 290 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction_2
    # アニメーション再生
        execute if score @s BE.EventTimer matches 215 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
        execute if score @s BE.EventTimer matches 255 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
        execute if score @s BE.EventTimer matches 295 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
    # 移動
        execute if score @s BE.EventTimer matches 215..225 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 226..232 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 233..245 at @s run tp @s ^ ^ ^1.5
        execute if score @s BE.EventTimer matches 255..265 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 266..272 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 273..285 at @s run tp @s ^ ^ ^1.5
        execute if score @s BE.EventTimer matches 295..305 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 306..312 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 313..325 at @s run tp @s ^ ^ ^1.5
    # 攻撃
        execute if score @s BE.EventTimer matches 215 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 219 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 223 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 227 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 255 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 259 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 263 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 295 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 299 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 303 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 307 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
    # 演出
        execute if score @s BE.EventTimer matches 215 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 215..245 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 215..245 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 243 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
        execute if score @s BE.EventTimer matches 255 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 255..285 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 255..285 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 283 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
        execute if score @s BE.EventTimer matches 295 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 295..325 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 295..325 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 323 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
    # モデルを自身の位置に移動
        execute if score @s BE.EventTimer matches 180..330 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 340 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 初期位置に戻る
        execute if score @s BE.EventTimer matches 329 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^35 ~180 0

# 終了
    execute if score @s BE.EventTimer matches 376.. run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/end
