#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion
#
# これが物理攻撃なの変な気もするが…
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick


# 演出
    particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 1
    particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 5
    particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.05 10
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 属性1
        data modify storage lib: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        function lib:damage/modifier
        execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1] run function lib:damage/
# リセット
    function lib:damage/reset
