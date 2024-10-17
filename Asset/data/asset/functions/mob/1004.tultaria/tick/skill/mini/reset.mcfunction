#> asset:mob/1004.tultaria/tick/skill/mini/reset
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/**

# 自身のモデルにモーションを再生させる
    #execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/return_to_neutral/play

# スキルのタグをリセットする
    function asset:mob/1004.tultaria/tick/reset/skill_tag

# 行動中タグを解除
    tag @s remove RW.InAction

# ミニ行動カウント増やす
    scoreboard players add @s RW.MiniSkillCount 1

# 行動カウントを満たしてなかったらミニのスキル選択
    execute if score @s RW.MiniSkillCount matches ..2 run function asset:mob/1004.tultaria/tick/base_move/skill_select/mini

# 行動カウント満たしてたらメインのスキル選択
    execute if score @s RW.MiniSkillCount matches 3.. run data modify storage lib: Argument.Bounds set value [[10d,10d],[0.0d,0.0d],[10d,10d]]
    execute if score @s RW.MiniSkillCount matches 3.. run function asset:mob/1004.tultaria/tick/base_move/teleport/
    execute if score @s RW.MiniSkillCount matches 3.. run function asset:mob/1004.tultaria/tick/base_move/skill_select/
