#> asset:artifact/0610.call_fish/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0610.call_fish/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/0610.call_fish/trigger/vfx

# 弾を召喚
    data modify storage api: Argument.ID set value 1015
    data modify storage api: Argument.FieldOverride.Damage set value 100f
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
