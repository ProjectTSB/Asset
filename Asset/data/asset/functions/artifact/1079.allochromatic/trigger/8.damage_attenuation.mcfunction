#> asset:artifact/1079.allochromatic/trigger/8.damage_attenuation
#
# ダメージの距離減衰を計算する
#
# @within function asset:artifact/1079.allochromatic/trigger/7.damage

# ダメージ減らす
    scoreboard players operation $Distance_Damping Temporary -= $Appropriate_Distance Temporary
    scoreboard players operation $Distance_Damping Temporary *= $25 Const
    scoreboard players operation $Damage Temporary -= $Distance_Damping Temporary
# ダメージ減らしすぎて最低ダメージを下回った時
    scoreboard players operation $Damage Temporary > $MinDamage Temporary
