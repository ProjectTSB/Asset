#> asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/end
#
# 終了時の動作
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_1_to_2/tick/attack

# 無敵解除
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable

# アニメ停止
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_3_right_loop/stop

# タグ調整、フェイズ2開始
    scoreboard players add @s RW.Phase 1
    tag @s add RW.CanElementChange
    tag @s remove RW.Transition.Phase2
    tag @s remove RW.InAction

# リセット、行動再開
    function asset:mob/1004.tultaria/tick/base_move/reset
