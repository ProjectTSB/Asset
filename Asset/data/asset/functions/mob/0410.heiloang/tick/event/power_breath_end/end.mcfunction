#> asset:mob/0410.heiloang/tick/event/power_breath_end/end
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/power_breath_end/

# タグ消去
    tag @s remove BE.Skill.PowerBreath.End
    tag @a[tag=BE.MainTarget,limit=1] remove BE.MainTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動
    function asset:mob/0410.heiloang/tick/act/
