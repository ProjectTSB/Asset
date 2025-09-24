#> asset:object/2136.blazing_bomb/kill/
#
# 継承先などから実行される処理
#
# @within function asset:object/alias/2136/kill

#>ヒット検知
# @private
#declare tag Hit

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 0 0 force @a[distance=..32]
    particle lava ~ ~ ~ 0.2 0.2 0.2 0 10 force @a[distance=..32]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1 0.5

# ダメージ
    data modify storage api: Argument.Damage set value 25
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual

# 直撃したやつと、そこからの範囲内にダメージ
    execute positioned ~-1 ~-1 ~-1 run tag @a[tag=!PlayerShouldInvulnerable,dx=1,dy=1,dz=1] add Hit
    tag @a[tag=!PlayerShouldInvulnerable,distance=..5] add Hit
    execute as @a[tag=Hit] run function api:damage/

# リセット
    tag @a[tag=Hit,distance=..64] remove Hit
    function api:damage/reset

# 下が地面であれば、座標にアラインして実行
    execute at @s align xyz positioned ~-0.5 ~1 ~-0.5 if block ~ ~ ~ #lib:no_collision run function asset:object/2136.blazing_bomb/kill/place_aoe

# 消失
    kill @s
