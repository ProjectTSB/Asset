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

# # フレアブレス
#     # 詠唱
#         # アニメーション再生
#             execute if score @s BF.EventTimer matches 71 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
#             execute if score @s BF.EventTimer matches 90 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
#         # ターゲットを向く
#             execute if score @s BF.EventTimer matches 71..270 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
#         # 口元に炎の予兆
#             execute if score @s BF.EventTimer matches 71..374 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.data] run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_flame.m with entity @s data.locators.pos_head
#     # 攻撃
#         # アニメーション再生
#             execute if score @s BF.EventTimer matches 300 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
#             execute if score @s BF.EventTimer matches 335 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
#             execute if score @s BF.EventTimer matches 370 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
#         # ターゲットを向く
#             execute if score @s BF.EventTimer matches 325 at @p[tag=BF.MainTarget] run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BF.Temp.AttackRotation"]}
#             execute if score @s BF.EventTimer matches 335..350 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
#             execute if score @s BF.EventTimer matches 360 at @p[tag=BF.MainTarget] run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["BF.Temp.AttackRotation"]}
#             execute if score @s BF.EventTimer matches 370..385 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
#         # 攻撃範囲表示
#             execute if score @s BF.EventTimer matches 305 at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
#             execute if score @s BF.EventTimer matches 340 at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
#             execute if score @s BF.EventTimer matches 375 at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
#         # 攻撃
#             execute if score @s BF.EventTimer matches 315 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
#             execute if score @s BF.EventTimer matches 350 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
#             execute if score @s BF.EventTimer matches 385 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
#     # 演出
#         execute if score @s BF.EventTimer matches 71 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
#         execute if score @s BF.EventTimer matches 300 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
#         execute if score @s BF.EventTimer matches 335 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
#         execute if score @s BF.EventTimer matches 370 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 426 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 446 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 445 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 486.. run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/end
