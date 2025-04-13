#> asset:artifact/0554.catastrophe/trigger/fullset/attack/2.check
#
# フルセット時の攻撃のメイン処理
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/attack/1.trigger

# バニラダメージならreturn
    execute if data storage asset:context Attack{IsVanilla:true} run return fail

# 2000ダメージを与えてなければreturn
    execute store result score $DamageVal Temporary run data get storage asset:context Attack.Amount 10
    scoreboard players operation @s FE.DamageSum += $DamageVal Temporary
    execute unless entity @s[scores={FE.DamageSum=20000..}] run return run scoreboard players reset $DamageVal Temporary

# ダメージ処理
    execute if entity @s[scores={FE.DamageSum=20000..}] run function asset:artifact/0554.catastrophe/trigger/fullset/attack/3.damage_cooldown

# 与ダメージ1000毎(10倍で記録)にバフ
    execute if entity @s[scores={FE.DamageSum=20000..}] run function asset:artifact/0554.catastrophe/trigger/fullset/attack/5.buff
    scoreboard players reset $DamageVal Temporary

# スコアを10000で剰余算
# 余剰分もリセットすると無駄が発生してしまうため
    scoreboard players operation @s FE.DamageSum %= $20000 Const
