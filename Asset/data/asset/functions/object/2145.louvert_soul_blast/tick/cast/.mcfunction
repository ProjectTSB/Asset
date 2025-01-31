#> asset:object/2145.louvert_soul_blast/tick/cast/
#
# 発動処理
#
# @within function asset:object/2145.louvert_soul_blast/tick/

# スコア指定
    scoreboard players set $2145.Temp Temporary 16

# 射線上にいるプレイヤーに着弾
    execute rotated ~90 ~ positioned ^ ^ ^0.75 run function asset:object/2145.louvert_soul_blast/tick/cast/loop

# スコア指定
    scoreboard players set $2145.Temp Temporary 16

# 射線上にいるプレイヤーに着弾
    execute rotated ~-90 ~ positioned ^ ^ ^0.75 run function asset:object/2145.louvert_soul_blast/tick/cast/loop

# 音
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01

# 音2
    execute rotated ~90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    execute rotated ~90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    execute rotated ~90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01

# 音3
    execute rotated ~-90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    execute rotated ~-90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    execute rotated ~-90 ~ positioned ^ ^ ^12 run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01

# 引数の設定
    # ダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの蒼き炎に燃やし尽くされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=2145.Landing,distance=..32] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    tag @a[tag=2145.Landing,distance=..32] remove 2145.Landing
    scoreboard players reset $2145.Temp Temporary
    kill @s
