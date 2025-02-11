#> asset:mob/0410.heiloang/tick/event/rage/
#
# 覚醒
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 覚醒
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/14_awaken
    # 演出
        execute if score @s BE.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BE.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BE.EventTimer matches 35 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.7
        execute if score @s BE.EventTimer matches 35 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
        execute if score @s BE.EventTimer matches 35 positioned ~ ~30 ~ run playsound entity.wither.death hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
    # モデル変更
        execute if score @s BE.EventTimer matches 32 run function asset:mob/0410.heiloang/tick/event/rage/start_raging

# 終了
    execute if score @s BE.EventTimer matches 91.. run function asset:mob/0410.heiloang/tick/event/rage/end
