#> asset:artifact/1078.pigeon_blood/attack_melee/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1078.pigeon_blood/attack_melee/2.check_condition

# 定数設定 (TY.Const)
    function asset:artifact/1078.pigeon_blood/attack_melee/set_const
# 共鳴・蒼をチェック (TY.Resonance.Level)
    execute as @a[distance=..20,sort=nearest] run function asset:artifact/1078.pigeon_blood/attack_melee/get_resonance_level
# 共鳴攻撃クールダウン (TY.Resonance.AttackCooldown)
    execute if function asset:artifact/1078.pigeon_blood/predicate/has_resonance_other run function asset:artifact/1078.pigeon_blood/attack_melee/get_resonance_cooldown
# 演出用変数 (TY.VFXCount)
    function asset:artifact/1078.pigeon_blood/attack_melee/add_vfx_count
# クリティカル判定 (TY.Critical)
    function asset:artifact/1078.pigeon_blood/attack_melee/check_critical.m with storage asset:temp TY.Const
# 使用
    function asset:artifact/common/use/mainhand
# ダメージ処理
    function asset:artifact/1078.pigeon_blood/attack_melee/damage.m with storage asset:temp TY.Const.Damage
# 共鳴・紅を付与
    function asset:artifact/1078.pigeon_blood/attack_melee/give_effect
# リセット
    data remove storage asset:temp TY
