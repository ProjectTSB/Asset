#> asset:mob/0411.behemoth/tick/event/flarebreath/
#
# フレアブレス
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
        execute if score @s BF.EventTimer matches 20 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 1..80 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
    # 口元に炎の予兆
        execute if score @s BF.EventTimer matches 1..174 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_flame.m with entity @s data.locators.pos_head

# 攻撃
    # アニメーション再生
        execute if score @s BF.EventTimer matches 100 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
        execute if score @s BF.EventTimer matches 135 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
        execute if score @s BF.EventTimer matches 170 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 1..60 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
        execute if score @s BF.EventTimer matches 115 if predicate api:global_vars/difficulty/max/normal facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
        execute if score @s BF.EventTimer matches 150 if predicate api:global_vars/difficulty/max/normal facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
        execute if score @s BF.EventTimer matches 125 if predicate api:global_vars/difficulty/min/hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
        execute if score @s BF.EventTimer matches 160 if predicate api:global_vars/difficulty/min/hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
        execute if score @s BF.EventTimer matches 135..150 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
        execute if score @s BF.EventTimer matches 170..185 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
    # 攻撃範囲表示
        execute if score @s BF.EventTimer matches 75 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
        execute if score @s BF.EventTimer matches 115 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
        execute if score @s BF.EventTimer matches 150 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
        execute if score @s BF.EventTimer matches 95 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
        execute if score @s BF.EventTimer matches 130 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
        execute if score @s BF.EventTimer matches 165 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
    # 攻撃
        execute if score @s BF.EventTimer matches 115 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
        execute if score @s BF.EventTimer matches 150 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
        execute if score @s BF.EventTimer matches 185 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack

# 演出
    execute if score @s BF.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 135 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 170 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 227.. run function asset:mob/0411.behemoth/tick/event/flarebreath/end
