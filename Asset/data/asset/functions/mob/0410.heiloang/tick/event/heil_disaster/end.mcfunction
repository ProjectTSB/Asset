#> asset:mob/0410.heiloang/tick/event/heil_disaster/end
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# タグ消去
    tag @s remove BE.Skill.HeilDisaster
    tag @a[tag=BE.MainTarget,limit=1] remove BE.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動
    function asset:mob/0410.heiloang/tick/act/
