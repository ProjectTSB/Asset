#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/select_target
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/m

# rotatableDXYZで判定(壁貫通は考慮しない)
    data modify storage lib: Args.dx set value 3
    data modify storage lib: Args.dy set value 10
    data modify storage lib: Args.dz set value 20
    data modify storage lib: Args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16]"
    execute rotated ~ 0 positioned ^ ^5 ^10 run function lib:rotatable_dxyz/m with storage lib: Args

# DXYZのtag持ちの中で一番近い奴をターゲットにする
    execute at @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=nearest,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/3.spread_pos

# DXYZがいなければ通常通りターゲッティングする
    execute unless entity @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=nearest,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.set_y.m with storage asset:context this.Pos

# リセット
    tag @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32] remove DXYZ
