#> asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast
#
# 居合斬り
#
# @within function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/

# スコア指定
    scoreboard players set $9H.Temp Temporary 16

# 射線上にいるプレイヤーに警告音を放つ
    function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast_loop

# 音
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01

# 音
    execute at @s run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.75 0.01
    execute at @s run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.7 0.01
    execute at @s run playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 0.5 1.65 0.01

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの居合斬りによって真っ二つにされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute as @a[tag=9H.Landing,distance=..32] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    tag @a[tag=9H.Landing,distance=..32] remove 9H.Landing
    scoreboard players reset $9H.Temp Temporary
