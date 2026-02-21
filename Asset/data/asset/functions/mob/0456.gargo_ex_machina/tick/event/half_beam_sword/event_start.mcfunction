#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_start
#
# 半面焼きビーム + 回転斬り
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_sword_start/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 24 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 攻撃方向をランダムに決定
        execute if score @s CO.EventTimer matches 1 if predicate lib:random_pass_per/50 run tag @s add CO.Skill.HalfBeam.IsRight
    # 予告
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 run tellraw @a [{"text":"【石像の","color": "dark_purple","bold": true},{"text":" 右眼 ","color": "red","bold": true},{"text":"が光り始めた!!】","color": "dark_purple","bold": true}]
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 run tellraw @a [{"text":"【石像の","color": "dark_purple","bold": true},{"text":" 左眼 ","color": "blue","bold": true},{"text":"が光り始めた!!】","color": "dark_purple","bold": true}]

# 溜めに移行
    execute if score @s CO.EventTimer matches 26.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/start_charging
