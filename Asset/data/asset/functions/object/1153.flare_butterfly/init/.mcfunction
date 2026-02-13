#> asset:object/1153.flare_butterfly/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1153/init

# AttackCD初期化
    data modify storage asset:context this.AttackCD._ set from storage asset:context this.AttackCD.Max
