#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/end
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/

# タグ消去
    tag @s remove BE.Skill.Ehd
    kill @e[type=area_effect_cloud,tag=BE.Temp.EhdPosition,distance=..100]

# 待機モーション再生
    # execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 移動に遷移
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.MoveAfterEhd
