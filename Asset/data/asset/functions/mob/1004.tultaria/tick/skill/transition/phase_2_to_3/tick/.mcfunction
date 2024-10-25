#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/
#
# フェイズ移行攻撃: とってもコマンドが長い
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/skill_active
#   asset:mob/1004.tultaria/tick/

# 予備動作
    execute if entity @s[tag=!RW.Transition.Phase3.Attack] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/windup
# 攻撃
    execute if entity @s[tag=RW.Transition.Phase3.Attack] run function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/
