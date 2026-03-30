#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/end
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack_double

# タグ消去
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.SwordAttack.Attack
    tag @s remove CO.Skill.SwordAttack.Double

# 待機モーション再生
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/idle/tween {duration:1, to_frame: 1}

# 行動
    # function asset:mob/0410.heiloang/tick/act/
