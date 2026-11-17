#> asset:artifact/1228.fatalerror/release_using_item/charge_shot/landing
#
#
#
# @within function asset:artifact/1228.fatalerror/release_using_item/charge_shot/loop

# 演出
    execute at @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,distance=..25] run particle dust 0.824 0.918 0.98 1 ~ ~0.5 ~ 0.1 1 0.1 0 40

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:artifact Charge1228.Damage.Charge
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
# ダメージ
    execute as @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,distance=..25] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,distance=..25] remove Target
