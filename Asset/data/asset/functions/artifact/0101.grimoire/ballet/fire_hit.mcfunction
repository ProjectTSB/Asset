#> asset:artifact/0101.grimoire/ballet/fire_hit
#
# 着弾処理
#
# @within function asset:artifact/0101.grimoire/ballet/fire

# 演出
    particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.05 40
    playsound item.firecharge.use player @a ~ ~ ~
# 引数の設定
    data modify storage api: Argument.Damage set value 80f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
# 補正functionを実行
    function api:damage/modifier
# 範囲ダメージ
    execute as @e[type=#lib:living_without_player,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
