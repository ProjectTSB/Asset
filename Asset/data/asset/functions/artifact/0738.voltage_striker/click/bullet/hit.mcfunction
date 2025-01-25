#> asset:artifact/0738.voltage_striker/click/bullet/hit
#
# ヒット処理
#
# @within function asset:artifact/0738.voltage_striker/click/bullet/main

# 演出
    particle firework ~ ~ ~ 0 0 0 0.2 30 normal @a
    particle dust 5 20000000 3 1.5 ~ ~ ~ 0.5 0.5 0.5 0 60 normal @a
    playsound entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.3 2 0
    playsound entity.firework_rocket.twinkle neutral @a ~ ~ ~ 0.3 1.5 0
    playsound item.trident.return neutral @a ~ ~ ~ 0.5 2 0

# ダメージ
    data modify storage api: Argument.Damage set value 160.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set value 9f
# 補正
    execute at @a[distance=..160] if score @s KI.UserID = @p UserID as @p run function api:damage/modifier
# 実行
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset

# 消滅
    kill @s
