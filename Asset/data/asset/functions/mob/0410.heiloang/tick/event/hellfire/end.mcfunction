#> asset:mob/0410.heiloang/tick/event/hellfire/end
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/hellfire/

# タグ消去
    tag @s remove BE.Skill.Hellfire
    tag @a remove BE.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
