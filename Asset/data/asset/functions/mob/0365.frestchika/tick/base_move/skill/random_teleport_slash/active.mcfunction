#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/active
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/
#   asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/phase2/

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.RandomTeleportSlash
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..7] positioned ^ ^ ^100 as @p[gamemode=!spectator,distance=..100] run function api:damage/
# リセット
    function api:damage/reset

# データ設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_boots",Count:1b},Color:3058687,Frames:[20335,20336,20337],Scale:[15f,15f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute anchored eyes positioned ^ ^-1 ^ rotated ~ ~ run function api:object/summon

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5
