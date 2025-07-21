#> asset:mob/0410.heiloang/tick/event/rage/end
#
# 覚醒
#
# @within asset:mob/0410.heiloang/tick/event/rage/

# タグ消去
    tag @s remove BE.Skill.Rage
    tag @a remove BE.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# フェーズ移行
    function asset:mob/0410.heiloang/tick/act/phase_3/change_phase
    function asset:mob/0410.heiloang/tick/act/
