#> asset:mob/0410.heiloang/tick/event/heil_disaster/
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster_cast
    # 演出
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 119 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster
    # 攻撃
        # 位置決定
            execute if score @s BE.EventTimer matches 124 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
            execute if score @s BE.EventTimer matches 139 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
            execute if score @s BE.EventTimer matches 154 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
            execute if score @s BE.EventTimer matches 169 at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/heil_disaster/summon_attack_pos
        # 攻撃
            execute if score @s BE.EventTimer matches 125 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 130 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 135 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 140 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 145 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 150 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 155 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 160 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 165 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 170 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 175 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack
            execute if score @s BE.EventTimer matches 180 run function asset:mob/0410.heiloang/tick/event/heil_disaster/attack

# 終了
    execute if score @s BE.EventTimer matches 214.. run function asset:mob/0410.heiloang/tick/event/heil_disaster/end
