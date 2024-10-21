#> asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick/
#
# フェイズ移行攻撃: とってもコマンドが長い
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/skill_active
#   asset:mob/1004.tultaria/tick/

# 予備動作
    execute if entity @s[tag=!RW.Transition.Phase2.Attack] run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick/windup
# 攻撃
    execute if entity @s[tag=RW.Transition.Phase2.Attack] run function asset:mob/1004.tultaria/tick/skill/phase2/platform_attack/tick/attack
