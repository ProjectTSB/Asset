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
        execute if score @s BE.EventTimer matches 180 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionA] run tp @s ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 220 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionB] run tp @s ~ ~ ~ ~ 0
        execute if score @s BE.EventTimer matches 260 at @e[type=area_effect_cloud,tag=BE.Temp.Dive.PositionC] run tp @s ~ ~ ~ ~ 0
    # 予兆
        execute if score @s BE.EventTimer matches 180 at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction
        execute if score @s BE.EventTimer matches 220 at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction
        execute if score @s BE.EventTimer matches 260 at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/dive_prediction
    # アニメーション再生
        execute if score @s BE.EventTimer matches 185 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
        execute if score @s BE.EventTimer matches 225 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
        execute if score @s BE.EventTimer matches 265 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_2_dive
    # 移動
        execute if score @s BE.EventTimer matches 185..195 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 196..202 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 203..215 at @s run tp @s ^ ^ ^1.5
        execute if score @s BE.EventTimer matches 225..235 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 236..242 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 243..255 at @s run tp @s ^ ^ ^1.5
        execute if score @s BE.EventTimer matches 265..275 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 276..282 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 283..295 at @s run tp @s ^ ^ ^1.5
    # 攻撃
        execute if score @s BE.EventTimer matches 185 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 189 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 193 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 197 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 225 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 229 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 233 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 237 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 265 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 269 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 273 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
        execute if score @s BE.EventTimer matches 277 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
    # 演出
        execute if score @s BE.EventTimer matches 185 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 185..215 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 185..215 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 213 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
        execute if score @s BE.EventTimer matches 225 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 225..255 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 225..255 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 253 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
        execute if score @s BE.EventTimer matches 265 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 265..295 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 265..295 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
        execute if score @s BE.EventTimer matches 293 at @s run particle flash ~ ~3 ~ 3 3 3 0.1 20 force
    # モデルを自身の位置に移動
        execute if score @s BE.EventTimer matches 180..300 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 340 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 初期位置に戻る
        execute if score @s BE.EventTimer matches 299 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0

# 終了
    execute if score @s BE.EventTimer matches 376.. run function asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/end
