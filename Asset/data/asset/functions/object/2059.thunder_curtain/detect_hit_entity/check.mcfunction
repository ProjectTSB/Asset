#> asset:object/2059.thunder_curtain/detect_hit_entity/check
#
# ターゲットがいるかチェック
#
# @within function asset:object/2059.thunder_curtain/detect_hit_entity/

# 10*8*1の判定
# (各軸の半分 + 0.3)で判定を行う
# 0.3なのはプレイヤーの横幅

# 回転するxyzLibを使ってヒット判定を行う
    data modify storage lib: args.dx set value 5.3
    data modify storage lib: args.dy set value 4.3
    data modify storage lib: args.dz set value 0.8
    data modify storage lib: args.selector set value "@p[tag=!PlayerShouldInvulnerable,distance=..15]"
    function lib:rotatable_dxyz/m with storage lib: args
    execute if entity @p[tag=DXYZ] run data modify storage asset:context IsHitEntity set value true
