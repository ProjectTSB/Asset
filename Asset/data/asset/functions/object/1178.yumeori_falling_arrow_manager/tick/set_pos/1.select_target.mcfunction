#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m

# rotatable_dxyzで判定
    execute if data storage asset:context this{IsFirstShot: true} run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/dxyz/first.m with storage asset:context this.AttackRange
    execute if data storage asset:context this{IsFirstShot:false} run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/dxyz/m with storage asset:context this.AttackRange

# 1発目でDXYZが誰もいない時、本来の範囲で再ターゲッティングする
    execute if data storage asset:context this{IsFirstShot: true} unless entity @e[type=#lib:living_without_player,tag=DXYZ,distance=..32] run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/dxyz/m with storage asset:context this.AttackRange

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
