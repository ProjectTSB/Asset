#> asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
#
# よく使用する処理、アニメーションをキャンセルする
#
# @within
#    function asset:mob/0340.twins_rubiel/**

# 対象のanimated javaモデルを紐づけ
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0340.twins_rubiel/tick/app/1.start_link_model.m with storage asset:temp 9E
    data remove storage asset:temp 9E.Uid

# 再生停止
    execute as @e[type=item_display,tag=9G.ModelRoot.Target] run function animated_java:twins_rubiel/animations/pause_all
    scoreboard players set @s 9G.AnimationTimer 0

# タグ消去
    tag @s remove 9G.Skill.Start
    tag @s remove 9G.Skill.Kt.Idle

# 終了
    tag @e[type=item_display,tag=9G.ModelRoot.Target] remove 9F.ModelRoot.Target
