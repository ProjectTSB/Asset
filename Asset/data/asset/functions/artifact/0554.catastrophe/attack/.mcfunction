#> asset:artifact/0554.catastrophe/attack/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/554/attack/

# 前回使用から一定時間経過しているかチェックする
    execute store result score $FE.Temp Temporary run data get storage global Time
    scoreboard players operation $FE.Temp Temporary -= @s FE.LatestUseTick
    execute if score $FE.Temp Temporary matches 20.. run function asset:artifact/0554.catastrophe/attack/damage
    scoreboard players reset $FE.Temp Temporary

# バニラダメージなら通さない
    execute if data storage asset:context Attack{IsVanilla:true} run return fail

# 与ダメージ1000毎(10倍で記録)にバフを得る
    execute store result score $FE.Temp Temporary run data get storage asset:context Attack.Amount 10
    scoreboard players operation @s FE.DamageSum += $FE.Temp Temporary
    scoreboard players reset $FE.Temp Temporary
    execute if entity @s[scores={FE.DamageSum=10000..}] run function asset:artifact/0554.catastrophe/attack/buff
