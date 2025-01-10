#> asset:object/2117.heiloang_tornado/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2117.heiloang_tornado/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..8] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.5
    particle explosion ~ ~1 ~ 3 1 3 0.1 10 force

# 回避ギミック用跳躍エフェクト付与
    effect give @a[distance=..30] jump_boost 9 5

# 竜巻演出開始
    summon item_display ~ ~ ~ {Tags:["2117.Append"],teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[0f,-2f,0f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20450}}}
    summon text_display ~ ~ ~ {Tags:["2117.Text"],billboard:"vertical",alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[0f,6f,0f]},text:'{"text":"0","font":"object/2117/0"}',background:16711680}
    ride @e[type=item_display,tag=2117.Append,tag=!2117.Ride,sort=nearest,limit=1] mount @s
    ride @e[type=text_display,tag=2117.Text,tag=!2117.Ride,sort=nearest,limit=1] mount @s
    execute on passengers run tag @s add 2117.Ride
