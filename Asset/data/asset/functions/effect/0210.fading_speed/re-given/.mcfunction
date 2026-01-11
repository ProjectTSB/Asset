#> asset:effect/0210.fading_speed/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0210.fading_speed/_/re-given

# 演出
    particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.03 100
    playsound minecraft:entity.evoker.prepare_summon player @a

# 最大体力の20%分の固定ダメージを受ける
# 5U.Tickが800以上なら50%の割合ダメージに変化
    execute store result storage api: Argument.Damage double 0.2 run attribute @s generic.max_health get
    execute if entity @s[scores={5U.Tick=800..}] store result storage api: Argument.Damage double 0.5 run attribute @s generic.max_health get
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは速度の代償を払った","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/
    function api:damage/reset

# 初期化
    function asset:effect/0210.fading_speed/init/

# 補正を削除
    function asset:effect/0210.fading_speed/modifier/remove

# 補正を付与
    function asset:effect/0210.fading_speed/modifier/add
