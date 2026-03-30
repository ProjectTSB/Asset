#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/continue
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_attack

# タグ更新
    scoreboard players set @s CO.EventTimer 5
    tag @s remove CO.Skill.SuperJump.Attack
    tag @s add CO.Skill.SuperJump

# アニメーション再生
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_start/tween {duration:5, to_frame: 10}
