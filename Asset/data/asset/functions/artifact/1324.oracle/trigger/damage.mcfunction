#> asset:artifact/1324.oracle/trigger/damage
#
#
#
# @within function asset:artifact/1324.oracle/trigger/3.main

#> Private
# @private
    #declare score_holder $10S.Health

# ダメージのデフォルト値
    data modify storage api: Argument.Damage set value 20f

# 自身の現在の体力が20以下なら、体力を1残すダメージにする
    execute store result score $10S.Health Temporary run function asset:artifact/1324.oracle/trigger/get_health
    execute if score $10S.Health Temporary matches ..200 store result storage api: Argument.Damage float 0.1 run scoreboard players remove $10S.Health Temporary 10

# 最も現在体力の高いプレイヤーに固定ダメージを与えるが、死なないようにする
# 念のためデスログは設定しておく
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは%2$sに体力を","with":[{"selector":"@s"}]}]']
    function api:damage/modifier
    execute as @p[tag=10S.HighestHealth] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $10S.Health Temporary
