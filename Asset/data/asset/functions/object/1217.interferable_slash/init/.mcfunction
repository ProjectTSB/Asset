#> asset:object/1217.interferable_slash/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1217/init

# UserIDスコアを設定
    execute store result score @s 1217.UserID run data get storage asset:context this.UserID

# 追撃は強化チェックをしない
    execute if data storage asset:context this{IsAdditional:true} run tag @s add 1217.Checked

# super.init
    function asset:object/super.init
