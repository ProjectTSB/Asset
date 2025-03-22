#> asset:artifact/1174.sanguis/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1174.sanguis/trigger/2.check_condition

# 基本的にブレイブソードのコピペっす
# 先にLatestUseTickを取っておく。mainhand分だけでいい
    execute store result score $WM.LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick

# 使用時に前回の使用時のTickとの差が開いていた場合、コンボカウントをリセットする
    execute unless score @s WM.Combo matches -2147483648..2147483647 run scoreboard players set @s WM.Combo 0
    execute store result score $WM.Temp Temporary run time query gametime
    scoreboard players operation $WM.Temp Temporary -= $WM.LatestUseTick Temporary
    execute unless score $WM.Temp Temporary matches ..30 run scoreboard players set @s WM.Combo 0

# コンボフィニッシュを出したあとは、コンボリセット。ブレイブソードと異なり、隠しCDは存在しない。
    execute if score @s WM.Combo matches 3.. run scoreboard players reset @s WM.Combo

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# コンボカウント加算
    scoreboard players add @s WM.Combo 1

# 攻撃
    execute if score @s WM.Combo matches 1 anchored eyes run function asset:artifact/1174.sanguis/trigger/combo/slash1
    execute if score @s WM.Combo matches 2 anchored eyes run function asset:artifact/1174.sanguis/trigger/combo/slash2
    execute if score @s WM.Combo matches 3 anchored eyes run function asset:artifact/1174.sanguis/trigger/combo/slash3

# 攻撃判定
    execute store result storage api: Argument.Damage float 1 run random value 34..52
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# ダメージ実行
    execute at @e[type=#lib:living,tag=Enemy,tag=Victim,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..1.2] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $WM.Temp Temporary
    scoreboard players reset $WM.LatestUseTick Temporary
