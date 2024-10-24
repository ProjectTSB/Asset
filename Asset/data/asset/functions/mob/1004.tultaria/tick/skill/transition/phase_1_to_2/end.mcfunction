#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/end
#
# 終了時の動作
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# 無敵解除
    data modify entity @s Invulnerable set value 0b

# タグ調整、フェイズ2開始
    scoreboard players add @s RW.Phase 1
    tag @s remove RW.Transition.Phase2
    tag @s remove RW.InAction

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/base_move/reset
