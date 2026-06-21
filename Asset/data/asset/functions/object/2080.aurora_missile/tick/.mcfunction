#> asset:object/2080.aurora_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2080/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust_color_transition 0.4 1 0.8 1.5 0.5 0.65 1 ~ ~ ~ 0.1 0.1 0.1 0 1

# 一定間隔でplaysound
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.4 2 0
    scoreboard players reset $Interval Temporary

# 最初の20tickは誘導弾になる
    execute if entity @s[scores={General.Object.Tick=..20}] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# スーパーメソッド呼び出し
    execute at @s run function asset:object/super.tick

# 3tick目から回転
    execute store result storage asset:context this.SpinInterval._ int 0.9999999999 run data get storage asset:context this.SpinInterval._
    execute if data storage asset:context this.SpinInterval{_:0} if score @s General.Object.Tick matches 3.. run function asset:object/2080.aurora_missile/tick/spin
    execute if data storage asset:context this.SpinInterval{_:0} if score @s General.Object.Tick matches 3.. run data modify storage asset:context this.SpinInterval._ set from storage asset:context this.SpinInterval.Max
