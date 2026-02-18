#> asset:mob/0410.heiloang/tick/event/power_breath_end/
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# ターゲット更新
    execute if score @s BE.EventTimer matches 1..25 run function asset:mob/0410.heiloang/tick/util/check_target_hate

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/10_4_power_breath_continue_end
    # 攻撃位置決定
        execute if score @s BE.EventTimer matches 1 as @a[tag=BE.HateTarget,distance=..80,limit=1] run tag @s add BE.MainTarget
        execute if score @s BE.EventTimer matches 1 at @p[tag=BE.MainTarget] run function asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos
    # 攻撃
        execute if score @s BE.EventTimer matches 20 at @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] positioned ^ ^1 ^7 run function asset:mob/0410.heiloang/tick/event/power_breath/attack
# 対象を向く
    execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s facing entity @p[tag=BE.MainTarget,tag=!PlayerShouldInvulnerable] feet run tp @s ~ ~ ~ ~ 0
    execute if score @s BE.EventTimer matches 50.. as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_center

# 終了
    execute if score @s BE.EventTimer matches 64.. run function asset:mob/0410.heiloang/tick/event/power_breath_end/end
