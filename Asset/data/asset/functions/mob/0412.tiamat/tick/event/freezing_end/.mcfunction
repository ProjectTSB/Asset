#> asset:mob/0412.tiamat/tick/event/freezing_end/
#
# フリージングエンド
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_2_cast_land_start
    # 中心点の左方向に移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12 ^-0.5 ^ ~-90 0
    # 演出
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.7
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.6
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.5
        execute if score @s BG.EventTimer matches 43 run particle explosion ~ ~1 ~ 2 0 2 0 20 force
        execute if score @s BG.EventTimer matches 66 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# フリージングエンド
    # 詠唱
        execute if score @s BG.EventTimer matches 80 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_3_casting_land
    # アニメーション再生
        execute if score @s BG.EventTimer matches 391 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/9_roar
    # 攻撃
        execute if score @s BG.EventTimer matches 406 positioned ~ ~0.6 ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/prediction
        execute if score @s BG.EventTimer matches 418 positioned ~ ~0.6 ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/attack
        execute if score @s BG.EventTimer matches 421 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
        execute if score @s BG.EventTimer matches 426 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
        execute if score @s BG.EventTimer matches 431 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
        execute if score @s BG.EventTimer matches 436 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
        execute if score @s BG.EventTimer matches 441 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
        execute if score @s BG.EventTimer matches 446 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~ ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect
    # 演出
        execute if score @s BG.EventTimer matches 451..455 run tp @s ~ ~0.1 ~
        execute if score @s BG.EventTimer matches 80..391 rotated ~ ~ positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/effect_ring
        execute if score @s BG.EventTimer matches 412..432 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 412..432 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 391 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BG.EventTimer matches 456 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    # 魔法陣
        execute if score @s BG.EventTimer matches 60..416 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/freezing_end/particle_circle
        execute if score @s BG.EventTimer matches 80 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:0,Tick:330}
        execute if score @s BG.EventTimer matches 140 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:60,Tick:270}
        execute if score @s BG.EventTimer matches 200 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:120,Tick:210}
        execute if score @s BG.EventTimer matches 260 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:180,Tick:150}
        execute if score @s BG.EventTimer matches 320 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:240,Tick:90}
        execute if score @s BG.EventTimer matches 380 run function asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m {Rotate:300,Tick:30}

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 481.. run function asset:mob/0412.tiamat/tick/event/freezing_end/end
