#> asset:mob/0344.louvert_soul_blast/tick/3.cast
#
# ビーム処理
#
# @within function asset:mob/0344.louvert_soul_blast/tick/2.tick


# スコア指定
    scoreboard players set $9K.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~90 ~ positioned ^ ^ ^0.75 run function asset:mob/0344.louvert_soul_blast/tick/3.1.cast_loop

# スコア指定
    scoreboard players set $9K.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    execute rotated ~-90 ~ positioned ^ ^ ^0.75 run function asset:mob/0344.louvert_soul_blast/tick/3.1.cast_loop

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
    # 与えるダメージ
        # ノーマルなら 24f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 24.0f
        # ハードなら 32f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 32.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの蒼き炎に燃やし尽くされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=9K.Landing,distance=..32] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# リセット
    tag @a[tag=9K.Landing,distance=..32] remove 9K.Landing
    scoreboard players reset $9K.Temp Temporary
    kill @s