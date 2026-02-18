#> asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/slash
#
# 斬撃部分
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/front_dash_slash/

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.FrontDashSlash
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..4] positioned ^ ^ ^100 as @p[gamemode=!spectator,distance=..100] run function api:damage/
# リセット
    function api:damage/reset

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:3058687,Frames:[20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[-0.641f,-0.299f,-0.641f,0.299f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ~ ~1 ~ anchored eyes positioned ^ ^ ^ rotated ~ 5 run function api:object/summon

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5
