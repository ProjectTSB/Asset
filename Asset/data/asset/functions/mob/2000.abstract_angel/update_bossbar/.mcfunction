#> asset:mob/2000.abstract_angel/update_bossbar/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2000/update_bossbar

# Args 設定
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
    data modify storage asset:temp Args.Name set from storage asset:context this.BossbarName
    execute if data storage asset:context this{RemoveLifeWhenPlayerDie:false} run data modify storage asset:temp Args.Suffix set value ''
    execute if data storage asset:context this{RemoveLifeWhenPlayerDie: true} run data modify storage asset:temp Args.Suffix set value '{"translate":"【%s×%s】","with":[{"text":"\\uE300","font":"icon"},{"score":{"name":"@s","objective":"1JK.RemainingPlayerLife"}}]}'
# ボスバー作成
    function asset:mob/2000.abstract_angel/bossbar/update.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
