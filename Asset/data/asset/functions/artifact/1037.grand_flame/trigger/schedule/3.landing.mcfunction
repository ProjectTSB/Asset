#> asset:artifact/1037.grand_flame/trigger/schedule/3.landing
#
# 着弾時の処理
#
# @within function asset:artifact/1037.grand_flame/trigger/schedule/1.tick

#> Val
# @private
    #declare score_holder $ST.OwnerId
    #declare score_holder $ST.Damage
    #declare score_holder $ST.PercentHP

# 使用者取得
    scoreboard players operation $ST.OwnerId Temporary = @s ST.OwnerID
    execute as @a if score @s UserID = $ST.OwnerId Temporary run tag @s add ST.Owner

# ダメージ計算
# 計算式 ： 660 + (現在HP%) * 2
    scoreboard players set $ST.Damage Temporary 660
    scoreboard players operation $ST.PercentHP Temporary = @s ST.PercentHP
    scoreboard players operation $ST.PercentHP Temporary *= $2 Const
    execute store result storage lib: Argument.Damage float 1 run scoreboard players operation $ST.Damage Temporary += $ST.PercentHP Temporary

# ダメージ付与
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # ダメージ
        execute as @p[tag=ST.Owner] run function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5] run function lib:damage/

# 球体演出
    function asset:artifact/1037.grand_flame/trigger/schedule/3.1.vfx

# 演出のためにランダムな方向を向かせる
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/
    execute store result entity @s Rotation[1] float 0.01 run function lib:random/

# 動的パーティクル演出
    execute at @s run function asset:artifact/1037.grand_flame/trigger/schedule/3.2.random_vfx

# 演出のためにランダムな方向を向かせる
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/
    execute store result entity @s Rotation[1] float 0.01 run function lib:random/

# 動的パーティクル演出
    execute at @s run function asset:artifact/1037.grand_flame/trigger/schedule/3.2.random_vfx

# 演出のためにランダムな方向を向かせる
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/
    execute store result entity @s Rotation[1] float 0.01 run function lib:random/

# 動的パーティクル演出
    execute at @s run function asset:artifact/1037.grand_flame/trigger/schedule/3.2.random_vfx

# 音
    playsound entity.wither.shoot player @a[distance=..32] ~ ~ ~ 2 0.6
    playsound entity.generic.explode player @a[distance=..32] ~ ~ ~ 2 1

# リセット
    function lib:damage/reset
    scoreboard players reset $ST.OwnerId Temporary
    scoreboard players reset $ST.Damage Temporary
    scoreboard players reset $ST.PercentHP Temporary
    tag @a[tag=ST.Owner] remove ST.Owner
    kill @s