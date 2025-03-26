#> asset:object/2239.frestchika_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2239/init

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 6209279
    data modify storage api: Argument.FieldOverride.Scale set value [4f,4f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 15
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon
