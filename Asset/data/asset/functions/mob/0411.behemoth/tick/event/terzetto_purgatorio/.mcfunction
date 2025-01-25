#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 前半
    # 移動
        # アニメーション再生
            execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
            execute if score @s BF.EventTimer matches 150 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
        # 中心点の後方に移動
            execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^-32 ~ 0
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 190 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
            execute if score @s BF.EventTimer matches 210 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
    # ロックオンフレアブレス
    #     # アニメーション再生
    #         execute if score @s BF.EventTimer matches 252 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/7_dive
    #     # 移動
    #         execute if score @s BF.EventTimer matches 267..274 at @s run tp @s ^ ^ ^2.8
    #         execute if score @s BF.EventTimer matches 275..288 at @s run tp @s ^ ^ ^2.1
    #         execute if score @s BF.EventTimer matches 289..297 at @s run tp @s ^ ^ ^1.5
    #     # 演出
    #         execute if score @s BF.EventTimer matches 267 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
    #         execute if score @s BF.EventTimer matches 267..288 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
    #         execute if score @s BF.EventTimer matches 267..288 at @s run particle soul_fire_flame ~ ~3 ~ 2 2 2 0.1 10
    #         execute if score @s BF.EventTimer matches 267..288 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    #     # 攻撃
    #         execute if score @s BF.EventTimer matches 252 at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/dive_prediction
    #         execute if score @s BF.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
    #         execute if score @s BF.EventTimer matches 271 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
    #         execute if score @s BF.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
    #         execute if score @s BF.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
    # # フレアダイブ追撃
    #     # 4箇所に攻撃地点設置
    #         execute if score @s BF.EventTimer matches 282 if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
    #         execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
    #         execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow
    #         execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
    #         execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 400.. run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/end
