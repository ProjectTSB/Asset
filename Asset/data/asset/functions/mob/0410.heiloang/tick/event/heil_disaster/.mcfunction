#> asset:mob/0410.heiloang/tick/event/heil_disaster/
#
# ヘイルディザスター
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster_cast
    # 演出
        execute if score @s BE.EventTimer matches 10..118 run particle flame ~ ~1 ~ 4 4 4 0.1 1 force
        execute if score @s BE.EventTimer matches 10..118 run particle cloud ~ ~1 ~ 4 4 4 0.1 1 force
        execute if score @s BE.EventTimer matches 10..118 run particle dust 1 0.855 0.376 4 ~ ~1 ~ 4 4 4 0.1 1 force

# 全属性攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 119 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster
    # 攻撃
        # 位置決定
            execute if score @s BE.EventTimer matches 115 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~-0.5 ~ run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
        # 攻撃
            execute if score @s BE.EventTimer matches 120 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_fire
            execute if score @s BE.EventTimer matches 122 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_fire
            execute if score @s BE.EventTimer matches 124 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_fire
            execute if score @s BE.EventTimer matches 126 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_fire
            execute if score @s BE.EventTimer matches 128 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_fire
            execute if score @s BE.EventTimer matches 170 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
            execute if score @s BE.EventTimer matches 172 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
            execute if score @s BE.EventTimer matches 174 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
            execute if score @s BE.EventTimer matches 176 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
            execute if score @s BE.EventTimer matches 178 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_ice
            execute if score @s BE.EventTimer matches 200 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_thunder
            execute if score @s BE.EventTimer matches 205 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_thunder
            execute if score @s BE.EventTimer matches 210 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_thunder
            execute if score @s BE.EventTimer matches 215 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack_thunder

# なぎはらい火炎放射
    # アニメーション再生
        execute if score @s BE.EventTimer matches 215 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/6_sweep_breath
    # ギミック用の跳躍力増加付与
        execute if score @s BE.EventTimer matches 215 run effect give @a[distance=..80] jump_boost 9 5
    # 予告
        execute if score @s BE.EventTimer matches 219 at @e[type=marker,tag=BE.CenterPosition] rotated ~-90 ~ positioned ^ ^ ^19.5 rotated ~180 ~ run function asset:mob/0410.heiloang/tick/event/sweep/prediction
    # 攻撃
        execute if score @s BE.EventTimer matches 262..319 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.data] run function asset:mob/0410.heiloang/tick/event/sweep/get_attack_position.m with entity @s data.locators.locator_head
    # 演出
        execute if score @s BE.EventTimer matches 259 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.data] run function asset:mob/0410.heiloang/tick/event/sweep/text_start with entity @s data.locators.beam_start
        execute if score @s BE.EventTimer matches 259..319 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.data] run function asset:mob/0410.heiloang/tick/event/sweep/text with entity @s data.locators.beam_start
    # 角度
        execute if score @s BE.EventTimer matches 224 run tp @s ~ ~ ~ ~70 0
        execute if score @s BE.EventTimer matches 293..320 run tp @s ~ ~ ~ ~-8 ~
        execute if score @s BE.EventTimer matches 344 facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ~ ~ ~ ~ 0

# テンペスト
    # ターゲット決定
        execute if score @s BE.EventTimer matches 200 as @a[distance=..60,sort=random,limit=5] run tag @s add BE.AttackTarget
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 200 at @a[tag=BE.AttackTarget,distance=..80] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/tempest/attack
        execute if score @s BE.EventTimer matches 200..330 as @a[tag=BE.AttackTarget,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 200..330 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd

# リヒトブリッツェン
    # 待機
        execute if score @s BE.EventTimer matches 350 run scoreboard players set @s BE.Idle.Count 3
        execute if score @s BE.EventTimer matches 350 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
    # 攻撃位置予告
        execute if score @s BE.EventTimer matches 260 positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_circle_blitz_0
    # 攻撃
        # 1
            execute if score @s BE.EventTimer matches 320 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
            execute if score @s BE.EventTimer matches 340 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 340 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
        # 2
            execute if score @s BE.EventTimer matches 320 positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_circle_blitz_1
            execute if score @s BE.EventTimer matches 345 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_1
            execute if score @s BE.EventTimer matches 365 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 365 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
        # 3
            execute if score @s BE.EventTimer matches 350 positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_circle_blitz_2
            execute if score @s BE.EventTimer matches 370 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
            execute if score @s BE.EventTimer matches 390 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 390 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7

# 終了
    execute if score @s BE.EventTimer matches 390.. run function asset:mob/0410.heiloang/tick/event/heil_disaster/end
