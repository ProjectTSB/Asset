#> asset:artifact/1492.your_thoughts_frames/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1492.your_thoughts_frames/trigger/2.check_condition

# 性能として、水属性のビルドで手数があるビルドか、上振れたときだとかなりMPの回復の足しになるくらいがうれしい

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# 攻撃対象の近くにオーブを召喚
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..30,limit=1] run function asset:artifact/1492.your_thoughts_frames/trigger/summon

# 演出
    playsound block.amethyst_block.chime player @a ~ ~ ~ 5 0.8
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.9 1.4 0.0
    playsound minecraft:block.amethyst_cluster.hit player @a ~ ~ ~ 5.0 1.35 0.0
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 10 2 0.0
