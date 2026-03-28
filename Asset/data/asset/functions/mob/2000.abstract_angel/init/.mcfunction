#> asset:mob/2000.abstract_angel/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/2000/init

# Args 設定
    data modify storage asset:temp Args.Name set from storage asset:context this.BossbarName
    execute if data storage asset:context this{RemoveLifeWhenPlayerDie:false} run data modify storage asset:temp Args.Suffix set value ''
    execute if data storage asset:context this{RemoveLifeWhenPlayerDie: true} run scoreboard players operation @s 1JK.RemainingPlayerLife = $PlayerCount Global
    execute if data storage asset:context this{RemoveLifeWhenPlayerDie: true} run data modify storage asset:temp Args.Suffix set value '{"translate":"【%s×%s】","with":[{"text":"♥"},{"score":{"name":"@s","objective":"1JK.RemainingPlayerLife"}}]}'
    execute store result storage asset:temp Args.UUID int 1 run scoreboard players get @s MobUUID
# ボスバー作成
    function asset:mob/2000.abstract_angel/bossbar/add.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
