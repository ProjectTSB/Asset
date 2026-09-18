#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/dxyz/first.m
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target

# 範囲設定
    data modify storage lib: Args.dx set from storage asset:context this.AttackRange.FirstX
    data modify storage lib: Args.dy set from storage asset:context this.AttackRange.Y
    data modify storage lib: Args.dz set from storage asset:context this.AttackRange.Z
    data modify storage lib: Args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..32]"
    $execute rotated ~ 0 positioned ^ ^ ^$(Z) run function lib:rotatable_dxyz/m with storage lib: Args
