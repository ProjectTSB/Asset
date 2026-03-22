#> asset:mob/0412.tiamat/tick/event/offering/
#
# ソウルオファリング
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# ソウルオファリング
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/12_offering

# 演出
    execute if score @s BG.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BG.EventTimer matches 21..26 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    execute if score @s BG.EventTimer matches 21..26 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    execute if score @s BG.EventTimer matches 40 run function asset:mob/0412.tiamat/tick/event/offering/effect
    execute if score @s BG.EventTimer matches 1..39 run particle dust 0.831 0.373 0.894 4 ~ ~3 ~ 3 3 3 0 3
    execute if score @s BG.EventTimer matches 1..39 run particle dust 0.424 0.161 0.459 4 ~ ~3 ~ 2 2 2 0 3
    execute if score @s BG.EventTimer matches 41.. run particle dust 0.831 0.373 0.894 4 ~ ~3 ~ 1 1 1 0 3
    execute if score @s BG.EventTimer matches 41.. run particle dust 0.424 0.161 0.459 4 ~ ~3 ~ 0.5 0.5 0.5 0 3
    execute if score @s BG.EventTimer matches 41.. run particle end_rod ~ ~3 ~ 0.1 0.1 0.1 0.1 2

# 移動
    execute if score @s BG.EventTimer matches 60.. facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ ~
    execute if score @s BG.EventTimer matches 60.. run tp @s ^ ^ ^0.8
    execute if score @s BG.EventTimer matches 60.. if entity @e[type=slime,tag=BE.EntityRoot,distance=..3] run function asset:mob/0412.tiamat/tick/event/offering/end

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 保険としての終了処理
    execute if score @s BG.EventTimer matches 900.. run function asset:mob/0412.tiamat/tick/event/offering/end
