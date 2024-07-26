#> asset:artifact/1045.mini_black_hole/trigger/schedule/3.landing
#
# 着弾後処理
#
# @within function asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick

#> Val
# @private
    #declare score_holder $T1.OwnerId
    #declare score_holder $T1.LandingTick
    #declare tag T1.Landing

# 着弾時間増加
    scoreboard players add @s T1.LandingTick 1

# 使用者取得
    scoreboard players operation $T1.OwnerId Temporary = @s T1.OwnerID
    execute as @a if score @s UserID = $T1.OwnerId Temporary run tag @s add T1.Owner

# ダメージ処理
    scoreboard players operation $T1.LandingTick Temporary = @s T1.LandingTick
    scoreboard players operation $T1.LandingTick Temporary %= $4 Const
    execute store result storage asset:temp T1.Num float 0.1 run scoreboard players get @s T1.LandingTick
    execute if score $T1.LandingTick Temporary matches 0 run function asset:artifact/1045.mini_black_hole/trigger/schedule/3.1.search_mob.m with storage asset:temp T1
    data remove storage asset:temp T1.Num

# ダメージ付与
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 耐性貫通
        data modify storage lib: Argument.BypassModifier set value 1b
    # ダメージ
        data modify storage lib: Argument.Damage set value 125
        execute as @p[tag=T1.Owner] run function lib:damage/modifier
        execute as @e[tag=Enemy,tag=T1.Landing,distance=..8] run function lib:damage/

# 敵吸い込み
    execute at @s as @e[tag=Enemy,tag=!Enemy.Boss,distance=..15] run function asset:artifact/1045.mini_black_hole/trigger/schedule/4.enemy_suction

# 演出
    execute store result storage asset:temp T1.Num int 1 run scoreboard players get @s T1.LandingTick
    function asset:artifact/1045.mini_black_hole/trigger/schedule/landing_vfx/m with storage asset:temp T1
    data remove storage asset:temp T1.Num

# 音（着弾時）
    execute if score @s T1.LandingTick matches 1 run function asset:artifact/1045.mini_black_hole/trigger/schedule/3.2.landing_sound

# 音（常時）
    execute if score $T1.LandingTick Temporary matches 0 run playsound entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 0

# リセット
    function lib:damage/reset
    scoreboard players reset $T1.OwnerId Temporary
    scoreboard players reset $T1.LandingTick Temporary
    tag @a[tag=T1.Owner] remove T1.Owner
    tag @e[tag=Enemy,tag=T1.Landing,distance=..8] remove T1.Landing
    execute if score @s T1.LandingTick matches 80 run kill @s