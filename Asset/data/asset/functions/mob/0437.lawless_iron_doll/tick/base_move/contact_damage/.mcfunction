#> asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/
#
# 接触ダメージ
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# インターバル用
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick

# 10tickごとに処理を実行
    scoreboard players operation $Interval Temporary %= $20 Const
# 下に何かあるなら、ゴツンゴツン
    execute if score $Interval Temporary matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/contact_damage/dealt_damage
# リセット
    scoreboard players reset $Interval Temporary
