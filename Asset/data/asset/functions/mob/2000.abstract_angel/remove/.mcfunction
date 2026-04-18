#> asset:mob/2000.abstract_angel/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/2000/remove

# 演出
    title @a[distance=..160] times 10 10 20
    title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}

# Args 設定
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/2000.abstract_angel/bossbar/remove.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
