#> asset:artifact/0262.angel_ray_lv.1/click/effect/
#
#
#
# @within function asset:artifact/0262.angel_ray_lv.1/click/

#> Target
# @private
#declare tag Target

# それぞれでmodifierを実行するのは面倒なので先に処理してしまう
    data modify storage api: Argument.Damage set value 190d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    data modify storage api: Argument.Heal set value 15.0d
    function api:heal/modifier
# 対象探索
    function asset:artifact/0262.angel_ray_lv.1/click/effect/find_target
# 自身を対象から外す
    tag @s remove TargetCandidate
# 対象を8体に絞る
    tag @e[type=#lib:living,tag=TargetCandidate,distance=..13,sort=nearest,limit=8] add Target
# 処理
    execute as @e[type=#lib:living,tag=Target,tag=Enemy,tag=!Uninterferable,distance=..13] run function api:damage/
    execute as @e[type=#lib:living,tag=Target,tag=Friend,distance=..13] run function api:heal/
# リセット
    tag @e[type=#lib:living,tag=TargetCandidate,distance=..13] remove TargetCandidate
    tag @e[type=#lib:living,tag=Target,distance=..13] remove Target
    function api:damage/reset
    function api:heal/reset
