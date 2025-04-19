#> asset:mob/0410.heiloang/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/410/attack

# 大技
    execute if data storage asset:context Attack{Metadata:"FinalFlare"} run return 0
    function asset:mob/super.attack
