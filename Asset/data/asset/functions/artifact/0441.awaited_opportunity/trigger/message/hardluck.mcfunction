#> asset:artifact/0441.awaited_opportunity/trigger/message/hardluck
#
# ダンスる
#
# @within function asset:artifact/0441.awaited_opportunity/trigger/message/

# プレイヤーが"不運"と"踊"っちまった時
    tellraw @a[distance=..30] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> "},{"text":"があああああッ･･！！"}]

# マガジンマーク召喚
        execute anchored eyes positioned ^1.0 ^ ^ run function asset:artifact/0441.awaited_opportunity/trigger/message/magazine_mark

# “不運”と“踊”る(ID:294)を付与
    data modify storage api: Argument.ID set value 294
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 自傷
    data modify storage api: Argument.Damage set value 3.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは“不運”と“踊”ってしまった","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
