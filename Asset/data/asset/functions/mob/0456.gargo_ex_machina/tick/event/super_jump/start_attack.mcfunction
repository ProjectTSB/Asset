#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/start_attack
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_start

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.SuperJump
    tag @s add CO.Skill.SuperJump.Attack
