#> asset:mob/0411.behemoth/tick/event/attack/
#
# 通常攻撃
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/8_attack
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 1..16 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
    # 移動
        execute if score @s BF.EventTimer matches 1..15 if entity @a[tag=BF.MainTarget,distance=..8] at @s run tp @s ^ ^ ^-0.6
        execute if score @s BF.EventTimer matches 20..29 unless entity @a[tag=BF.MainTarget,distance=..7] at @s run tp @s ^ ^ ^1
        execute if score @s BF.EventTimer matches 20..39 unless entity @a[tag=BF.MainTarget,distance=..7] at @s run tp @s ^ ^ ^0.4
        execute if score @s BF.EventTimer matches 20..45 at @s run tp @s ^ ^ ^0.2
    # 攻撃
        execute if score @s BF.EventTimer matches 26 positioned ^ ^0.5 ^5 run function asset:mob/0411.behemoth/tick/event/attack/attack
        execute if score @s BF.EventTimer matches 34 positioned ^ ^0.5 ^5 run function asset:mob/0411.behemoth/tick/event/attack/attack

# 演出
    execute if score @s BF.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 52 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 75.. run function asset:mob/0411.behemoth/tick/event/attack/end
