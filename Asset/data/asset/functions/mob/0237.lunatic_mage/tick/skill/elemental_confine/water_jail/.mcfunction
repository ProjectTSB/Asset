#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/water_jail/
#
# 水の檻のダメージと演出の処理
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/in_activation

# vfx
    function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/water_jail/vfx

# 音
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 1 2
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 1 1

tellraw @a {"storage":"asset:context","nbt":"this.Damage"}

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Confine.WaterJail
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Water"
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=5.5..9] run function api:damage/
# リセット
    function api:damage/reset
