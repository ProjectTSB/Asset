#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/hit
#
# 火の弾のヒット処理
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/shoot

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Confine.Fire
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @e[type=zombie,tag=this,distance=..0.01,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# Tag削除
    tag @s remove LandingTarget
