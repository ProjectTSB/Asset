#> asset:artifact/1027.fire_of_rebirth/trigger/6.damage
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/1027.fire_of_rebirth/trigger/shoot

# ここから先は神器側の効果の処理を書く

# 演出なし

# ダメージ
    data modify storage lib: Argument.Damage set value 250.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    execute as @a if score @s UserID = @e[type=area_effect_cloud,tag=SH.Magic,scores={SH.CoolTime=0},sort=nearest,limit=1] SH.UserID run function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] run function lib:damage/
# リセット
    function lib:damage/reset

# 着弾タグを消す
    tag @e[type=#lib:living,type=!player,tag=LandingTarget,tag=!Uninterferable,distance=..50,limit=1] remove LandingTarget
