#> asset:artifact/1228.fatalerror/release_using_item/shot/landing
#
#
#
# @within function asset:artifact/1228.fatalerror/release_using_item/shot/loop

# 演出
    particle dust 0.824 0.918 0.98 0.7 ~ ~0.5 ~ 0.1 0.3 0.1 0 20

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:artifact Charge1228.Damage.Shot
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
# ダメージ
    execute as @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,distance=..5,limit=1] run function api:damage/
# リセット
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=Target,tag=!Uninterferable,distance=..5,limit=1] remove Target
