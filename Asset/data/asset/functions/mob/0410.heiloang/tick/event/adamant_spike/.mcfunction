#> asset:mob/0410.heiloang/tick/event/adamant_spike/
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # ハード以上：ターゲット決定
        # execute if score @s BE.EventTimer matches 1 if predicate api:global_vars/difficulty/min/hard as @a[distance=..60,sort=random,limit=1] run tag @s add BE.MainTarget
    # 氷設置位置予告
        execute if score @s BE.EventTimer matches 23 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_aec
        execute if score @s BE.EventTimer matches 23..180 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition] run function asset:mob/0410.heiloang/tick/event/adamant_spike/particle_before
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 10..182 at @p[tag=BE.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/particle_attack_area
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/4_blizzard
    # 攻撃開始
        execute if score @s BE.EventTimer matches 100 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 116 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 132 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 148 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 164 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 180 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 196 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 212 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 228 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 244 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 230 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
        execute if score @s BE.EventTimer matches 246 at @e[type=area_effect_cloud,tag=BE.Temp.Adamant.SummonPosition,sort=arbitrary,limit=1] run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon
    # ハード以上：ヘヴンリースパイク
        # execute if score @s BE.EventTimer matches 105 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly
        # execute if score @s BE.EventTimer matches 121 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly
        # execute if score @s BE.EventTimer matches 137 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly
        # execute if score @s BE.EventTimer matches 153 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly
        # execute if score @s BE.EventTimer matches 169 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly
        # execute if score @s BE.EventTimer matches 185 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_heavenly

# 待機
    execute if score @s BE.EventTimer matches 208 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 248.. run function asset:mob/0410.heiloang/tick/event/adamant_spike/end
