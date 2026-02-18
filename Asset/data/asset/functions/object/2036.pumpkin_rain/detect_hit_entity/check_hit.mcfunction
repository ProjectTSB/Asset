#> asset:object/2036.pumpkin_rain/detect_hit_entity/check_hit
#
# ヒット判定
#
# @within function asset:object/2036.pumpkin_rain/detect_hit_entity/

# 回転するdxyzLibを使って判定
    execute if entity @s[scores={General.Object.Tick=500..510}] run data modify storage lib: args.dx set value 0.55
    execute if entity @s[scores={General.Object.Tick=511..520}] run data modify storage lib: args.dx set value 0.7
    execute if entity @s[scores={General.Object.Tick=520..}] run data modify storage lib: args.dx set value 1.1

# dy,dzをdxの値と同じにする
    data modify storage lib: args.dy set from storage lib: args.dx
    data modify storage lib: args.dz set from storage lib: args.dx

# 判定する
    data modify storage lib: args.selector set value "@a[gamemode=!spectator,distance=..4]"
    function lib:rotatable_dxyz/m with storage lib: args
    execute if entity @p[tag=DXYZ,distance=..4] run data modify storage asset:context IsHitEntity set value true

# 付与されたDXYZタグをkillメソッドへ引き継ぐ
