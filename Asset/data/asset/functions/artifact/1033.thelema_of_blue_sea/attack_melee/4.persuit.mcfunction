#> asset:artifact/1033.thelema_of_blue_sea/attack_melee/4.persuit
#
# 追撃時に行う処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/attack_melee/

#> Private
# @private
    #declare score_holder $Damage

# 最大体力取得
    function api:modifier/max_health/get

# 3回目の攻撃の時、追撃用オブジェクトを召喚
# RotationX、SwordCount、Damage、UserIDをFieldOverrideへ入れる
# SwordCountは最大HPの5%(int)として召喚

# 与ダメージを計算しフィールドへ
# 最大体力の160%、最大320
# 一度200の10倍を取得し、200より大きいなら200にする
    execute store result score $Damage Temporary run data get storage api: Return.MaxHealth 10
    execute store result storage api: Argument.FieldOverride.Damage double 0.16 run scoreboard players operation $Damage Temporary < $2000 Const

# 召喚
    data modify storage api: Argument.ID set value 1039
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute store result storage api: Argument.FieldOverride.SwordCount int 1 run data get storage api: Return.MaxHealth 0.05
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[type=#lib:living,tag=Victim,distance=..6] run function api:object/summon

# リセット
    scoreboard players reset $Damage Temporary
