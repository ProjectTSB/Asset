#> asset:artifact/0101.grimoire/trigger/water
#
# 着弾処理
#
# @within function asset:artifact/0101.grimoire/trigger/balletwater
#1840
    data modify storage api: Argument.ID set value 2256
    data modify storage api: Argument.FieldOverride.Scale set value 4f
    function api:object/summon
    playsound entity.player.splash player @a ~ ~ ~
# 引数の設定
    data modify storage api: Argument.Damage set value 80f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 範囲5m以内の敵を対象に
    execute as @e[tag=Enemy,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
