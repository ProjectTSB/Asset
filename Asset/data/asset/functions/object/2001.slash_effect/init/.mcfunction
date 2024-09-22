#> asset:object/2001.slash_effect/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2001/init

# その場にTPする
    tp @s ~ ~ ~ ~ ~

# アイテムディスプレイに表示するItemをFieldから代入する
    data modify entity @s item set from storage asset:context this.item

# 初期設定を行う（FieldOverride）
    execute unless data storage asset:context this.Color run data modify storage asset:context this.Color set value 0
    execute unless data storage asset:context this.Scale run data modify storage asset:context this.Scale set value [5f,5f,0.1f]
    execute unless data storage asset:context this.Frames run data modify storage asset:context this.Frames set value [20335,20335,20335,20336,20337]
    execute if data storage asset:context this.transformation run data modify entity @s transformation merge from storage asset:context this.transformation
    data modify entity @s item.tag.display.color set from storage asset:context this.Color

# Framesのint配列を反転させる
    function lib:array/session/open
    data modify storage lib: Array set from storage asset:context this.Frames
    function lib:array/reverse
    data modify storage asset:context this.Frames set from storage lib: Array
    function lib:array/session/close

# なおFramesの最初の値は-1にする
    data modify storage asset:context this.Frames append value -1
    tellraw @a {"storage":"asset:context","nbt":"this.Frames"}

# タグ付け
    tag @s add 2001.SlashEffect
    tag @s add 2001.Invisible
