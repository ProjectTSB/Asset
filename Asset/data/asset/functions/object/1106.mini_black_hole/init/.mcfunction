#> asset:object/1106.mini_black_hole/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1106/init

# 雪玉を殴る（描画更新で）
    # execute on vehicle run damage @s 0
# モーションでぶっ飛ばす。飛ぶのは下の雪玉
    data modify storage lib: Argument.VectorMagnitude set value 0.75d
    execute on vehicle run function lib:motion/
    data remove storage lib: Argument

# 信管の起爆時間の上限設定
    execute store result score $UQ.Temp Temporary run data get storage asset:context this.Fuse
    scoreboard players operation $UQ.Temp Temporary > $0 Const
    scoreboard players operation @s General.Object.Tick -= $UQ.Temp Temporary
    scoreboard players reset $UQ.Temp Temporary
