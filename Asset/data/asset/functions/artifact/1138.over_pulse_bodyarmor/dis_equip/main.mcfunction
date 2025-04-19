#> asset:artifact/1138.over_pulse_bodyarmor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/dis_equip/

# フラグ削除
    tag @s remove VM.NotDamaged
    tag @s remove VM.HasBarrier
# バリアを削除
    data modify storage api: Argument.UUID set value [I;1,1,1138,5]
    function api:entity/player/absorption/remove
