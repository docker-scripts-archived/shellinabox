rename_function cmd_config orig_cmd_config
cmd_config() {
    # copy accounts.txt and testing scripts
    [[ -f accounts.txt ]] || cp $SRC/accounts.txt .
    mkdir -p testing
    cp -a $SRC/testing/* testing/

    # run config scripts
    orig_cmd_config

    # copy testing scripts inside the container
    for file in testing/*; do
        docker cp $file $CONTAINER:/usr/local/bin/
    done
}
