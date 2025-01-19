#> asset:mob/0412.tiamat/tick/event/terzetto_aligning/
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の左右どちらかに移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^ ~-90 0
        execute if score @s BG.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^ ~90 0

# アダマントスパイク
    # 詠唱
        # アニメーション再生
            execute if score @s BG.EventTimer matches 71 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
            execute if score @s BG.EventTimer matches 90 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
            execute if score @s BG.EventTimer matches 335 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/4_breath
        # 攻撃
            execute if score @s BG.EventTimer matches 90 at @e[type=marker,tag=BE.CenterPosition] facing entity @s feet rotated ~ 0 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/summon_attack_position
            execute if score @s BG.EventTimer matches 90 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] positioned as @s run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/prediction
            execute if score @s BG.EventTimer matches 350 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack
            execute if score @s BG.EventTimer matches 360 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] positioned as @s run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/prediction_line

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 391 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
        execute if score @s BG.EventTimer matches 421 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 446 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 445 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 486.. run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/end
