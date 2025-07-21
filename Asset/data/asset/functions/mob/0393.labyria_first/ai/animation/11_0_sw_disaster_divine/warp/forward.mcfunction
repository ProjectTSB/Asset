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


#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：難易度数値 × 補正値 + 基礎
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 13
    scoreboard players add $DamageTemp Temporary 27

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # 死亡ログ
        data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの斬撃によって切り裂かれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージを与える
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# 斬撃音
    function asset:mob/0393.labyria_first/ai/general/6.slash_sound
