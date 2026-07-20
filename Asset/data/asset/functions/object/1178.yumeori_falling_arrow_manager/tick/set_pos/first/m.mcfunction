#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0

# rotatableDXYZで判定(壁貫通は考慮しない)
# dxは細め
    data modify storage lib: Args.dx set from storage asset:context this.AttackRange.FirstX
    data modify storage lib: Args.dy set from storage asset:context this.AttackRange.Y
    data modify storage lib: Args.dz set from storage asset:context this.AttackRange.Z
    data modify storage lib: Args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..32]"
    $execute rotated ~ 0 positioned ^ ^ ^$(Z) run function lib:rotatable_dxyz/m with storage lib: Args

# DXYZのtag持ちの中で一番近い奴をターゲットにする
    execute at @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=nearest,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos

# DXYZがいなければ通常通りターゲッティングする
    execute unless entity @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=nearest,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target.m

# リセット
    tag @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32] remove DXYZ
