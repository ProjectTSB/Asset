#> asset:mob/0412.tiamat/tick/event/terzetto_disaster/
#
# テルツェット・ディザスター
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の左方向に移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-26 ^ ^ ~-90 0

# ダークブレス
    # 詠唱
        # アニメーション再生
            execute if score @s BG.EventTimer matches 71 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
            execute if score @s BG.EventTimer matches 90 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
        # ターゲットを向く
            execute if score @s BG.EventTimer matches 71..270 run function asset:mob/0412.tiamat/tick/util/rotate_to_target
        # 口元に氷の予兆
            execute if score @s BG.EventTimer matches 71..310 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.global.data] run function asset:mob/0412.tiamat/tick/event/darkbreath/prediction_ice.m with entity @s data.locators.pos_head
    # 攻撃
        # アニメーション再生
            execute if score @s BG.EventTimer matches 300 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/4_breath
        # 攻撃位置決定
            execute if score @s BG.EventTimer matches 270 at @p[tag=BG.MainTarget] run function asset:mob/0412.tiamat/tick/event/darkbreath/summon_attack_pos_long
        # 攻撃
            execute if score @s BG.EventTimer matches 315 at @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] positioned ^ ^2 ^8 run function asset:mob/0412.tiamat/tick/event/darkbreath/attack
    # 演出
        execute if score @s BG.EventTimer matches 71 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 300 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 246 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 356 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
        execute if score @s BG.EventTimer matches 416 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 446 unless predicate api:global_vars/difficulty/1_normal as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 445 unless predicate api:global_vars/difficulty/1_normal at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BG.EventTimer matches 1 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 30 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 416 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 446 run function asset:mob/0412.tiamat/tick/util/end_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 486.. run function asset:mob/0412.tiamat/tick/event/terzetto_disaster/end
