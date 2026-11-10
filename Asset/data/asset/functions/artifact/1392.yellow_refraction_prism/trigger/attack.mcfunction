#> asset:artifact/1392.yellow_refraction_prism/trigger/attack
#
# 再帰内でダメージを与える
#
# @within function
#   asset:artifact/1392.yellow_refraction_prism/trigger/3.main
#   asset:artifact/1392.yellow_refraction_prism/trigger/attack

# 最後尾のUUIDを取得
    execute store result score $TempID Temporary run data get storage asset:temp Temp.Main.To[-1]

# 最後尾のIDが一致しているEntityへダメージを与える
    execute store result storage api: Argument.Damage double 0.001 run data get storage asset:temp Temp.Main.Amounts[-1] 100
    data modify storage api: Argument.AttackType set from storage asset:context Attack.AttackType
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value false
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..64] if score @s MobUUID = $TempID Temporary run function api:damage/
    function api:damage/reset

# 最後尾の要素を削除
    data remove storage asset:temp Temp.Main.To[-1]
    data remove storage asset:temp Temp.Main.Amounts[-1]

# リセット
    scoreboard players reset $TempID Temporary

# 要素がまだあるなら再帰
    execute if data storage asset:temp Temp.Main.To[0] run function asset:artifact/1392.yellow_refraction_prism/trigger/attack
