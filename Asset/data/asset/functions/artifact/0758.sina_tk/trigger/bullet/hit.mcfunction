#> asset:artifact/0758.sina_tk/trigger/bullet/hit
#
#
#
# @within function asset:artifact/0758.sina_tk/trigger/bullet/recursive

# ダメージ
    data modify storage api: Argument.Damage set value 60f
    data modify storage api: Argument.AttackType set value "Physical"
# 補正
    execute at @a if score @s L2.UserID = @p UserID as @p run function api:damage/modifier
# 実行
    execute as @e[type=#lib:living,type=!player,dx=0,sort=nearest,limit=1] run function api:damage/
# リセット
    function api:damage/reset
# 消滅
    kill @s
