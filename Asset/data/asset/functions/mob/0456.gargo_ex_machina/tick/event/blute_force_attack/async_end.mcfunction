#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_end
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_tutorial
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_spin
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_spin_inv
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_exa
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_exa_inv
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_half
# @within asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_half_inv

# タイマーリセット
    scoreboard players reset @s CO.EventTimer.BluteForce

# タグ消去
    tag @s remove CO.Skill.BluteForce.Async
    tag @s remove CO.Skill.BluteForce.Pt.Tutorial
    tag @s remove CO.Skill.BluteForce.Pt.Spin
    tag @s remove CO.Skill.BluteForce.Pt.SpinInv
    tag @s remove CO.Skill.BluteForce.Pt.Exa
    tag @s remove CO.Skill.BluteForce.Pt.ExaInv
    tag @s remove CO.Skill.BluteForce.Pt.Half
    tag @s remove CO.Skill.BluteForce.Pt.ExaInv
