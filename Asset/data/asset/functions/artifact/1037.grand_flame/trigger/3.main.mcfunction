#> asset:artifact/1037.grand_flame/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1037.grand_flame/trigger/2.check_condition

#> Val
# @private
    #declare score_holder $Damage

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.respawn_anchor.deplete player @a[distance=..16] ~ ~ ~ 1.0 2 0.0
    playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 1.0 0.75 0.0
    playsound entity.wither.shoot player @a[distance=..16] ~ ~ ~ 0.5 1.5
    execute anchored eyes positioned ^ ^ ^0.5 run function asset:artifact/1037.grand_flame/trigger/vfx

# 体力割合を取得
    function api:entity/player/get_health_per

# ダメージ計算 (660 + HealthPer *2)
    execute store result score $Damage Temporary run data get storage api: Return.HealthPer 200
    scoreboard players add $Damage Temporary 660

# Object召喚
    data modify storage api: Argument.ID set value 1041
    data modify storage api: Argument.FieldOverride.Motion set value 1.5
    execute store result storage api: Argument.FieldOverride.Damage int 1 run scoreboard players get $Damage Temporary
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^0.5 run function api:object/summon

# リセット
    scoreboard players reset $Damage Temporary
