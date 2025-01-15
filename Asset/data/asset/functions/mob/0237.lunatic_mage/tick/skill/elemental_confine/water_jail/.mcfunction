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

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 70f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=5.5..9] run function lib:damage/
# リセット
    function lib:damage/reset
