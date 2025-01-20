#> asset:mob/0411.behemoth/tick/event/terzetto_aligning/
#
# テルツェット・ディザスター
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 30 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # ヘイローン、ティアマットの対角に移動
        execute if score @s BF.EventTimer matches 26 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^ ~ 0
        execute if score @s BF.EventTimer matches 26 at @s facing entity @e[type=slime,tag=BE.EntityRoot] feet positioned ^ ^ ^-0.01 facing entity @e[type=slime,tag=BG.EntityRoot] feet positioned ^ ^ ^-0.01 facing entity @s feet rotated ~ 0 positioned ^ ^ ^-32 run tp @s ~ ~ ~ ~ 0

# ヘルファイア
    # 詠唱
        execute if score @s BF.EventTimer matches 70 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
        execute if score @s BF.EventTimer matches 90 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
    # ターゲット決定
        execute if score @s BF.EventTimer matches 90..319 run function asset:mob/0411.behemoth/tick/util/check_target
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 90..319 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
    # 攻撃範囲予告
        execute if score @s BF.EventTimer matches 90..206 at @p[tag=BF.MainTarget] run particle soul_fire_flame ~ ~0.3 ~ 0.1 0.1 0.1 0.2 2
        execute if score @s BF.EventTimer matches 90..305 at @p[tag=BF.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/particle_attack_area
    # 発動
        # 1
            execute if score @s BF.EventTimer matches 211 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
            execute if score @s BF.EventTimer matches 226 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
        # 2
            execute if score @s BF.EventTimer matches 242 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
            execute if score @s BF.EventTimer matches 257 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
        # 3
            execute if score @s BF.EventTimer matches 273 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
            execute if score @s BF.EventTimer matches 288 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
        # 4
            execute if score @s BF.EventTimer matches 304 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
            execute if score @s BF.EventTimer matches 319 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 360 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 446 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 445 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 486.. run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/end
