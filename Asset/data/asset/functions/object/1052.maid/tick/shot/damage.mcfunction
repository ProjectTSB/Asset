#> asset:object/1052.maid/tick/shot/damage
#
#
#
# @within function asset:object/1052.maid/tick/shot/loop

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 7.5
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        execute as @p[tag=1052.Owner] run function api:damage/modifier
        execute as @e[type=#lib:living_without_player,tag=Enemy,tag=LandingTarget,tag=!Uninterferable,distance=..60,sort=nearest,limit=1] run function api:damage/
# リセット
    scoreboard players reset $OwnerID Temporary
    function api:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=LandingTarget,tag=!Uninterferable,distance=..60,sort=nearest,limit=1] remove LandingTarget
