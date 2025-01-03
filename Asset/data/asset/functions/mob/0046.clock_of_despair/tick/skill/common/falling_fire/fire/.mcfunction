#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/*_oclock

# VFX
    execute positioned ~ ~7 ~ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/fire/vfx

# ヒット対象を探す
    data modify storage lib: args.dx set value 6.3
    data modify storage lib: args.dy set value 6.3
    data modify storage lib: args.dz set value 12.3
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    function lib:rotatable_dxyz/m with storage lib: args

# パラメータ設定
    data modify storage api: Argument.Damage set value 32
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの魔炎により灰一つ残さず焼き尽くされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正 (厳密な紐付けではない)
    function api:damage/modifier
# 与える
    execute as @a[tag=DXYZ] at @s run function api:damage/

# リセット
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ
    data remove storage lib: args
