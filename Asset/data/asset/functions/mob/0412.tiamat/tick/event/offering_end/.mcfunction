#> asset:mob/0412.tiamat/tick/event/offering_end/
#
# ソウルオファリング
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

# ソウルオファリング
    # 詠唱
        execute if score @s BG.EventTimer matches 80 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_3_casting_land
    # アニメーション再生
        execute if score @s BG.EventTimer matches 391 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/13_offering_end
    # 演出
        execute if score @s BG.EventTimer matches 391 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BG.EventTimer matches 411..416 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 411..416 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 430 run function asset:mob/0412.tiamat/tick/event/offering/effect
        execute if score @s BG.EventTimer matches 81..429 run particle dust 0.831 0.373 0.894 4 ~ ~3 ~ 3 3 3 0 3
        execute if score @s BG.EventTimer matches 81..429 run particle dust 0.424 0.161 0.459 4 ~ ~3 ~ 2 2 2 0 3
        execute if score @s BG.EventTimer matches 430.. run particle dust 0.831 0.373 0.894 4 ~ ~3 ~ 1 1 1 0 3
        execute if score @s BG.EventTimer matches 430.. run particle dust 0.424 0.161 0.459 4 ~ ~3 ~ 0.5 0.5 0.5 0 3
        execute if score @s BG.EventTimer matches 430.. run particle end_rod ~ ~3 ~ 0.1 0.1 0.1 0.1 2
    # 移動
        execute if score @s BG.EventTimer matches 450.. facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ ~
        execute if score @s BG.EventTimer matches 450.. run tp @s ^ ^ ^0.8
        execute if score @s BG.EventTimer matches 450.. if entity @e[type=slime,tag=BE.EntityRoot,distance=..3] run function asset:mob/0412.tiamat/tick/event/offering_end/end

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 耐性解除
    execute if score @s BG.EventTimer matches 31 run function asset:mob/0412.tiamat/tick/util/end_armor

# 無敵化
    execute if score @s BG.EventTimer matches 420 run function asset:mob/0412.tiamat/tick/util/start_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 900.. run function asset:mob/0412.tiamat/tick/event/offering_end/end
