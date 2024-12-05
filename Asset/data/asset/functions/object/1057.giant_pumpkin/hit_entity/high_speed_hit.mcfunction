#> asset:object/1057.giant_pumpkin/hit_entity/high_speed_hit
#
# 高速回転状態のヒット判定
#
# @within function asset:object/1057.giant_pumpkin/hit_entity/

#> Private
# @private
    #declare tag 1057.Owner

# 使用者を特定
    execute at @a if score @s 1057.OwnerID = @p UserID run tag @p add 1057.Owner

# ヒット数をとってお菓子を得る処理を実行
    execute store result score $HitCount Temporary if entity @e[type=#lib:living,tag=DXYZ,distance=..5]
    execute as @p[tag=1057.Owner] run function asset:object/1057.giant_pumpkin/hit_entity/give_sweets/recursive

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Clash
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=1057.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=DXYZ,distance=..5] run function api:damage/
    function api:damage/reset

# 鈍足を付与
    effect give @e[type=#lib:living,tag=DXYZ,distance=..5] slowness 3 3 true

# リセット
    tag @p[tag=1057.Owner] remove 1057.Owner
    scoreboard players reset $HitCount Temporary
