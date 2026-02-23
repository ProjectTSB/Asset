#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/end
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/

# タグ消去
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.UpperShot

# 攻撃地点消去
    kill @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80]

# 待機モーション再生
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/idle_shot/tween {duration:1, to_frame: 1}

# 行動
    # function asset:mob/0410.heiloang/tick/act/
