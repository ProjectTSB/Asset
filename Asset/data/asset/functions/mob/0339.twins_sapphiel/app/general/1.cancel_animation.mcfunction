#> asset:mob/0339.twins_sapphiel/app/general/1.cancel_animation
#
# よく使用する処理、アニメーションをキャンセルする
#
# @within
#    function asset:mob/0339.twins_sapphiel/**

# 対象のanimated javaモデルを紐づけ
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0339.twins_sapphiel/tick/app/1.start_link_model.m with storage asset:temp 9E
    data remove storage asset:temp 9E.Uid

# 再生停止
    execute as @e[type=item_display,tag=9F.ModelRoot.Target] run function animated_java:twins_sapphiel/animations/pause_all
    scoreboard players set @s 9F.AnimationTimer 0

# タグ消去
    tag @s remove 9F.Skill.Start
    tag @s remove 9F.Skill.Hg.Start
    tag @s remove 9F.Skill.Hg.Idle
    tag @s remove 9F.Skill.Hg.Shot
    tag @s remove 9F.Skill.Hg.Shot.MoveRight
    tag @s remove 9F.Skill.Hg.Shot.MoveLeft
    tag @s remove 9F.Skill.Hg.Riderkick
    tag @s remove 9F.Skill.Hg.Spinkick
    tag @s remove 9F.Skill.Hg.KickCombo
    tag @s remove 9F.Skill.Hg.Punch
    tag @s remove 9F.Skill.Hg.Lowkick
    tag @s remove 9F.Skill.Hg.Stepshot
    tag @s remove 9F.Skill.Hg.Warp.Shot
    tag @s remove 9F.Skill.Hg.Warp.Heelspin
    tag @s remove 9F.Skill.Hg.Warp.Heeloff
    tag @s remove 9F.Skill.Hg.Fullburst.Start
    tag @s remove 9F.Skill.Hg.Fullburst.Main
    tag @s remove 9F.Skill.Hg.Fullburst.End
    tag @s remove 9F.Skill.Hg.Reload

    tag @s remove 9F.Skill.Sync.Goalong
    tag @s remove 9F.Skill.Sync.Crossfire
    tag @s remove 9F.Skill.Sync.Crossfire.Pursuit

# 終了
    tag @e[type=item_display,tag=9F.ModelRoot.Target] remove 9F.ModelRoot.Target
