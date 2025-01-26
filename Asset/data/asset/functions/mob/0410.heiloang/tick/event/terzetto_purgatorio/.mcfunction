#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
    # 中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^32 ~180 0
        execute if score @s BE.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# ロックオンサンダー
    # アニメーション
        execute if score @s BE.EventTimer matches 450 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
        execute if score @s BE.EventTimer matches 485 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 508 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
        execute if score @s BE.EventTimer matches 610 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
        execute if score @s BE.EventTimer matches 694 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
    # 攻撃
        execute if score @s BE.EventTimer matches 508 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/set_attack_pos
        execute if score @s BE.EventTimer matches 608 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/set_attack_pos
        execute if score @s BE.EventTimer matches 508 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 510 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 512 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 608 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 610 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 612 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack

# 終了
    execute if score @s BE.EventTimer matches 800.. run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/end
