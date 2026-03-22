#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_start
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 待機時間が未設定の場合、指定する
    execute if score @s CO.EventTimer matches 1 unless score @s CO.PreTimer matches 32.. run scoreboard players set @s CO.PreTimer 100

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_start/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 13 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 演出
        execute if score @s CO.EventTimer matches 15 run particle block quartz_block ~ ~0.5 ~ 2 0.1 2 0 30

# 目的地決定
    # 目的地が指定されていない場合、ターゲット位置に移動
        execute if score @s CO.EventTimer matches 25 unless entity @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80] positioned as @p[tag=CO.MainTarget] run summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.Destination"],Duration:80}
    # 移動
        execute if score @s CO.EventTimer matches 25 positioned as @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80] run tp @s ~ ~ ~
        execute if score @s CO.EventTimer matches 25 at @s run function asset:mob/0456.gargo_ex_machina/tick/util/move_to_ground

# モデルを合わせる
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 無敵化
    execute if score @s CO.EventTimer matches 20 run function asset:mob/0456.gargo_ex_machina/tick/util/start_invulnerable

# 攻撃に移行
    execute if score @s CO.EventTimer >= @s CO.PreTimer run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/start_attack
