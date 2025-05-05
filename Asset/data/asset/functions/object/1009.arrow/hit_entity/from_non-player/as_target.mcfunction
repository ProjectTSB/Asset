#> asset:object/1009.arrow/hit_entity/from_non-player/as_target
#
#
#
# @within function asset:object/1009.arrow/hit_entity/from_non-player/

# Mob 特定は重いのでここではやらない、必要なら pre_hit で各自やってくれ
#   execute store result score $MobUUID Temporary run data get storage asset:context this.MobUUID
#   execute as @e[type=#lib:living,distance=..100] if score @s MobUUID = $MobUUID Temporary run tag @s add 1009.Mob
#   scoreboard players reset $MobUUID Temporary
# PreHit メソッド呼び出し
    execute as @e[type=item_display,tag=this,distance=..0.1] positioned ~-0.2 ~-0.2 ~-0.2 at @a[tag=1009.Target,dx=0] run function asset:object/call.m {method:pre_hit}
# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    # execute if data storage asset:context this.AdditionalMPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
# modifier をかける
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    function api:damage/
    function api:damage/reset

# タグ削除
    tag @s remove 1009.Target
