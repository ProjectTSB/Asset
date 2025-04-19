#> asset:object/2074.water_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2074/tick

#> Private
# @private
    #declare score_holder $Temp

# 一定間隔でダメージ&演出を行う

# 実行時間を移す
    scoreboard players operation $Temp Temporary = @s General.Object.Tick
    execute if entity @s[scores={General.Object.Tick=..29}] run scoreboard players operation $Temp Temporary %= $2 Const

# 発動前にパーティクル
    execute if entity @s[scores={General.Object.Tick=..29}] if score $Temp Temporary matches 0 run function asset:object/2074.water_magic/tick/ready

# 一定間隔毎に魔方陣表示とダメージ
    execute if entity @s[scores={General.Object.Tick=30..}] run scoreboard players operation $Temp Temporary %= $5 Const
    execute if entity @s[scores={General.Object.Tick=30..}] if score $Temp Temporary matches 0 run function asset:object/2074.water_magic/tick/damage

# スコア加算
    scoreboard players add @s General.Object.Tick 1

# リセット
    scoreboard players reset $Temp Temporary

# Kill
    execute if score @s General.Object.Tick >= @s 2074.KillTick run kill @s

# 予備としての消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
