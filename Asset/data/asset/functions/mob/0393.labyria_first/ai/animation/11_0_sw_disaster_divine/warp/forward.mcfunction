#> asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/forward
#
# 前方へワープ
#
# @within function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/

# ループTPする
    scoreboard players set $AX.Loop Temporary 25
    function asset:mob/0393.labyria_first/ai/animation/11_0_sw_disaster_divine/warp/loop

# スコアリセット
    scoreboard players reset $AX.Loop Temporary

# オーバーライドを設定
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 2008
    execute positioned ~ ~1.2 ~ run function api:object/summon

# スコアセット
    execute positioned ~ ~1.2 ~ run scoreboard players operation @e[type=item_display,distance=..0.001] AX.AnimationTick = @s AX.AnimationTick

# ダメージ設定
    # ダメージ
        data modify storage lib: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの斬撃によって切り裂かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function lib:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset

# 斬撃音
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
