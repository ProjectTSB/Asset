#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/
#
# フェイズ移行攻撃: とってもコマンドが長い
#
# @within function
#   asset:mob/1004.tultaria/tick/base_move/skill_active
#   asset:mob/1004.tultaria/tick/

# 予備動作
    execute if entity @s[tag=!RW.Transition.Phase2.Attack] run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/windup
# 攻撃
    execute if entity @s[tag=RW.Transition.Phase2.Attack] run function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# モデルをプレイヤーに向ける
    execute at @s as @e[type=item_display,tag=RW.ModelRoot.Target,distance=..8,sort=nearest,limit=1] facing entity @p[gamemode=!spectator,distance=..128] eyes run tp @s ~ ~ ~ ~ 0
