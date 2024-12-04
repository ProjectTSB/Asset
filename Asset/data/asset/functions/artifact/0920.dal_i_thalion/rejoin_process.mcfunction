#> asset:artifact/0920.dal_i_thalion/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 1tick以内にイなくなった場合動かない可能性があるためリジョイン
    execute if entity @a[tag=PK.EffectClear] run schedule function asset:artifact/0920.dal_i_thalion/damage/4.schedule 1t