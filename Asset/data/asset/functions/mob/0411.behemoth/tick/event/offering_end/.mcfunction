#> asset:mob/0411.behemoth/tick/event/offering_end/
#
# ソウルオファリング
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

# ソウルオファリング
    # 詠唱
        execute if score @s BF.EventTimer matches 381..385 run tp @s ~ ~0.1 ~
        execute if score @s BF.EventTimer matches 81 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/10_1_blazing_cast
    # 発動
        execute if score @s BF.EventTimer matches 381 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/10_2_blazing_end
    # 演出
        execute if score @s BF.EventTimer matches 381 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 401..406 positioned ~ ~32 ~ run playsound entity.polar_bear.warning hostile @a[distance=..80] ~ ~ ~ 0.1 0.7 0.5
        execute if score @s BF.EventTimer matches 401..406 positioned ~ ~32 ~ run playsound entity.zombie_horse.death hostile @a[distance=..80] ~ ~ ~ 0.1 0.6 0.5
        execute if score @s BF.EventTimer matches 420 run function asset:mob/0411.behemoth/tick/event/offering/effect
        execute if score @s BF.EventTimer matches 81..419 run particle dust 0.439 0.447 0.906 4 ~ ~3 ~ 3 3 3 0 3
        execute if score @s BF.EventTimer matches 81..419 run particle dust 0.227 0.231 0.506 4 ~ ~3 ~ 2 2 2 0 3
        execute if score @s BF.EventTimer matches 421.. run particle dust 0.439 0.447 0.906 4 ~ ~3 ~ 1 1 1 0 3
        execute if score @s BF.EventTimer matches 421.. run particle dust 0.227 0.231 0.506 4 ~ ~3 ~ 0.5 0.5 0.5 0 3
        execute if score @s BF.EventTimer matches 421.. run particle end_rod ~ ~3 ~ 0.1 0.1 0.1 0.1 2
    # 移動
        execute if score @s BF.EventTimer matches 440.. facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ ~
        execute if score @s BF.EventTimer matches 440.. run tp @s ^ ^ ^0.8
        execute if score @s BF.EventTimer matches 440.. if entity @e[type=slime,tag=BE.EntityRoot,distance=..3] run function asset:mob/0411.behemoth/tick/event/offering_end/end

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 耐性解除
    execute if score @s BF.EventTimer matches 31 run function asset:mob/0411.behemoth/tick/util/end_armor

# 無敵化
    execute if score @s BF.EventTimer matches 420 run function asset:mob/0411.behemoth/tick/util/start_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 900.. run function asset:mob/0411.behemoth/tick/event/offering_end/end
