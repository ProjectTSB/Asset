#> asset:artifact/0355.barrel/trigger/barrel/hit
#
# 樽がエンティティに当たった時に実行される
#
# @within asset:artifact/0355.barrel/trigger/barrel/tick

# ダメージ処理
    data modify storage lib: Argument.Damage set value 75.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,dy=0.02,dz=0,sort=nearest,limit=1] run function lib:damage/
    function lib:damage/reset

# 壊れる
    function asset:artifact/0355.barrel/trigger/barrel/break
