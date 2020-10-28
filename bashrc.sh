if [ "$SHELL" != "/bin/bash" ]; then
    BASH_SOURCE=${(%):-%N}
fi

modacBashOpenDir=$(dirname $(realpath "$BASH_SOURCE"))

export PATH=$PATH:"$modacBashOpenDir/bin"

for f in $(find "$modacBashOpenDir/functions" -maxdepth 1 -type f -name '*.sh'); do
    source $f
done

unset modacBashOpenDir

