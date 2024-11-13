set_permissions() {
    set_perm_recursive $MODPATH 0 0 0755 0644
    set_perm_recursive $MODPATH/system/etc/hosts 0 0 0777 0755
}

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh

am start -a android.intent.action.VIEW -d "https://t.me/chellaprojects"