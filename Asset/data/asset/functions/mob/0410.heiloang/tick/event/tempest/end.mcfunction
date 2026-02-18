#> asset:mob/0410.heiloang/tick/event/tempest/end
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/tempest/

# タグ消去
    tag @s remove BE.Skill.Tempest
    tag @a[tag=BE.AttackTarget,limit=1] remove BE.AttackTarget

# 待機モーション再生
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動
    function asset:mob/0410.heiloang/tick/act/
