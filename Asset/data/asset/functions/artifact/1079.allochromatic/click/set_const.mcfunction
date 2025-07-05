#> asset:artifact/1079.allochromatic/click/set_const
# @within function asset:artifact/1079.allochromatic/click/3.main

# 最大射程
    data modify storage asset:temp TZ.Const.DistanceMax set value 15
# ダメージ計算用
    data modify storage asset:temp TZ.Const.Damage.Base set value 455
    data modify storage asset:temp TZ.Const.Damage.Min set value 110
    data modify storage asset:temp TZ.Const.Damage.MultiplierResonance set value 1.2
    data modify storage asset:temp TZ.Const.Damage.DistanceAppropriate set value 6
    data modify storage asset:temp TZ.Const.Damage.DistanceAttenuation set value 40
# 共鳴攻撃
    data modify storage asset:temp TZ.Const.ResonanceAttack.Cooldown set value 35
    data modify storage asset:temp TZ.Const.ResonanceAttack.Damage set value 150
