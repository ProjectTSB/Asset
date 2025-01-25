#> asset:artifact/0554.catastrophe/equip/fullset/attack/2.main
#
# フルセット時の攻撃のメイン処理
#
# @within function asset:artifact/0554.catastrophe/equip/fullset/attack/1.trigger

# 前回効果発動時の時間との差からクールダウン中かどうかを判定する
    execute store result score $FE.Cooldown Temporary run time query gametime
    scoreboard players operation $FE.Cooldown Temporary -= @s FE.Cooldown
    execute if score $FE.Cooldown Temporary matches 20.. run function asset:artifact/0554.catastrophe/equip/fullset/attack/3.damage
    scoreboard players reset $FE.Cooldown

# バニラダメージならreturn
    execute if data storage asset:context Attack{IsVanilla:true} run return fail

# 与ダメージ1000毎(10倍で記録)にバフを得る
    execute store result score $DamageVal Temporary run data get storage asset:context Attack.Amount 10
    scoreboard players operation @s FE.DamageSum += $DamageVal Temporary
    execute if entity @s[scores={FE.DamageSum=10000..}] run function asset:artifact/0554.catastrophe/equip/fullset/attack/4.give_buff
    scoreboard players reset $DamageVal Temporary
