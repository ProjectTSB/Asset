#> asset:object/2037.defeated_pumpkin/tick/last_burst
#
# 最後の爆発
#
# @within function asset:object/2037.defeated_pumpkin/tick/

# カボチャをドロップ
    summon item ~ ~2 ~ {Item:{id:"carved_pumpkin",Count:1b}}

# 演出
    particle dust 1 0.6 0 2 ~ ~2 ~ 2 2 2 0 120 normal @a
    particle dust 0.851 0 1 2 ~ ~2 ~ 2 2 2 0 120 normal @a
    particle cloud ~ ~2 ~ 0 0 0 0.3 120 normal @a
    particle flame ~ ~2 ~ 0 0 0 0.3 120 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.6 1.3 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.6 1.6 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.6 1.9 0
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# 範囲内のプレイヤーにTagを付与
    data modify storage lib: args.dx set value 2.8
    data modify storage lib: args.dy set value 2.8
    data modify storage lib: args.dz set value 2.8
    data modify storage lib: args.selector set value "@a[distance=..9]"
    function lib:rotatable_dxyz/m with storage lib: args

# 演出とは逆にプレイヤーを回復する
    data modify storage api: Argument.Heal set value 50f
    function api:heal/modifier
    execute as @a[tag=DXYZ,distance=..9] run function api:heal/
    function api:heal/reset

# リセット
    tag @a[tag=DXYZ,distance=..9] remove DXYZ

# 消滅
    kill @s
