#> asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/
#
# 範囲攻撃
#
# @within function asset:object/2043.lastboss_ice_sword/tick/landing/

#> インターバル用スコアホルダー
# @private
    #declare score_holder $ParticleInterval
    #declare score_holder $DamageInterval

# パーティクル
    scoreboard players operation $ParticleInterval Temporary %= $9 Const
    execute positioned ~ ~ ~ rotated 0 0 if score $ParticleInterval Temporary matches 0 run function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/particle/

# 一定間隔でダメージ
    scoreboard players operation $DamageInterval Temporary %= $11 Const
    execute if score $DamageInterval Temporary matches 0 rotated 0 0 run function asset:object/2043.lastboss_ice_sword/tick/landing/area_of_effect/damage

# リセット
    scoreboard players reset $ParticleInterval Temporary
    scoreboard players reset $DamageInterval Temporary
