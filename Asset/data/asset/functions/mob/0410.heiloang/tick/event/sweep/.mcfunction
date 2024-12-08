#> asset:mob/0410.heiloang/tick/event/sweep/
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/6_sweep_breath
    # 予告
    execute if score @s BE.EventTimer matches 5 at @e[type=marker,tag=BE.CenterPosition] positioned ^ ^ ^19.5 rotated ~180 ~ run function asset:mob/0410.heiloang/tick/event/sweep/prediction
    # 攻撃
        execute if score @s BE.EventTimer matches 48..105 positioned as @e[type=marker,tag=aj.heiloang_aj.locator.locator_head,limit=1,sort=nearest] run function asset:mob/0410.heiloang/tick/event/sweep/attack
    # 角度
        execute if score @s BE.EventTimer matches 10 run tp @s ~ ~ ~ ~70 0
        execute if score @s BE.EventTimer matches 78..105 run tp @s ~ ~ ~ ~-8 ~
        execute if score @s BE.EventTimer matches 130 facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ~ ~ ~ ~ 0

# 終了
    execute if score @s BE.EventTimer matches 136.. run function asset:mob/0410.heiloang/tick/event/sweep/end
