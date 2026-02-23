#> asset:object/1153.flare_butterfly/tick/move/chase_enemy/set_attack_mode
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/move/chase_enemy/m

# 攻撃モード
    data modify storage asset:context this.IsAttackMode set value true

# 攻撃前のディレイ設定
    data modify storage asset:context this.AttackDelay._ set from storage asset:context this.AttackDelay.Max
