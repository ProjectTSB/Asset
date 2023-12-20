#> asset:artifact/1048.thunder_storm/trigger/6.cast
#
# 発動
#
# @within function asset:artifact/1048.thunder_storm/trigger/5.tick

# 演出
    function asset:artifact/1048.thunder_storm/trigger/6.1.cast_vfx

# ダメージ
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 220.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 無属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..6] run function lib:damage/
# リセット
    function lib:damage/reset

# リセット
    kill @s