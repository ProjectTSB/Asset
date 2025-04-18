#> asset:mob/0411.behemoth/tick/event/blazing_end/
#
# ブレイジングエンド
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 31 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/10_0_blazing_start
    # 中心点の右方向に移動
        execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12 ^-0.5 ^ ~90 0
    # 演出
        execute if score @s BF.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.6
        execute if score @s BF.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.5
        execute if score @s BF.EventTimer matches 43 run particle explosion ~ ~1 ~ 2 0 2 0 20 force
        execute if score @s BF.EventTimer matches 66 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 81 run particle soul_fire_flame ~ ~3 ~ 1 4 1 0.05 2 force

# ブレイジングエンド
    # 詠唱
        execute if score @s BF.EventTimer matches 381..385 run tp @s ~ ~0.1 ~
        execute if score @s BF.EventTimer matches 81 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/10_1_blazing_cast
    # アニメーション再生
        execute if score @s BF.EventTimer matches 381 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/10_2_blazing_end
    # 攻撃
        execute if score @s BF.EventTimer matches 406 positioned ~ ~0.6 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/prediction
        execute if score @s BF.EventTimer matches 416 positioned ~ ~0.6 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/attack
        execute if score @s BF.EventTimer matches 421 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
        execute if score @s BF.EventTimer matches 426 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
        execute if score @s BF.EventTimer matches 431 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
        execute if score @s BF.EventTimer matches 436 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
        execute if score @s BF.EventTimer matches 441 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
        execute if score @s BF.EventTimer matches 446 as @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] at @s positioned ~ ~1 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect
    # 演出
        execute if score @s BF.EventTimer matches 81..380 positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/effect_ring
        execute if score @s BF.EventTimer matches 416..421 positioned ~ ~32 ~ run playsound entity.polar_bear.warning hostile @a[distance=..80] ~ ~ ~ 0.1 0.7 0.5
        execute if score @s BF.EventTimer matches 416..421 positioned ~ ~32 ~ run playsound entity.zombie_horse.death hostile @a[distance=..80] ~ ~ ~ 0.1 0.6 0.5
        execute if score @s BF.EventTimer matches 392 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    # 魔法陣
        execute if score @s BF.EventTimer matches 60..416 positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/blazing_end/particle_circle
        execute if score @s BF.EventTimer matches 80 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:0,Tick:330}
        execute if score @s BF.EventTimer matches 140 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:60,Tick:270}
        execute if score @s BF.EventTimer matches 200 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:120,Tick:210}
        execute if score @s BF.EventTimer matches 260 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:180,Tick:150}
        execute if score @s BF.EventTimer matches 320 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:240,Tick:90}
        execute if score @s BF.EventTimer matches 380 run function asset:mob/0411.behemoth/tick/event/blazing_end/summon_circle.m {Rotate:300,Tick:30}

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 465.. run function asset:mob/0411.behemoth/tick/event/blazing_end/end
