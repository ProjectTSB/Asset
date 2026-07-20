#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target.m
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m

# rotatable_Dxyzで判定
# 横は太め
    data modify storage lib: Args.dx set value 10
    data modify storage lib: Args.dy set value 10
    data modify storage lib: Args.dz set from storage asset:context this.Range
    data modify storage lib: Args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..32]"
    $execute rotated ~ 0 positioned ^ ^5 ^$(HalfRange) run function lib:rotatable_dxyz/m with storage lib: Args

# DXYZのtag持ちの中のランダムな奴をターゲットにする
    execute at @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=random,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos

# DXYZがいなければもうなんでもいいから適当に降らす
    execute unless entity @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32,sort=random,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/3.no_target

# リセット
    tag @e[type=#lib:living_without_player,tag=DXYZ,tag=!Uninterferable,distance=..32] remove DXYZ
