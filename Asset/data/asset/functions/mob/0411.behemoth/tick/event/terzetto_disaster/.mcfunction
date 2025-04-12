#> asset:mob/0411.behemoth/tick/event/terzetto_disaster/
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
    # 中心点の右方向に移動
        execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^26 ^ ^ ~90 0
        execute if score @s BF.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BF.ModelRoot] ~ ~ ~ ~ 0

# フレアブレス
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 71 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
            execute if score @s BF.EventTimer matches 90 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 71..270 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
        # 口元に炎の予兆
            execute if score @s BF.EventTimer matches 71..374 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_flame.m with entity @s data.locators.pos_head
    # 攻撃
        # アニメーション再生
            execute if score @s BF.EventTimer matches 300 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
            execute if score @s BF.EventTimer matches 335 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
            execute if score @s BF.EventTimer matches 370 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 315 if predicate api:global_vars/difficulty/max/normal facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 350 if predicate api:global_vars/difficulty/max/normal facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 325 if predicate api:global_vars/difficulty/min/hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 360 if predicate api:global_vars/difficulty/min/hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 335..350 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
            execute if score @s BF.EventTimer matches 370..385 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
        # 攻撃範囲表示
            execute if score @s BF.EventTimer matches 275 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 315 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 350 if predicate api:global_vars/difficulty/max/normal at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 295 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
            execute if score @s BF.EventTimer matches 330 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
            execute if score @s BF.EventTimer matches 365 if predicate api:global_vars/difficulty/min/hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
        # 攻撃
            execute if score @s BF.EventTimer matches 315 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
            execute if score @s BF.EventTimer matches 350 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
            execute if score @s BF.EventTimer matches 385 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
    # 演出
        execute if score @s BF.EventTimer matches 71 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 300 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 335 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 370 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 426 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 446 unless predicate api:global_vars/difficulty/easy as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 445 unless predicate api:global_vars/difficulty/easy at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BF.EventTimer matches 1 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 30 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 426 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 446 run function asset:mob/0411.behemoth/tick/util/end_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 486.. run function asset:mob/0411.behemoth/tick/event/terzetto_disaster/end
