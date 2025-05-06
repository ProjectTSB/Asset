#> asset:artifact/1078.pigeon_blood/attack_melee/set_const
#
# 定数設定
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/3.main

# クリティカル率
    data modify storage asset:temp TY.Const.CriticalPercentage set value 20
# ダメージ
    data modify storage asset:temp TY.Const.Damage.Min set value 350
    data modify storage asset:temp TY.Const.Damage.Max set value 650
    data modify storage asset:temp TY.Const.Damage.MultiplierResonance set value 1.2
    data modify storage asset:temp TY.Const.Damage.MultiplierCritical set value 1.5
# 共鳴攻撃
    data modify storage asset:temp TY.Const.ResonanceAttack.Cooldown set value 35
    data modify storage asset:temp TY.Const.ResonanceAttack.Damage set value 100
    data modify storage asset:temp TY.Const.ResonanceAttack.Range set value 15
