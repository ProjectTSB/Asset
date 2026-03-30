#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/start_attack
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_start

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.SuperJump
    tag @s add CO.Skill.SuperJump.Attack

# 連続ジャンプ回数減算
    execute if score @s CO.JumpCount matches 1.. run scoreboard players remove @s CO.JumpCount 1
