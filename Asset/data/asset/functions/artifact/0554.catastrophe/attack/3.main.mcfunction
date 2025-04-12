#> asset:artifact/0554.catastrophe/attack/3.main
#
# 神器のトリガー処理
#
# @within function asset:artifact/0554.catastrophe/attack/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head
# ここから先は神器側の効果の処理を書く

# バニラダメージなら通さない
    execute if data storage asset:context Attack{IsVanilla:true} run return fail

# 与ダメージ1000毎(10倍で記録)に発動
    execute store result score $FE.Temp Temporary run data get storage asset:context Attack.Amount 10
    scoreboard players operation @s FE.DamageSum += $FE.Temp Temporary
    scoreboard players reset $FE.Temp Temporary
    execute unless entity @s[scores={FE.DamageSum=10000..}] run return fail

# 自身にバフを付与
    function asset:artifact/0554.catastrophe/attack/buff

# 前回使用から一定時間経過していたら追撃
    execute store result score $FE.Temp Temporary run data get storage global Time
    scoreboard players operation $FE.Temp Temporary -= @s FE.LatestUseTick
    execute if score $FE.Temp Temporary matches 20.. run function asset:artifact/0554.catastrophe/attack/damage
    scoreboard players reset $FE.Temp Temporary
