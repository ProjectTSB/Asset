#> asset:artifact/1632.photon_burst/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1632.photon_burst/trigger/3.main
#   asset:artifact/1632.photon_burst/trigger/recursive

# スコア-1
    scoreboard players remove $RecursiveLimit Temporary 1

# 以下の条件で再帰を終了
    # スコアが0以下
        execute if score $RecursiveLimit Temporary matches ..0 run return run function asset:artifact/1632.photon_burst/trigger/attack/
    # 前方がブロック
        execute unless block ^ ^ ^0.5 #lib:no_collision/ run return run function asset:artifact/1632.photon_burst/trigger/attack/
    # 敵が近くにいる
        execute positioned ~-0.5 ~-0.5 ~-0.5 positioned as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run return run function asset:artifact/1632.photon_burst/trigger/attack/

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:artifact/1632.photon_burst/trigger/recursive
