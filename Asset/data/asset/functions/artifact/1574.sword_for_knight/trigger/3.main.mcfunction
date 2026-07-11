#> asset:artifact/1574.sword_for_knight/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1574.sword_for_knight/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# ダメージ

    # ダメージ代入
    execute store result storage api: Argument.Damage float 1 run random value 700..900
    # 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    data modify storage asset:artifact AttackInfo.BypassResist set value 1b
    function api:damage/modifier
    # ダメージを与える
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..7] run function api:damage/

# リセット
    function api:damage/reset
