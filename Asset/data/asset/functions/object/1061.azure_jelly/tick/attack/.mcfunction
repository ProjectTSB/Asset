#> asset:object/1061.azure_jelly/tick/attack/
#
# 攻撃関連の処理
#
# @within function asset:object/1061.azure_jelly/tick/

# クールダウンをデクリメント
    execute store result storage asset:context this.AttackCD.Current int 0.9999999999 run data get storage asset:context this.AttackCD.Current

# CDが0でなければreturn
    execute unless data storage asset:context this.AttackCD{Current:0} run return fail

# 敵が近くにいたら攻撃
    execute positioned ~-3 ~-3 ~-3 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=5,dy=5,dz=5] at @s run function asset:object/1061.azure_jelly/tick/attack/attack
