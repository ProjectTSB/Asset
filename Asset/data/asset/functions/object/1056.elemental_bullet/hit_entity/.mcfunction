#> asset:object/1056.elemental_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1056/hit_entity

#> Private
# @private
    #declare score_holder $1056.Owner

# UserIDを代入
    execute store result score $1056.Owner Temporary run data get storage asset:context this.UserID

# 演出
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5

# ダメージ
    data modify storage api: Argument.Damage set value 40.0f
    data modify storage api: Argument.AttackType set value "Magic"
    execute if entity @s[tag=1056.Fire] run data modify storage api: Argument.ElementType set value "Fire"
    execute if entity @s[tag=1056.Thunder] run data modify storage api: Argument.ElementType set value "Thunder"
    execute if entity @s[tag=1056.Water] run data modify storage api: Argument.ElementType set value "Water"
    function api:damage/
    execute at @a if score $1056.Owner Temporary = @p UserID as @p run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,dx=0,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $1056.Owner Temporary

# ショットを消す
    kill @s
