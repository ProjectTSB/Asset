#> asset:object/2135.blazing_fireball/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2135/kill

#>ヒット検知
# @private
#declare tag Hit

# 演出
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..32]
    particle lava ~ ~ ~ 0 0 0 0 2

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1 0.5

# ダメージ
    data modify storage api: Argument.Damage set value 20
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# 直撃したやつと、そこからの範囲内にダメージ
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add Hit
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add Hit
    execute as @a[tag=Hit] run function api:damage/

# リセット
    tag @a[tag=Hit] remove Hit
    function api:damage/reset

# 消失
    kill @s
