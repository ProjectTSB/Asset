#> asset:artifact/1636.mana_controller/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1636.mana_controller/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 演出のみ
    particle composter ~ ~0.75 ~ 0.2 0.5 0.2 1 15
    particle glow ~ ~0.75 ~ 0.2 0.5 0.2 1 15
    particle witch ~ ~0.75 ~ 0.2 0.5 0.2 1 15

    playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
    playsound block.note_block.bit player @a ~ ~ ~ 1 1.5
