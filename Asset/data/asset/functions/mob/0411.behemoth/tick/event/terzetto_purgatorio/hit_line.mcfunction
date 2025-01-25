#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/hit_line
#
# テルツェット・ディザスター
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_aligning/

# 対象決定
    tag @e[type=item_display,tag=2181.Line,tag=!2181.Line.End,sort=random,limit=1] add BF.Temp.Dummy
    tp @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] ~ ~ ~ 0 0

# プレイヤーを向く
    execute facing entity @s eyes as @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] rotated ~ ~1 run function lib:rotate_display/

# 距離測定
    scoreboard players set @s BF.Counter 50
    execute positioned ~ ~ ~ facing entity @s feet run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/check
    scoreboard players reset @s BF.Counter

# 距離測定
    execute if entity @s[tag=!BF.Temp.Hit] run function lib:distance/as_to_at
    execute if entity @s[tag=BF.Temp.Hit] as @e[type=item_display,tag=2180.Pillar,tag=BF.Temp.Hit] run function lib:distance/as_to_at
    execute store result entity @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return

# 終了
    execute if entity @s[tag=BF.Temp.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=BF.Temp.Hit] remove BF.Temp.Hit
    tag @s remove BF.Temp.Hit
    tag @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] add 2181.Line.End
    tag @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] remove BF.Temp.Dummy


# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 4
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^25 run function lib:rotatable_dxyz/m with storage lib: args
# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a remove DXYZ

# # 攻撃位置決定
#     execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.data] run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/set_attack_position.m with entity @s data.locators.pos_head

# # 攻撃
#     data modify storage api: Argument.ID set value 2107
#     data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] Rotation
#     execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
#     data modify storage api: Argument.FieldOverride.IsDark set value true
#     execute at @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] run function api:object/summon

# # 攻撃位置表示
#     data modify storage api: Argument.ID set value 2063
#     data modify storage api: Argument.FieldOverride.Color set value 10684938
#     data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
#     data modify storage api: Argument.FieldOverride.Tick set value 10
#     execute at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,limit=1] positioned ~ ~0.5 ~ run function api:object/summon

# # 演出
#     execute at @e[type=area_effect_cloud,tag=BF.Temp.AttackRotation,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/particle_shoot
