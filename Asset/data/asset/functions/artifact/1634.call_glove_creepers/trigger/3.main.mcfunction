#> asset:artifact/1634.call_glove_creepers/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1634.call_glove_creepers/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# グローブに渡す値
    execute store result storage asset:temp 1634.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage asset:temp 1634.FieldOverride.Damage set value 150d
    data modify storage asset:temp 1634.FieldOverride.SwingCooldown set value 5
    data modify storage asset:temp 1634.FieldOverride.LifeTime set value 360
    data modify storage asset:temp 1634.FieldOverride.EnemyKnockback set value 1.0d
    data modify storage asset:temp 1634.FieldOverride.EmpowerTime set value 240
    data modify storage asset:temp 1634.FieldOverride.EmpoweredSwingCooldown set value 1
    data modify storage asset:temp 1634.FieldOverride.EmpoweredReturnDuration set value 2
    data modify storage asset:temp 1634.FieldOverride.EmpoweredHitHoldDuration set value 2

# 右のグローブを召喚する
    data modify storage api: Argument.ID set value 1195
    data modify storage api: Argument.FieldOverride set from storage asset:temp 1634.FieldOverride
    execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^-1.0 ^-0.3 ^-0.1 rotated as @s run function api:object/summon

# 左のグローブを召喚する
    data modify storage api: Argument.ID set value 1196
    data modify storage api: Argument.FieldOverride set from storage asset:temp 1634.FieldOverride
    execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^1.0 ^-0.3 ^-0.1 rotated as @s run function api:object/summon

# 演出
    playsound entity.creeper.primed player @a ~ ~ ~ 0.7 1.2

# リセット
    data remove storage asset:temp 1634
