#> asset:object/2074.water_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2074/init

# 攻撃回数をフィールドから取得し、消滅するTickへ変換する
# 30 + (5 * AttackCount)
# 分配法則でやることもできるが、今回はそれだと後から変えにくいので上述の式で行う

# 変換
    execute store result score @s 2074.KillTick run data get storage asset:context this.AttackCount 5
    scoreboard players add @s 2074.KillTick 30

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:30,Color:2851071,Scale:[4.5f,4.5f,0.01f]}
    function api:object/summon
