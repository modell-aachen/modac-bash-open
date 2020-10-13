modacBashOpenDir=$(dirname "$0")
export PATH=$PATH:"$modacBashOpenDir/bin"

for f in $(find "$modacBashOpenDir/functions" -maxdepth 1 -type f -name '*.sh'); do
    source $f
done

unset modacBashOpenDir