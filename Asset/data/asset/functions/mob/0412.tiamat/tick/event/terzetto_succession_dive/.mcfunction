#> asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/
#
# テルツェット・サクセッション 連続ダイブ
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 336 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 335 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# 無敵化
    execute if score @s BG.EventTimer matches 336 run function asset:mob/0412.tiamat/tick/util/end_invulnerable

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 376.. run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/end

# 以下、normal以上のみ
# 外周に移動し、ヘルウィング実行
    execute if predicate api:global_vars/difficulty/easy run return 0

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 121 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の左方向に移動
        execute if score @s BG.EventTimer matches 121 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-28 ^ ^ ~-90 0
        execute if score @s BG.EventTimer matches 121 at @s run tp @e[type=item_display,tag=BG.ModelRoot] ~ ~ ~ ~ 0

# ヘルウィング
    # 詠唱
        # アニメーション再生
            execute if score @s BG.EventTimer matches 161 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
            execute if score @s BG.EventTimer matches 180 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
        # ターゲットを向く
            execute if score @s BG.EventTimer matches 161..230 run function asset:mob/0412.tiamat/tick/util/rotate_to_target
    # 攻撃
        # アニメーション再生
            execute if score @s BG.EventTimer matches 260 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/5_deathwing
        # 攻撃位置決定
            execute if score @s BG.EventTimer matches 230 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0412.tiamat/tick/event/hellwing/prediction_long
            execute if score @s BG.EventTimer matches 250 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/hellwing/prediction
        # 攻撃
            execute if score @s BG.EventTimer matches 275 positioned ~ ~-0.7 ~ run function asset:mob/0412.tiamat/tick/event/hellwing/attack
        # 演出
            execute if score @s BG.EventTimer matches 275 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=10] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect
            execute if score @s BG.EventTimer matches 277 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=10] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect
            execute if score @s BG.EventTimer matches 279 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=10] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect
    # 演出
        execute if score @s BG.EventTimer matches 161 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 260 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 276 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.
        execute if score @s BG.EventTimer matches 295 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 309 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start

# 無敵化
    execute if score @s BG.EventTimer matches 121 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 309 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
