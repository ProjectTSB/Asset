#> asset:object/1217.interferable_slash/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1217/init

# UserIDスコアを設定
    execute store result score @s O1217.UserID run data get storage asset:context this.UserID

# 追撃は見た目を強化済みにし、強化チェックをしない
    execute if data storage asset:context this{IsAdditional:true} run function asset:object/1217.interferable_slash/init/reinforce

# super.init
    function asset:object/super.init
