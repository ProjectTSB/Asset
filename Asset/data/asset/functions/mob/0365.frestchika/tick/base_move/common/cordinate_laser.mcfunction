#> asset:mob/0365.frestchika/tick/base_move/common/cordinate_laser
#
# 座標レーザー、色んなところで使いそうなので
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/**

# 演出
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..16]
    particle end_rod ~ ~5 ~ 0.1 3 0.1 0.05 10
    particle dust 0 0.75 1 0.7 ~ ~5 ~ 0.1 3 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0.5 5

# 演出
    playsound ogg:block.respawn_anchor.deplete2 player @a ~ ~ ~ 1 1.7
    playsound tsb_sounds:blaster1 player @a ~ ~ ~ 1 1.7
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.5 0.7 0

# レーザー召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[1.0f,10f,1.0f],Color:11396351,DisappearInterpolation:3,LifeTime:10}
    execute positioned ~ ~10 ~ rotated ~ 90 run function api:object/summon

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
