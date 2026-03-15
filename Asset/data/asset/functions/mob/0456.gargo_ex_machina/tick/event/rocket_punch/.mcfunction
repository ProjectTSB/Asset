#> asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/
#
# ロケットパンチ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/summon_punch/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 9 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 演出
        execute if score @s CO.EventTimer matches 14 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.5
        execute if score @s CO.EventTimer matches 14 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.7
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 攻撃位置決定
        execute if score @s CO.EventTimer matches 14 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] positioned ^ ^ ^35 rotated ~180 0 run function asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/summon_aec
        execute if entity @s[tag=CO.Skill.RocketPunch.Cross] if score @s CO.EventTimer matches 14 at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~90 ~ positioned ^ ^ ^35 rotated ~180 0 run function asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/summon_aec
    # 召喚
        execute if score @s CO.EventTimer matches 14.. at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/summon_punch
        execute if score @s CO.EventTimer matches 40 run kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80]

# 終了
    execute if score @s CO.EventTimer matches 45.. run function asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/end
