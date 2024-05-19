#> asset:artifact/1029.conviction_bone/trigger/3.2.attack
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/3.1.tick

# 自分にタグ付与
    tag @s add SL.This

#演出
    playsound minecraft:item.trident.return player @a ~ ~ ~ 1 2
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.6
# ダメージを与える
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 42.0f
    # 属性
        data modify storage lib: Argument.AttackType set value "Physical"
        data modify storage lib: Argument.ElementType set value "None"
    # 補正function
        execute as @a if score @s UserID = @e[type=item_display,tag=SL.This,distance=..10,sort=nearest,limit=1] SL.UserID run function lib:damage/modifier
    # 対象に
        execute as @e[type=#lib:living,tag=Enemy,distance=..6] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players set @s SL.CoolTime 0
