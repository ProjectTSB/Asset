#> asset:object/1009.arrow/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1009/hit_entity

# 攻撃対象に合わせてダメージを与える処理を呼び出す
    execute if data storage asset:context this.UserID run function asset:object/1009.arrow/hit_entity/from_player/
    execute if data storage asset:context this.MobUUID run function asset:object/1009.arrow/hit_entity/from_non-player/
# super の呼び出し
    function asset:object/super.method
