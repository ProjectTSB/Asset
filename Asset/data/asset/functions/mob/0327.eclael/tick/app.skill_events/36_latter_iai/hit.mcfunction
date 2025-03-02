#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/hit
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2.5
    data modify storage lib: args.dy set value 3
    data modify storage lib: args.dz set value 6
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    execute positioned ^ ^ ^6 run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add 93.Skill.IaiMove.Hit
    tag @a[tag=DXYZ] remove DXYZ
