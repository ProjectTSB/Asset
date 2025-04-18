#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/hit
#
# アニメーションのイベントハンドラ
#
# @within
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2.8
    data modify storage lib: args.dy set value 3
    data modify storage lib: args.dz set value 10
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    execute positioned ^ ^ ^10 run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 93.Skill.IaiMove.Hit
    tag @a[tag=DXYZ] remove DXYZ

# 移動速度低下
    data modify storage api: Argument.ID set value 67
    data modify storage api: Argument.Stack set value 20
    data modify storage api: Argument.Duration set value 25
    execute as @a[tag=93.Skill.IaiMove.Hit] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
