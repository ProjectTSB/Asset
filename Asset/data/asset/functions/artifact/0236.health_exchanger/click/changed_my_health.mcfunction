#> asset:artifact/0236.health_exchanger/click/changed_my_health
#
# 体力を@s
#
# Scoreのリセットの実装上分離
#
# @within function asset:artifact/0236.health_exchanger/click/

# 表示用体力演算
    # //下のy.yy部分
    scoreboard players operation $TargetHealthInt Temporary = @s Temporary
    scoreboard players operation $TargetHealthDecimal Temporary = $TargetHealthInt Temporary

    scoreboard players operation $TargetHealthInt Temporary /= $100 Const
    scoreboard players operation $TargetHealthDecimal Temporary %= $100 Const

# 表示 「A と体力が交換された！ x.xx => y.yy」
    tellraw @s [{"text":"","color": "red"},{"selector":"@a[tag=this,limit=1]","color":"red"},{"text": " と体力が交換された！ "},{"score":{"name": "$TargetHealthInt","objective": "Temporary"}},".",{"score":{"name": "$TargetHealthDecimal","objective": "Temporary"}},{"text": " => "},{"score":{"name": "$UserHealthInt","objective": "Temporary"}},".",{"score":{"name": "$UserHealthDecimal","objective": "Temporary"}}]

# 体力設定
    scoreboard players operation $Set Lib = $SCUserHealth Temporary
    function lib:score_to_health_wrapper/set
