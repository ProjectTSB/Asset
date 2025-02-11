#> asset:artifact/0820.jewel_rod_of_horai/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/820/click/

# ターゲットのUUID取得
    function asset:artifact/0820.jewel_rod_of_horai/click/3.3.2.set_target

# オブジェクトに記録するデータ取得
    function asset:artifact/0820.jewel_rod_of_horai/click/3.3.3.set_attack_data

# 攻撃音
    execute if score $MS.AttackLevel Temporary matches 1.. run playsound ogg:ambient.nether.warped_forest.here1 player @a ~ ~ ~ 1 2
    execute if score $MS.AttackLevel Temporary matches 0 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 2

# 攻撃発生位置記録用オブジェクト設置
    data modify storage api: Argument.ID set value 1067
    execute store result storage api: Argument.FieldOverride.TargetUUID int 1 run scoreboard players get $MS.TargetUUID Temporary
    execute store result storage api: Argument.FieldOverride.AttackLevel int 1 run scoreboard players get $MS.AttackLevel Temporary
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^2 rotated as @s run function api:object/summon

# reset
    scoreboard players reset $MS.AttackLevel Temporary
    scoreboard players reset $MS.TargetUUID Temporary
    tag @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=MS.Init,distance=..4] remove MS.Init
