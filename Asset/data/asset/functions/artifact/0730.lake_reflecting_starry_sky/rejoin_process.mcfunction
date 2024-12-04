#> asset:artifact/0730.lake_reflecting_starry_sky/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# RejoinTargetがついたエンティティがいたら実行
    execute if entity @e[type=marker,tag=KA.RejoinTarget,limit=1] run function asset:artifact/0730.lake_reflecting_starry_sky/click/rejoin_branch
