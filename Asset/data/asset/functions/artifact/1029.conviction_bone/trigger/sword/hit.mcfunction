#> asset:artifact/1029.conviction_bone/trigger/sword/hit
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/sword/sword

# 自分にタグ付与
    tag @s add SL.This

# 演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.6
# ダメージを与える
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 42.0f
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.DamageType set value "Projectile"
        data modify storage api: Argument.ElementType set value "None"
    # 補正function
        execute as @a if score @s UserID = @e[type=item_display,tag=SL.This,distance=..10,sort=nearest,limit=1] SL.UserID run function api:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,distance=..4] run function api:damage/

# リセット
    function api:damage/reset
    scoreboard players set @s SL.CoolTime 0
