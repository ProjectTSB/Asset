#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target.m
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m

# rotatable_dxyzで判定
    data modify storage lib: Args.dx set from storage asset:context this.AttackRange.X

# 1発目に限り、Xを変える
    execute if data storage asset:context this{IsFirstShot:true} run data modify storage lib: Args.dx set from storage asset:context this.AttackRange.FirstX

    data modify storage lib: Args.dy set from storage asset:context this.AttackRange.Y
    data modify storage lib: Args.dz set from storage asset:context this.AttackRange.Z
    data modify storage lib: Args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..32]"
    $execute rotated ~ 0 positioned ^ ^ ^$(Z) run function lib:rotatable_dxyz/m with storage lib: Args

# DXYZのtag持ちの中のランダムな奴をターゲットにする
    # 1発目の場合、nearestで判定する
        execute if data storage asset:context this{IsFirstShot: true} at @e[type=#lib:living_without_player,tag=DXYZ,distance=..32,sort=nearest,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos
    # 2発目以降
        execute if data storage asset:context this{IsFirstShot:false} at @e[type=#lib:living_without_player,tag=DXYZ,distance=..32,sort=random,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/2.spread_pos

# DXYZがいなければもうなんでもいいから適当に降らす
    execute unless entity @e[type=#lib:living_without_player,tag=DXYZ,distance=..32,limit=1] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/3.no_target

# リセット
    tag @e[type=#lib:living_without_player,tag=DXYZ,distance=..32] remove DXYZ

# 1発目のフラグをfalseに
    data modify storage asset:context this.IsFirstShot set value false
