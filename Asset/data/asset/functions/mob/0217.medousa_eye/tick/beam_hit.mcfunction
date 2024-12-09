#> asset:mob/0217.medousa_eye/tick/beam_hit
#
# 石化ビームの着弾判定
#
# @within function asset:mob/0217.medousa_eye/tick/beam_shoot

#> Private
# @private
    #declare score_holder $Difficulty

# 演出
    particle block stone ~ ~1.2 ~ 0.3 0.4 0.3 0 100 normal @a
    playsound entity.mooshroom.convert hostile @a ~ ~ ~ 0.5 0 0

# ダメージ
    data modify storage api: Argument.Damage set value 20f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより石化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sと目を合わせてしまい、石像となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..20,limit=1] run function api:damage/modifier
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function api:damage/
    function api:damage/reset

# 難易度値取得
    function api:global_vars/get_difficulty

# 石化(ID:606)を付与
# Duration = (40 * 難易度値)tick
    data modify storage api: Argument.ID set value 606
    execute store result storage api: Argument.Duration int 40 run data get storage api: Return.Difficulty
    function api:entity/mob/effect/give

# MP吸収
# Value = -30 * (難易度値- 1)
# イージーの場合は実行されない
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result storage api: Argument.Fluctuation int -30 run scoreboard players remove $Difficulty Temporary 1
    execute unless predicate api:global_vars/difficulty/easy run function api:mp/fluctuation

# リセット
    scoreboard players reset $Difficulty Temporary

# ヒットTag削除
    tag @s remove LandingTarget
