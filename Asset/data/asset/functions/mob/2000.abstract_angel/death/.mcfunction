#> asset:mob/2000.abstract_angel/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/2000/death

# Args 設定
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/2000.abstract_angel/bossbar/remove.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
