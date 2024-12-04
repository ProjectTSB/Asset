#> asset:artifact/0373.ice_sorcery/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

execute as @p[scores={AD.BeamTime=1..}] run schedule function asset:artifact/0373.ice_sorcery/click/3.1.beamshot 1t replace
