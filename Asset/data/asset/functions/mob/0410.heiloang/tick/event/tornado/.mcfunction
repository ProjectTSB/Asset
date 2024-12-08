#> asset:mob/0410.heiloang/tick/event/tornado/
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 10..99 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/tornado/particle_attack_area
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃開始
        execute if score @s BE.EventTimer matches 100 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/tornado/summon
    # ハード以上：終了後、風弾落下
        # 位置決定
            execute if score @s BE.EventTimer matches 120 if predicate api:global_vars/difficulty/min/hard at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/tornado/summon_attack_pos
        execute if score @s BE.EventTimer matches 121 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 123 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 125 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 127 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 129 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 131 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 133 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 135 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 137 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 139 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 141 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        # 位置決定
            execute if score @s BE.EventTimer matches 150 if predicate api:global_vars/difficulty/min/hard at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/tornado/summon_attack_pos
        execute if score @s BE.EventTimer matches 151 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 153 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 155 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 157 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 159 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 161 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 163 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 165 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 167 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 169 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
        execute if score @s BE.EventTimer matches 171 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/summon_wind_burst
    # 中心点回転
        execute if score @s BE.EventTimer matches 101 as @e[type=marker,tag=BE.CenterPosition] at @s facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 終了
    execute if score @s BE.EventTimer matches 175.. run function asset:mob/0410.heiloang/tick/event/tornado/end
