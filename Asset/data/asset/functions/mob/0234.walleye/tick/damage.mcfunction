#> asset:mob/0234.walleye/tick/damage
#
#
#
# @within function asset:mob/0234.walleye/tick/2.3.explode

# ダメージ: 半径1ブロック以内は60ダメージ、1ブロック離れるごとに10減少
# 攻撃データ設定
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはウォールアイの爆発に巻き込まれた。","with":[{"selector":"@s"}]}]']
    execute if entity @s[distance=..6] run data modify storage lib: Argument.Damage set value 10.66f
    execute if entity @s[distance=..5] run data modify storage lib: Argument.Damage set value 15.19f
    execute if entity @s[distance=..4] run data modify storage lib: Argument.Damage set value 21f
    execute if entity @s[distance=..3] run data modify storage lib: Argument.Damage set value 26.71f
    execute if entity @s[distance=..2] run data modify storage lib: Argument.Damage set value 34.15f
    execute if entity @s[distance=..1] run data modify storage lib: Argument.Damage set value 77.03f
# ダメージ
    execute as @e[type=zombie,tag=this,distance=..10,sort=nearest,limit=1] run function lib:damage/modifier
    function lib:damage/
# 引数リセット
    function lib:damage/reset
