#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/slash
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        function api:damage/modifier
        execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..6] positioned ^ ^ ^100 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function api:damage/

# リセット
    function api:damage/reset

# フィールド設定
    data modify storage api: Argument.FieldOverride set value {Color:16731392,Frames:[20335,20336,20337],Scale:[10f,10f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^-1 ^ positioned ^ ^ ^2 run function api:object/summon

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5
