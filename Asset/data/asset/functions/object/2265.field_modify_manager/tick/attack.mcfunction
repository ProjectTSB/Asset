#> asset:object/2265.field_modify_manager/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2265.field_modify_manager/tick/
# @private
    #declare score_holder $Temp.Color
    #declare objective 2266.Color

# ヒット判定
    execute store result score $Temp.Color Global run data get storage asset:context this.Target[0]
    tag @a[tag=!PlayerShouldInvulnerable,distance=..80] add 2265.Hit
    execute as @e[type=item_display,tag=CO.Object.FieldModify,distance=..80] if score @s 2266.Color = $Temp.Color Global at @s positioned ^-7.5 ^-1 ^-7.5 run tag @a[dx=15,dy=50,dz=15] remove 2265.Hit

# 演出
    execute positioned ~ ~100 ~ run playsound entity.generic.explode hostile @a[distance=..200] ~ ~ ~ 2 1 1
    execute positioned ~ ~100 ~ run playsound entity.lightning_bolt.thunder hostile @a[distance=..200] ~ ~ ~ 2 1 1
    execute as @e[type=item_display,tag=CO.Object.FieldModify,distance=..80] unless score @s 2266.Color = $Temp.Color Global at @s run function asset:object/2265.field_modify_manager/tick/attack_vfx

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    function api:damage/modifier
    execute as @a[tag=2265.Hit] run function api:damage/
    function api:damage/reset
    tag @a remove 2265.Hit

# リセット
    scoreboard players reset $Temp.Color Global
    scoreboard players set @s 2265.Progress.Current 0

# カウントを減らし、攻撃が終了した場合自身を消去
    data remove storage asset:context this.Target[0]
    scoreboard players remove @s 2265.AttackCount 1
    execute if score @s 2265.AttackCount matches ..0 run function asset:object/2265.field_modify_manager/tick/kill
