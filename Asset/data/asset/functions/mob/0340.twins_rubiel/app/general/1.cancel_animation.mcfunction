#> asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
#
# よく使用する処理、アニメーションをキャンセルする
#
# @within
#    function asset:mob/0340.twins_rubiel/**

# 対象のanimated javaモデルを紐づけ
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0340.twins_rubiel/tick/app/1.start_link_model.m with storage asset:temp 9E
    data remove storage asset:temp 9E

# 再生停止
    execute as @e[type=item_display,tag=9G.ModelRoot.Target] run function animated_java:twins_rubiel/animations/pause_all
    scoreboard players set @s 9G.AnimationTimer 0

# タグ消去
    tag @s remove 9G.Skill.Start
    tag @s remove 9G.Skill.Damage.Start
    tag @s remove 9G.Skill.Damage.Down
    tag @s remove 9G.Skill.Damage.End
    tag @s remove 9G.Skill.Damage.Stun.Start
    tag @s remove 9G.Skill.Damage.Stun
    tag @s remove 9G.Skill.Cover
    tag @s remove 9G.Skill.Kt.Start
    tag @s remove 9G.Skill.Kt.Idle
    tag @s remove 9G.Skill.Kt.Guard
    tag @s remove 9G.Skill.Kt.Moveslash
    tag @s remove 9G.Skill.Kt.MoveToSpear
    tag @s remove 9G.Skill.Kt.Damage.Spear
    tag @s remove 9G.Skill.Kt.VacuSlash
    tag @s remove 9G.Skill.Kt.Doubleslash
    tag @s remove 9G.Skill.Kt.Warp
    tag @s remove 9G.Skill.Kt.Sheathe
    tag @s remove 9G.Skill.Kt.Sheathe.Wait.Jumonji
    tag @s remove 9G.Skill.Kt.Draw.Jumonji
    tag @s remove 9G.Skill.Kt.Damage.Draw
    tag @s remove 9G.Skill.Kt.Sheathe.Counter
    tag @s remove 9G.Skill.Kt.JumpSlash
    tag @s remove 9G.Skill.Kt.Horizon
    tag @s remove 9G.Skill.Kt.Horizon.Double
    tag @s remove 9G.Skill.Kt.DashAttack
    tag @s remove 9G.Skill.Kt.BackJump
    tag @s remove 9G.Skill.Kt.Throw.Start
    tag @s remove 9G.Skill.Kt.Throw
    tag @s remove 9G.Skill.Sc.Start
    tag @s remove 9G.Skill.Sc.Idle
    tag @s remove 9G.Skill.Sc.Warp
    tag @s remove 9G.Skill.Sync.Goalong
    tag @s remove 9G.Skill.Sync.Crossfire
    tag @s remove 9G.Skill.Sync.Crossfire.Upper
    tag @s remove 9G.Skill.Sync.Throw

# 終了
    tag @e[type=item_display,tag=9G.ModelRoot.Target] remove 9G.ModelRoot.Target
