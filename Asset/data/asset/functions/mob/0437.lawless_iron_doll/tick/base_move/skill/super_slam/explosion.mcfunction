#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/explosion
#
# 大爆発
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick

# マーカーを削除
    kill @e[type=marker,tag=C5.Marker.SlamPoint,distance=..256,limit=1]

# サウンド
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.7
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.7

# ダメージ判定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SuperSlam
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute if entity @a[distance=..30] positioned ~-30 ~-1 ~-30 as @a[tag=!PlayerShouldInvulnerable,dx=60,dy=1,dz=60] at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/damage
    function api:damage/reset

# パーティクル
    particle minecraft:large_smoke ~ ~0.1 ~ 15 0 15 0.1 100
    particle minecraft:explosion ~ ~0.1 ~ 15 0.5 15 1 50

# 衝撃波のかわり
    data modify storage api: Argument.FieldOverride.Color set value 16777215
    data modify storage api: Argument.FieldOverride.Scale set value [60f,60f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 3
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon

# 図形
    execute positioned ~ ~0.5 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/shape
