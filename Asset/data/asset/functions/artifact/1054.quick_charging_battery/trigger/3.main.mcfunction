#> asset:artifact/1054.quick_charging_battery/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1054.quick_charging_battery/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 0.8
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1054.quick_charging_battery/trigger/vfx

# 最大MPを取得
    function api:mp/get_max

# MPを最大値の50%分回復する
    execute store result score $Fluctuation Lib run data get storage api: Return.MaxMP 0.5
    function lib:mp/fluctuation

# EffectAsset待ち