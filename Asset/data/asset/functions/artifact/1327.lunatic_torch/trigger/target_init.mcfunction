#> asset:artifact/1327.lunatic_torch/trigger/target_init
#
#
#
# @within function asset:artifact/1327.lunatic_torch/trigger/3.main

#> Private
# @private
    #declare score_holder $MagicAttack
    #declare score_holder $CurrentMP

# 魔法攻撃補正と現在MPを取得
    function api:modifier/attack/magic/get
    function api:mp/get_current
    execute store result score $MagicAttack Temporary run data get storage api: Return.Attack.Magic 100
    execute store result score $CurrentMP Temporary run data get storage api: Return.CurrentMP

# 魔法攻撃補正が100%以上なら、SearchTargetを付与
    execute if score $MagicAttack Temporary matches 100.. run tag @s add 10V.SearchTarget

# (魔法攻撃補正 ^2) * 現在MPを計算し、自身のTemporaryへ代入
    scoreboard players operation $MagicAttack Temporary *= $MagicAttack Temporary
    execute store result score @s Temporary run scoreboard players operation $MagicAttack Temporary *= $CurrentMP Temporary

# リセット
    scoreboard players reset $MagicAttack Temporary
    scoreboard players reset $CurrentMP Temporary
