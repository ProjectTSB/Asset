#> asset:effect/0612.infringement/modifier/add
#
# 補正を追加する
#
# @within function
#   asset:effect/0612.infringement/given/
#   asset:effect/0612.infringement/re-given/

# 移動速度-90%とノクバ耐性最大を付与
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-026400000000 "612.Speed" -0.9 multiply
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0003-0000-026400000000 "612.KBResistance" 10 add

# Lvを取得
    execute store result score $Lv Temporary run data get storage asset:context Stack

# (-10×Lv)%分耐性デバフを付与
    data modify storage api: Argument.UUID set value [I;1,3,612,0]
    execute store result storage api: Argument.Amount double -0.10 run scoreboard players get $Lv Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# リセット
    scoreboard players reset $Lv Temporary
