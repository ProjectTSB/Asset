#> asset:artifact/1138.over_pulse_bodyarmor/tick/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/tick/1.trigger

# 展開中ならパーティクル
    execute if entity @s[tag=VM.HasBarrier] run particle dolphin ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/chest
# ダメージを受けていない場合先に進まない
    execute if entity @s[tag=VM.NotDamaged] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1138.over_pulse_bodyarmor/tick/3.main
