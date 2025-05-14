#> asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/
#
# テルツェット・サクセッション 連続ダイブ
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 336 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 335 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# 無敵化
    execute if score @s BF.EventTimer matches 336 run function asset:mob/0411.behemoth/tick/util/end_invulnerable

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 376.. run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/end


# 以下、normal以上のみ
# 中心に移動し、フラッテン実行
    execute if predicate api:global_vars/difficulty/easy run return 0

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 81 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点に移動
        execute if score @s BF.EventTimer matches 81 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^ ~ 0
        execute if score @s BF.EventTimer matches 81 at @s run tp @e[type=item_display,tag=BF.ModelRoot] ~ ~ ~ ~ 0

# フラッテン
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 121 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
            execute if score @s BF.EventTimer matches 140 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 121..215 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
    # 攻撃
        # アニメーション再生
            execute if score @s BF.EventTimer matches 220 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/5_flatten
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 220..235 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
        # 移動
            execute if score @s BF.EventTimer matches 220..235 if block ~ ~-0.1 ~ #lib:no_collision run tp @s ~ ~-0.1 ~
            execute if score @s BF.EventTimer matches 220..225 at @s run tp @s ^ ^ ^0.2
            execute if score @s BF.EventTimer matches 226..230 at @s run tp @s ^ ^ ^0.4
            execute if score @s BF.EventTimer matches 251..260 run tp @s ~ ~0.05 ~
        # 攻撃範囲表示
            # execute if score @s BF.EventTimer matches 225 positioned ^ ^ ^4 run function asset:mob/0411.behemoth/tick/event/flatten/prediction
            execute if score @s BF.EventTimer matches 205 if predicate api:global_vars/difficulty/max/2_hard at @s positioned ^ ^ ^4 run function asset:mob/0411.behemoth/tick/event/flatten/prediction_long
            execute if score @s BF.EventTimer matches 225 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ^ ^ ^4 run function asset:mob/0411.behemoth/tick/event/flatten/prediction
        # 攻撃
            execute if score @s BF.EventTimer matches 235 positioned ^ ^0.5 ^2 run function asset:mob/0411.behemoth/tick/event/flatten/attack
    # 演出
        execute if score @s BF.EventTimer matches 121 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 220 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 260 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 278 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start

# 無敵化
    execute if score @s BF.EventTimer matches 81 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 278 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
