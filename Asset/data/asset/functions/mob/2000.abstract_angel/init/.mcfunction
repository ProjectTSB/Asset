#> asset:mob/2000.abstract_angel/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/2000/init

# Args 設定
    data modify storage asset:temp Args.Name set from storage asset:context this.BossbarName
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/2000.abstract_angel/bossbar/add.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
