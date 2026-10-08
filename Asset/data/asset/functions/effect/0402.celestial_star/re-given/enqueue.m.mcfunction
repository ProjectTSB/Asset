#> asset:effect/0402.celestial_star/re-given/enqueue.m
#
# 実行者がプレイヤーならUserIDを、敵ならMobUUIDを、距離の帯の番号と共に対象の一覧の末尾へ積む
#
# @input args
#   Ring : int
# @within function asset:effect/0402.celestial_star/re-given/collect.m

    $execute if entity @s[type=player] run data modify storage asset:context this.Detonation.Queue append value {Ring:$(Ring)}
    execute if entity @s[type=player] store result storage asset:context this.Detonation.Queue[-1].UserID int 1 run scoreboard players get @s UserID
    $execute if entity @s[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable] run data modify storage asset:context this.Detonation.Queue append value {Ring:$(Ring)}
    execute if entity @s[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable] store result storage asset:context this.Detonation.Queue[-1].MobUUID int 1 run scoreboard players get @s MobUUID
