#> asset:mob/0330.aurora_reaper/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0330.aurora_reaper/attack/1.trigger

#> Private
# @private
    #declare score_holder $MPReduce
    #declare score_holder $Difficulty

# 演出
    execute positioned ^ ^1.2 ^0.6 rotated ~ ~-4 run function asset:mob/0330.aurora_reaper/attack/vfx
    playsound entity.player.attack.sweep hostile @a ~ ~ ~ 0.7 1.4 0
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.2 2 0

# プレイヤーと同じ剣(鎌)の振り方
    item replace entity @s weapon.mainhand with stick{CustomModelData:20158}

# ダメージ
    data modify storage lib: Argument.Damage set value 37f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって斬り裂かれオーロラに消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset

# 対象の最大MPの2.5%の100倍を取得
    execute as @p[tag=Victim] run function api:mp/get_max
    execute store result score $MPReduce Temporary run data get storage api: Return.MaxMP 2.5

# 難易度値を取得
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty

# 最大MPの(2.5 x 難易度値)%分MPを減少させる
    execute store result storage api: Argument.Fluctuation float -0.01 run scoreboard players operation $MPReduce Temporary *= $Difficulty Temporary
    execute as @p[tag=Victim] run function api:mp/fluctuation

# リセット
    scoreboard players reset $MPReduce Temporary
    scoreboard players reset $Difficulty Temporary
