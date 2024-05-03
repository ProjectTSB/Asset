@echo off

for /d %%i in (*) do (
    echo %%i
    pushd .
    cd %%i
    mkdir modifier
    move add.mcfunction modifier\add.mcfunction
    move remove.mcfunction modifier\remove.mcfunction
    popd
)  
