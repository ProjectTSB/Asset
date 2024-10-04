#> asset:object/2041.lastboss_thunder/tick/thunder
#
#
#
# @within function asset:object/2041.lastboss_thunder/tick/

# 演出
    particle end_rod ~ ~5 ~ 0.1 3 0.1 0.05 50
    particle dust 1 1 10 1.5 ~ ~5 ~ 0.3 3 0.3 0 300
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0.5 5

# 演出
    playsound entity.lightning_bolt.thunder hostile @p ~ ~ ~ 0.3 2 0
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.3 0 0

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
# リセット
    function lib:damage/reset

# 消滅
    kill @s
