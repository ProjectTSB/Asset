#> asset:mob/0412.tiamat/tick/event/attack/
#
# 通常攻撃
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/10_attack
    # ターゲットを向く
        execute if score @s BG.EventTimer matches 1..4 run function asset:mob/0412.tiamat/tick/util/rotate_to_target
    # 移動
        execute if score @s BG.EventTimer matches 1..15 if entity @a[tag=BG.MainTarget,distance=..8] at @s run tp @s ^ ^ ^-0.3
        execute if score @s BG.EventTimer matches 10..21 unless entity @a[tag=BG.MainTarget,distance=..7] at @s run tp @s ^ ^ ^0.2
        execute if score @s BG.EventTimer matches 10..21 unless entity @a[tag=BG.MainTarget,distance=..7] at @s run tp @s ^ ^ ^0.1
        execute if score @s BG.EventTimer matches 10..21 at @s run tp @s ^ ^ ^0.1
    # 攻撃
        execute if score @s BG.EventTimer matches 17 positioned ^ ^0.5 ^7 run function asset:mob/0412.tiamat/tick/event/attack/attack

# 演出
    execute if score @s BG.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BG.EventTimer matches 48 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 63.. run function asset:mob/0412.tiamat/tick/event/attack/end
