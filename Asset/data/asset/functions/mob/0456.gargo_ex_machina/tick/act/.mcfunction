#> asset:mob/0456.gargo_ex_machina/tick/act/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# debug
    # return 0

# 行動リセット
    function asset:mob/0456.gargo_ex_machina/tick/util/remove_animation_tag
    # execute as @e[type=item_display,tag=CO.ModelRoot,distance=..30,sort=nearest,limit=1] unless entity @s[tag=aj.gargo_ex_machina.animation.idle.playing] run function animated_java:gargo_ex_machina/animations/idle/tween {duration:1, to_frame: 1}

# 待機時間仮設定
    scoreboard players set @e[type=item_display,tag=CO.ModelRoot,distance=..30] CO.EventTimer 0
    scoreboard players set @e[type=item_display,tag=CO.ModelRoot,distance=..30] CO.IdleTimer 2

# 行動回数増加
    scoreboard players set @s CO.EventTimer -1
    scoreboard players add @s CO.Counter 1

# 前半戦
    execute unless entity @s[tag=CO.IsLatter] run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/

# 後半
    execute if entity @s[tag=CO.IsLatter] run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# say act
