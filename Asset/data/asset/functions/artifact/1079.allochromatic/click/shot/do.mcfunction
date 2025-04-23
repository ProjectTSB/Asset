#> asset:artifact/1079.allochromatic/click/shot/do
# @within function asset:artifact/1079.allochromatic/click/shot/

# 演出
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.7 0.5
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.7 0.7
    particle block gold_block ^ ^ ^-0.8 0 0 0 1 1
    particle electric_spark ~ ~ ~ 0 0 0 0.2 5
# 前方拡散
    # マーカー召喚
        summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    # 引数設定
        data modify storage lib: Argument.Distance set value 0.8
        data modify storage lib: Argument.Spread set value 0.1
        execute unless function asset:artifact/1079.allochromatic/predicate/has_resonance unless data storage asset:temp TZ.Sneak run data modify storage lib: Argument.Spread set value 0.4
        execute if function asset:artifact/1079.allochromatic/predicate/has_resonance if data storage asset:temp TZ.Sneak run data modify storage lib: Argument.Spread set value 0.05
    # 実行
        execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle
        data remove storage lib: Argument
# 射撃 - 再帰
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] feet run function asset:artifact/1079.allochromatic/click/shot/recursive.m with storage asset:temp TZ.Const
# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..1,limit=1]
