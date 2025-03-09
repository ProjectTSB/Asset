#> asset:object/1045.magic_bullet_square/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1045/init

# this.IDがあればスコアへ代入しておく
    execute if data storage asset:context this.ID store result score @s 1045.ID run data get storage asset:context this.ID
