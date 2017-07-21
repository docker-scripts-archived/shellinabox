cmd_config() {
    cmd_start
    sleep 3

    # copy accounts.txt and testing scripts
    [[ -f accounts.txt ]] || cp $SRC/accounts.txt .
    mkdir -p testing
    cp -a $SRC/testing/* testing/

    # run config scripts
    local config="
        set_prompt
        ssmtp

        shellinabox
        misc
        accounts
    "
    for cfg in $config; do
        ds runcfg $cfg
    done

    # copy testing scripts inside the container
    for file in testing/*; do
        docker cp $file $CONTAINER:/usr/local/bin/
    done

    cmd_restart
}
