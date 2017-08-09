cmd_config_help() {
    cat <<_EOF
    config
        Run configuration scripts inside the container.

_EOF
}

cmd_config() {
    # copy accounts.txt and testing scripts
    [[ -f accounts.txt ]] || cp $APP_DIR/accounts.txt .
    mkdir -p testing
    cp -a $APP_DIR/testing/* testing/

    # run config scripts
    ds runcfg set_prompt
    ds runcfg ssmtp

    ds runcfg shellinabox
    ds runcfg misc
    ds runcfg accounts

    # copy testing scripts inside the container
    for file in testing/*; do
        docker cp $file $CONTAINER:/usr/local/bin/
    done
}
