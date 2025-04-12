#> asset:mob/0411.behemoth/tick/event/offering/
#
# ソウルオファリング
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# ソウルオファリング
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/11_offering

# 演出
    execute if score @s BF.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 21..26 positioned ~ ~32 ~ run playsound entity.polar_bear.warning hostile @a[distance=..80] ~ ~ ~ 0.1 0.7 0.5
    execute if score @s BF.EventTimer matches 21..26 positioned ~ ~32 ~ run playsound entity.zombie_horse.death hostile @a[distance=..80] ~ ~ ~ 0.1 0.6 0.5
    execute if score @s BF.EventTimer matches 40 run function asset:mob/0411.behemoth/tick/event/offering/effect
    execute if score @s BF.EventTimer matches 1..39 run particle dust 0.439 0.447 0.906 4 ~ ~3 ~ 3 3 3 0 3
    execute if score @s BF.EventTimer matches 1..39 run particle dust 0.227 0.231 0.506 4 ~ ~3 ~ 2 2 2 0 3
    execute if score @s BF.EventTimer matches 41.. run particle dust 0.439 0.447 0.906 4 ~ ~3 ~ 1 1 1 0 3
    execute if score @s BF.EventTimer matches 41.. run particle dust 0.227 0.231 0.506 4 ~ ~3 ~ 0.5 0.5 0.5 0 3
    execute if score @s BF.EventTimer matches 41.. run particle end_rod ~ ~3 ~ 0.1 0.1 0.1 0.1 2

# 移動
    execute if score @s BF.EventTimer matches 60.. facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ ~
    execute if score @s BF.EventTimer matches 60.. run tp @s ^ ^ ^0.8
    execute if score @s BF.EventTimer matches 60.. if entity @e[type=slime,tag=BE.EntityRoot,distance=..3] run function asset:mob/0411.behemoth/tick/event/offering/end

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BF.EventTimer matches 40 run function asset:mob/0411.behemoth/tick/util/start_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 900.. run function asset:mob/0411.behemoth/tick/event/offering/end
