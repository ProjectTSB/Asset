#> asset:mob/0410.heiloang/tick/event/plamet/
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 急降下攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/9_1_plamet
    # ターゲット位置に移動
        execute if score @s BE.EventTimer matches 1..237 run function asset:mob/0410.heiloang/tick/util/check_target_hate
        execute if score @s BE.EventTimer matches 32 run function asset:mob/0410.heiloang/tick/event/plamet/move
    # 攻撃
        execute if score @s BE.EventTimer matches 72 run function asset:mob/0410.heiloang/tick/event/plamet/attack_plamet
    # 対象を向く
        execute if score @s BE.EventTimer matches 1 run tag @a[tag=BE.HateTarget] add BE.MainTarget
        execute if score @s BE.EventTimer matches 1..34 at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
        execute if score @s BE.EventTimer matches 35 run tag @a[tag=BE.MainTarget] remove BE.MainTarget
    # 追撃
        execute if score @s BE.EventTimer matches 72 run function asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_pursuit_0
        execute if score @s BE.EventTimer matches 92 run function asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_pursuit_1
        execute if score @s BE.EventTimer matches 115 run function asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_pursuit_2
        execute if score @s BE.EventTimer matches 83 at @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/plamet/attack_pursuit
        execute if score @s BE.EventTimer matches 113 at @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/plamet/attack_pursuit
        execute if score @s BE.EventTimer matches 143 at @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/plamet/attack_pursuit
# テンペストダイブ
    # アニメーション再生
        execute if score @s BE.EventTimer matches 121 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/9_2_plamet_dive
    # 対象を向く
        execute if score @s BE.EventTimer matches 114 if predicate api:global_vars/difficulty/max/2_hard at @p[tag=BE.HateTarget] run function asset:mob/0410.heiloang/tick/event/plamet/set_dive_target
        execute if score @s BE.EventTimer matches 121 if predicate api:global_vars/difficulty/min/3_blessless at @p[tag=BE.HateTarget] run function asset:mob/0410.heiloang/tick/event/plamet/set_dive_target
        execute if score @s BE.EventTimer matches 121..138 at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target_aec
        execute if score @s BE.EventTimer matches 138 at @s positioned ~ ~-7 ~ run function asset:mob/0410.heiloang/tick/event/plamet/dive_prediction
    # 移動
        execute if score @s BE.EventTimer matches 128..135 at @s run tp @s ^ ^1 ^-3
        execute if score @s BE.EventTimer matches 136..145 at @s run tp @s ^ ^-0.5 ^-1
        execute if score @s BE.EventTimer matches 148..158 at @s run tp @s ^ ^ ^4
        execute if score @s BE.EventTimer matches 159..165 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 166..191 at @s run tp @s ^ ^ ^1.5
    # 攻撃
        execute if score @s BE.EventTimer matches 152 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/plamet/attack_dive
        execute if score @s BE.EventTimer matches 156 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/plamet/attack_dive
        execute if score @s BE.EventTimer matches 160 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/plamet/attack_dive
        execute if score @s BE.EventTimer matches 164 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/plamet/attack_dive
    # 演出
        execute if score @s BE.EventTimer matches 150 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 150..168 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 150..168 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
    # 中心点回転
        execute if score @s BE.EventTimer matches 191 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/plamet/turn
    # 初期位置に戻る
        execute if score @s BE.EventTimer matches 191 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run data modify entity @s teleport_duration set value 6
        execute if score @s BE.EventTimer matches 201 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
        execute if score @s BE.EventTimer matches 220 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run data modify entity @s teleport_duration set value 1
    # テンペスト配置
        execute if score @s BE.EventTimer matches 25 if predicate api:global_vars/difficulty/min/2_hard as @a[tag=!PlayerShouldInvulnerable,distance=..60,sort=random,limit=3] run tag @s add BE.AttackTarget
        execute if score @s BE.EventTimer matches 25 at @a[tag=BE.AttackTarget,distance=..80] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/plamet/attack_tempest
        execute if score @s BE.EventTimer matches 130..157 as @a[tag=BE.AttackTarget,tag=!PlayerShouldInvulnerable,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 130..157 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd
# リヒトブリッツェン
    # 攻撃位置決定
        execute if score @s BE.EventTimer matches 25 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/plamet/set_attack_position_blitz
        execute if score @s BE.EventTimer matches 25 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=area_effect_cloud,tag=BE.Temp.Blitz.SummonPosition] at @s run function asset:mob/0410.heiloang/tick/event/plamet/summon_circle_blitz
    # 攻撃
        execute if score @s BE.EventTimer matches 165 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=area_effect_cloud,tag=BE.Temp.Blitz.SummonPosition] run function asset:mob/0410.heiloang/tick/event/plamet/attack_blitz
        execute if score @s BE.EventTimer matches 185 if predicate api:global_vars/difficulty/min/3_blessless run summon lightning_bolt ~ ~100 ~
        execute if score @s BE.EventTimer matches 185 if predicate api:global_vars/difficulty/min/3_blessless run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7

# モデルを自身の位置に移動
    execute if score @s BE.EventTimer matches 35..191 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
    execute if score @s BE.EventTimer matches 201 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
    execute if score @s BE.EventTimer matches 201 at @s run tp @s ^ ^ ^6 ~ ~

# 無敵化
    execute if score @s BE.EventTimer matches 1 run function asset:mob/0410.heiloang/tick/util/start_invulnerable
    execute if score @s BE.EventTimer matches 72 run function asset:mob/0410.heiloang/tick/util/end_invulnerable
    execute if score @s BE.EventTimer matches 191 run function asset:mob/0410.heiloang/tick/util/start_invulnerable
    execute if score @s BE.EventTimer matches 201 run function asset:mob/0410.heiloang/tick/util/end_invulnerable

# 終了
    execute if score @s BE.EventTimer matches 237.. run function asset:mob/0410.heiloang/tick/event/plamet/end
