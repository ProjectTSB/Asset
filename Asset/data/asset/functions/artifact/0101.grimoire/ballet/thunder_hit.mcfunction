#> asset:artifact/0101.grimoire/ballet/thunder_hit
#
# 着弾処理
#
# @within function asset:artifact/0101.grimoire/ballet/thunder

# 演出
    data modify storage api: Argument.ID set value 2257
    data modify storage api: Argument.FieldOverride.Scale set value 4f
    function api:object/summon
    playsound entity.generic.explode player @a ~ ~ ~

# 引数の設定
    data modify storage api: Argument.Damage set value 80f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function api:damage/modifier

# 範囲ダメージ
    execute as @e[type=#lib:living_without_player,distance=..2] run function api:damage/
# リセット

    function api:damage/reset
