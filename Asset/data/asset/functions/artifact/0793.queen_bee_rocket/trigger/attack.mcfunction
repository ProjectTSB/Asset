#> asset:artifact/0793.queen_bee_rocket/trigger/attack
#
# 弾が着弾した時
#
# @within function asset:artifact/0793.queen_bee_rocket/trigger/bee

# 自身にタグ付与
    tag @s add M1.This

# 周囲2mから最寄りの敵にタグを付与
    tag @e[type=#lib:living,type=!player,tag=!M1.Bee,distance=..2,sort=nearest,limit=1] add M1.Target

# 演出
    particle flash ~ ~ ~ 0 0 0 4 0 force
    particle flame ~ ~ ~ 0 0 0 0.3 20 force
    particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 30 force
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 1 0.3
    playsound entity.generic.explode player @a[distance=..50] ~ ~ ~ 1 0 0.3
    playsound entity.blaze.burn player @a[distance=..50] ~ ~ ~ 1 1 0.3
    summon firework_rocket ~ ~ ~ {Silent:1b,FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;16774912],FadeColors:[I;0,5526612]}]}}}}

# ダメージ
    data modify storage lib: Argument.Damage set value 360f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    execute as @a if score @s UserID = @e[type=item_display,tag=M1.This,distance=..0.01,limit=1] M1.UserID run function lib:damage/modifier
    execute as @e[type=#lib:living,tag=M1.Target,distance=..2] run function lib:damage/
    function lib:damage/reset

# 自身を殺す
    kill @s
